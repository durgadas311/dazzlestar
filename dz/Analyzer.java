// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;
import java.util.Properties;
import java.util.Vector;

public class Analyzer implements Memory {
	static Analyzer _us;
	File comFile;
	String baseName;
	String basePath;
	byte[] obj;
	byte[] brk;	// breaks
	byte[] len;	// length of "instructions" (lines)
	Map<Integer,String> symtab;
	Vector<Integer> codes;
	Vector<Integer> orphans;
	boolean orphanage = false;
	Map<Integer,Integer> calls;
	Z80Disassembler dis;

	int base;
	int end;

	Properties props = new Properties();

	public static void main(String[] args) {
		_us = new Analyzer(args);
		// _us.start(); ??
	}

	private void help() {
		System.err.format("Usage: Analyzer <com-file>\n");
		System.exit(1);
	}

	private Analyzer(String[] args) {
		String rc = null;
//		File ff = new File("./dzrc");
//		if (ff.exists()) {
//			rc = ff.getAbsolutePath();
//		}
//		if (rc == null) {
//			rc = System.getProperty("user.home") + "/.dzrc";
//		}
//		try {
//			FileInputStream cfg = new FileInputStream(rc);
//			props.load(cfg);
//			cfg.close();
//		} catch(Exception ee) {
//			rc = null;
//		}
		symtab = new HashMap<Integer,String>();
		codes = new Vector<Integer>();
		orphans = new Vector<Integer>();
		calls = new HashMap<Integer,Integer>();
		File fi = null;
		for (int x = 0; x < args.length; ++x) {
			if (args[x].equalsIgnoreCase("ZILOG")) {
				dis = new Z80DisassemblerZilog(this);
				continue;
			} else if (args[x].equalsIgnoreCase("MAC80")) {
				// default is this, done later...
				continue;
			}
			fi = new File(args[x]);
			if (!fi.exists()) {
				System.err.format("Unrecognized argument: \"%s\"\n", args[x]);
				help();	// does not return
			}
		}
		if (fi == null) {
			help();	// does not return
		}
		if (dis == null) {
			dis = new Z80DisassemblerMAC80(this);
		}

		newJob(fi);
		analyze(base);	// entry...
		for (int pc : codes) {
			putBrk(pc, 0);
			analyze(pc);
		}
		orphanage = true;
		while (orphans.size() > 0) {
			Vector<Integer> orphs = orphans;
			orphans = new Vector<Integer>();
			for (int pc : orphs) {
				// don't override existing break
				analyze(pc);
			}
		}
		// TODO: output options...
		try {
			generateDZ(new File(baseName + ".az.dz"), base, end);
			generateASM(new File(baseName + ".az.asm"), base, end);
		} catch (Exception ee) {
			ee.printStackTrace();
		}
		System.exit(0);
	}

	private int structLen(String str) {
		int len = 0;
		for (int x = 0; x < str.length(); ++x) {
			switch (str.charAt(x)) {
			case 'C':
				len += 1;
				break;
			case 'L':
			case 'T':
				len += 2;
				break;
			case '7':
				len += 1;	// at least 1?
				break;
			}
		}
		return len;
	}

	private int putStruct(int adr, int chr) {
		int lbl;
		switch (chr) {
		case 'C':
			putBrk(adr, 'C');
			adr += 1;
			break;
		case 'T':
			putBrk(adr, 'T');
			adr += 2;
			break;
		case 'L':
			putBrk(adr, 'L');
			lbl = read(adr) | (read(adr + 1) << 8);
			if (lbl >= base && lbl < end) {
				orphans.add(lbl);
				lookup(true, lbl);
			}
			adr += 2;
			break;
		case '7':
			putBrk(adr, '7');
			while ((read(adr++) & 0x80) == 0);
			break;
		}
		return adr;
	}

	private void markStruct(int start, int end, String str) {
		if (str.length() < 1) {
			return;
		}
		int n = structLen(str);
		while (start + n <= end) {
			for (int x = 0; x < str.length(); ++x) {
				start = putStruct(start, str.charAt(x));
			}
		}
		// TODO: clean this up...
		if (start < end) {
			int x = str.length() - 1;
			start = putStruct(start, str.charAt(x));
		}
	}

	private void markData(int start, int end) {
		// Arrays.fill(brk, start - base, end - base, (byte)'B');
		while (start < end) {
			putBrk(start, 'B');
			start += 16;
		}
	}

