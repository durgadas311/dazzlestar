// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.util.Map;
import java.util.HashMap;
import java.util.Vector;
import java.io.*;

// NOTE: PRL files might have contained a dseg, but we can no longer tell.
public class PrlFile implements ProgramFile {
	byte[] img;
	int resStart = 0;
	int resLen = 0;
	int resBase = 0;
	int resReloc = 0;
	int maxRef = 0;

	Map<Integer,String> syms;
	Vector<Integer> pg0;

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
		pg0 = new Vector<Integer>();
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
			if (syms.containsKey(adr)) {
				continue;
			}
			String l;
			if (adr < resBase) {
				pg0.add(adr);
				l = String.format("X%04x", adr);
			} else {
				l = String.format("L%04x", adr);
				if (adr > maxRef) maxRef = adr;
			}
			syms.put(adr, l);
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

	// called from loadDZ...
	public void putsym(int sgc, int a, String l) {
		// TODO: rename symbol...
		// should this be accepted?
		// at least check reloc bitmap first?
		if (symbol(0, a)) {
			syms.remove(a);
		}
		if (l == null) {
			l = String.format("%c%04x", sgc, a);
		}
		syms.put(a, l);
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

	public String defLabel(int seg, int adr) {
		return String.format("L%04x", adr);
	}

	public void resetSymtab() {
		// TODO: clear then rebuild?
		syms.clear();
		pg0.clear();
		bldSyms();
	}

	// Not used when numSeg() == 1
	public String segName(int seg) { return ""; }

	public int read(int seg, int adr) {
		adr -= base();
		if (adr < 0 || adr >= resLen) {
			return 0;
		}
		return img[adr + resStart] & 0xff;
	}

	public void preASM(PrintStream ps, boolean prn, int seg) {
		if (prn) ps.print("                ");
		ps.print("\tcseg\n");
		if (pg0.size() == 0) {
			return;
		}
		if (prn) ps.format("0000 =          ");
		ps.format("X0000\tequ\t$-256\n");
		for (int a : pg0) {
			if (a == 0) continue; 
			if (!syms.containsKey(a)) continue; // can't happen?
			if (prn) ps.format("%04x =          ", a);
			ps.format("%s:\tequ\tX0000+%d\n", syms.get(a), a);
		}
		ps.print("\n");
	}
}
