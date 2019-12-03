// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.util.Map;
import java.util.HashMap;
import java.util.Vector;
import java.io.*;

public class PrlFile implements ProgramFile {
	byte[] img;
	int resStart = 0;
	int resLen = 0;
	int resBase = 0;
	int resReloc = 0;
	int maxRef = 0;

	Map<Integer,String> syms;

	public PrlFile(File f) throws Exception {
		FileInputStream fi = new FileInputStream(f);
		img = new byte[fi.available()];
		fi.read(img);
		fi.close();
		resStart = 0x0100; // offset in file image
		resBase = 0x0100; // ORG addr of code
		resLen = (img[1] & 0xff) | ((img[2] & 0xff) << 8);
		resReloc = resStart + resLen;
		syms = new HashMap<Integer,String>();
		bldSyms();
	}

	// NOTE: this does not get relative jump targets!
	private void bldSyms() {
		for (int x = 0; x < resLen; ++x) {
			int bit = (x & 7);
			int byt = (x >> 3);
			int rel = (img[resReloc + byt] & 0xff);
			if (rel == 0) {
				x += 7; // plus ++x = +8...
				continue;
			}
			if (((rel << bit) & 0x80) == 0) {
				continue;
			}
			int adr = ((img[resStart + x] & 0xff) << 8) |
				(img[resStart + x - 1] & 0xff);
			if (!syms.containsKey(adr)) {
				syms.put(adr, String.format("L%04x", adr));
				if (adr > maxRef) maxRef = adr;
			}
		}
	}

	private int base() { return resBase; }
	private int end() { return resBase + resLen; }
	private int size() { return resLen; }
	public int numSeg() { return 1; }
	public int sizeSeg(int seg) { return resLen; }
	public int baseSeg(int seg) { return resBase; }
	public int endSeg(int seg) { return resBase + resLen; }
	public int maxSeg(int seg) { return maxRef + 1; }

	public int segAdr(int seg, int adr) { return adr; }
	public int segAdr(int seg, Z80Dissed d) { return d.addr; }
	public int segOf(int sa) { return 0; }
	public int adrOf(int sa) { return sa; }

	public boolean symbol(int seg, int a) {
		return syms.containsKey(a);
	}

	public String lookup(int seg, int a) {
		if (symbol(0, a)) {
			return syms.get(a);
		}
		return null;
	}

	public void putsym(int sgc, int a, String l) {
		// TODO: rename symbol...
		// should this be accepted?
		// at least check reloc bitmap first?
		if (symbol(0, a)) {
			//syms.remove(a);
			return;
		}
		//syms.put(a, l);
	}

	public String getsym(int seg, Z80Dissed d) {
		String l = lookup(0, d.addr);
		if (l != null) return l;
		l = String.format("0%04xh", d.addr);
		return l;
	}

	public void mksym(int seg, Z80Dissed d) {
		if (symbol(0, d.addr)) return;
		if (!d.rel) {	// should have already been handled...
			return;
		}
		syms.put(d.addr, String.format("L%04x", d.addr));
	}

	public void resetSymtab() {
		// TODO: clear then rebuild?
		syms.clear();
		bldSyms();
	}

	public int read(int adr) {
		adr -= base();
		if (adr < 0 || adr >= resLen) {
			return 0;
		}
		return img[adr + resStart] & 0xff;
	}

	public int read(int seg, int adr) {
		return read(adr);
	}

	public void preASM(PrintStream ps, boolean prn) {
		if (prn) ps.print("                ");
		ps.print("\tcseg\n");
		for (int a = 0; a < base(); ++a) {
			if (!syms.containsKey(a)) continue;
			if (prn) ps.format("%04x =          ", a);
			ps.format("%s:\tequ\t$-%d\n", syms.get(a), base() - a);
		}
	}
}