	private boolean processHint(int c, String[] ss) {
		int a = Integer.valueOf(ss[0], 16);
		int b;
		switch (c) {
		case '!':	// data region exclusion
			if (ss.length < 2) {
				return false;
			}
			b = Integer.valueOf(ss[1], 16);
			if (ss.length > 2) {
				markStruct(a, b, ss[2]);
			} else {
				markData(a, b);
			}
			orphans.add(b);
			break;
		case '+':
			codes.add(a);
			break;
		case '*':
			if (ss.length > 1) {
				if (ss[1].matches("-*[0-9]+")) {
					c = Integer.valueOf(ss[1]);
				} else if (ss[1].equalsIgnoreCase("n")) {
					c = 0; // each different
				} else {
					return false;
				}
			} else {
				c = 1;
			}
			calls.put(a, c);
			break;
		default:
			return false;
		}
		return true;
	}

	private boolean newJob(File com) {
		try {
			InputStream f = new FileInputStream(com);
			obj = new byte[f.available()];
			brk = new byte[f.available()];
			len = new byte[f.available()];
			f.read(obj);
			f.close();
			comFile = com;
		} catch (Exception ee) {
			ee.printStackTrace();
			return false;
		}
		base = 0x0100;
		end = base + obj.length;
		clearSymtab();
		basePath = com.getAbsolutePath().replace(".com", "");
		baseName = com.getName().replace(".com", "");
		File in = new File(basePath + ".in");
		String s;
		String[] ss;
		int c;
		try {
			BufferedReader lin = new BufferedReader(new FileReader(in));
			while ((s = lin.readLine()) != null) {
				if (s.length() < 5) continue;
				c = s.charAt(0);
				if (c == '#') continue;	// comments
				ss = s.substring(1).split(",");
				if (!processHint(c, ss)) {
					System.err.format("Malformed: \"%s\"\n", s);
				}
			}
		} catch (Exception ee) {}
		return true;
	}

	private void analyze(int addr) {
		while (addr >= base && addr < end) {
			if (getBrk(addr) != 0) {	// already been here...
				// TODO: override 'B'?
				break;
			}
			Z80Dissed d = dis.disas(addr);
			putBrk(addr, 'I');
			putLen(addr, d.len);
			addr += d.len;
			if (d.addr < 0) {
				continue;
			}
			String lbl = lookup(true, d);
			if (d.type == Z80Dissed.LXI || d.type == Z80Dissed.LDI) {
				if (d.addr >= base && d.addr < end) {
					if (getBrk(d.addr) == 0) {
						putBrk(d.addr, 'B');
					}
				}
				continue;
			}
			if (d.type == Z80Dissed.CRET) {
				continue;
			}
			if (d.type == Z80Dissed.RET) {
				if (getBrk(addr) == 0) {
					orphans.add(addr);
				}
				break;
			}
			if (d.type == Z80Dissed.JMP) {
				if (getBrk(addr) == 0) {
					orphans.add(addr);
				}
				addr = d.addr;
				continue;
			}
			if (d.type == Z80Dissed.CALL && calls.containsKey(d.addr)) {
				// must be unconditional CALL if inline params...
				putBrk(addr, 'B');
				int n = calls.get(d.addr);
				if (n == 0) {
					n = read(addr) + 1;
				} else if (n < 0) {
					n = -n;
					if ((read(addr) & 0x80) == 0) {
						++n;
					}
				}
				addr += n;
			}
			// Only CJMP, CALL left...
			analyze(d.addr);
		}
		// System.out.format("Break at %04x\n", addr);
	}

	private int getLen(int a) {
		return len[a - base] & 0xff;
	}

	private void putLen(int a, int n) {
		len[a - base] = (byte)n;
	}

	private int getBrk(int a) {
		return brk[a - base] & 0xff;
	}

	private void putBrk(int a, int b) {
		brk[a - base] = (byte)b;
	}

	private String lookup(int a) {
		if (symtab.containsKey(a)) {
			return symtab.get(a);
		}
		return null;
	}

	private String lookup(boolean mk, int a) {
		String l = lookup(a);
		if (!mk || l != null) {
			return l;
		}
		l = String.format("L%04x", a);
		symtab.put(a, l);
		return l;
	}

	private String lookup(boolean mk, Z80Dissed d) {
		String l = lookup(d.addr);
		if (!mk || l != null) {
			return l;
		}
		if (d.type == Z80Dissed.LXI || d.type == Z80Dissed.LDI) {
			l = String.format("X%04x", d.addr);
		} else {
			l = String.format("L%04x", d.addr);
		}
		symtab.put(d.addr, l);
		return l;
	}

	private void clearSymtab() {
		symtab.clear();
	}

	private void dumpBrk(String fn) {
		try {
			OutputStream of = new FileOutputStream(fn);
			of.write(brk);
			of.close();
		} catch (Exception ee) {
			ee.printStackTrace();
		}
	}

	private void generateDZ(File dz, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(dz);
		int bk = 0;
		for (int a = first; a < last; ++a) {
			String l = lookup(a);
			if (l != null) {
				ps.format("%s\n", l);
			}
			int b = getBrk(a);
			if (b != 0) {
				if (bk != b) {
					ps.format("-%04x,%c\n", a, b);
				}
				bk = b;
			}
		}
		ps.close();
	}

	private void loadDZ(File dz) throws Exception {
		BufferedReader lin = new BufferedReader(new FileReader(dz));
		String s;
		int a;
		int bk;
		// TODO: always wipe slate clean?
		Arrays.fill(brk, (byte)0);
		Arrays.fill(len, (byte)0);
		clearSymtab();
		while ((s = lin.readLine()) != null) {
			if (s.matches("-[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F],.")) {
				a = Integer.valueOf(s.substring(1,5), 16);
				bk = s.charAt(6);
				putBrk(a, bk);
			} else if (s.matches("L[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]")) {
				a = Integer.valueOf(s.substring(1,5), 16);
				// TODO: lookup(true, a);
			} else {
				System.err.format("Unrecognized DZ line \"%s\"\n", s);
			}
		}
		lin.close();
	}

	// returns address of first break before or at address 'a'
	private int activeBreak(int a) {
		while (a > base && getBrk(a) == 0) --a;
		return a;
	}

	private String disLineInstr(Z80Dissed d) {
		if (d.addr < 0) {
			if (d.fmt == null) {
				return String.format("%s", d.op);
			} else {
				return String.format("%s\t%s", d.op, d.fmt);
			}
		} else {
			String l = lookup(d.addr);
			if (l == null) {
				l = String.format("0%04xh", d.addr);
			}
			return String.format("%s\t%s", d.op,
				String.format(d.fmt, l));
		}
	}

	private String disLineLabel(int a) {
		int l = read(a) | (read(a + 1) << 8);
		String s = lookup(l);
		if (s != null) {
			return "dw\t" + s;
		} else {
			return String.format("dw\t0%04xh", l);
		}
	}

	private String disLineHex(int a, int n) {
		String s = "";
		int c;
		while (n > 0) {
			c = read(a);
			if (s.length() > 0) s += ',';
			s += String.format("0%02xh", c);
			++a;
			--n;
		}
		return "db\t" + s;
	}

	private String disLineData(int a, int n, boolean bit7) {
		String s = "";
		boolean q = false;
		int c;
		while (n > 0) {
			c = read(a);
			if (c < ' ') {
				if (q) { s += '\''; q = false; }
				if (s.length() > 0) s += ',';
				s += String.format("%d", c);
			} else if (!bit7 && c > '~') {
				if (q) { s += '\''; q = false; }
				if (s.length() > 0) s += ',';
				s += String.format("0%02xh", c);
			} else {
				if (!q) {
					if (s.length() > 0) s += ',';
					s += '\'';
					q = true;
				}
				s += (char)(c & 0x7f);
				if ((c & 0x7f) == '\'') s += (char)(c & 0x7f);
				if ((c & 0x80) != 0) {
					s += "'+80h";
					q = false;
				}
			}
			++a;
			--n;
		}
		if (q) s += "'";
		return "db\t" + s;
	}

	private void generateASM(File asm, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(asm);
		String l;
		String i;
		int b;
		int z;
		int n;
		int ba = activeBreak(first);
		int bk = getBrk(ba);
		if (bk == 0) bk = 'I';
		for (int a = first; a < last;) {
			b = getBrk(a);
			if (b != 0) bk = b;
			if (b == 0) b = ' ';
			l = lookup(a);
			if (l != null) ps.format("%s:", l);
			//	if (l.length() > 7) ps.format("\n");
			ps.format("\t");
			if (bk == 'I') {
				Z80Dissed d = dis.disas(a);
				ps.format(disLineInstr(d));
				ps.format("\t;; %c %04x:", b, a);
				for (z = 0; z < d.len; ++z) {
					ps.format(" %02x", read(a + z));
				}
				a += d.len;
			} else if (bk == 'L') {
				ps.format("%s", disLineLabel(a));
				a += 2;
			} else if (bk == 'C') {
				ps.format("%s", disLineData(a, 1, false));
				a += 1;
			} else if (bk == '7') {
				for (z = 1; a + z < last; ++z) {
					if (getBrk(a + z) != 0) break;
				}
				ps.format("%s", disLineData(a, z, true));
				a += z;
			} else if (bk == 'T') {
				ps.format("%s", disLineHex(a, 2));
				a += 2;
			} else {
				for (z = 1; z < 16 && a + z < end; ++z) {
					if (getBrk(a + z) != 0) break;
				}
				ps.format("%s", disLineData(a, z, false));
				a += z;
			}
			ps.format("\n");
		}
		ps.close();
	}

	// Memory interface:
	public int read(boolean rom, int bank, int adr) {
		return read(adr);
	}
	public int read(int adr) {
		adr -= base;
		if (adr < 0 || adr >= obj.length) {
			return 0;
		}
		return obj[adr] & 0xff;
	}
	public void write(int address, int value) {}
	public void reset() {}
	public void dumpCore(String file) {}
}
