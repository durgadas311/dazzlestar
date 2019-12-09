// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Vector;
import java.io.*;

// NOTE: Unless linked with [B], SPR files have merged cseg and dseg
// so we can no longer differentiate.
public class SprFile implements ProgramFile {
	static final int SEG_ABS = 3; // never a valid segment

	byte[] img;
	int resStart = 0;
	int resLen = 0;
	int resBase = 0;
	int resReloc = 0;
	int bnkStart = 0;
	int bnkLen = 0;
	int bnkBase = 0;
	int bnkReloc = 0;
	int maxRef = 0;
	int nSeg = 1;
	int _end = 0;

	Map<Integer,String> syms;
	Map<Integer,Vector<Integer>> exts;

	public SprFile(File f) throws Exception {
		FileInputStream fi = new FileInputStream(f);
		img = new byte[fi.available()];
		fi.read(img);
		fi.close();
		resStart = 0x0100; // offset in file image
		resBase = 0x0000; // ORG addr of code
		resLen = (img[1] & 0xff) | ((img[2] & 0xff) << 8);
		int r = (img[10] & 0xff) | ((img[11] & 0xff) << 8);
		resReloc = resStart + resLen;
		syms = new HashMap<Integer,String>();
		exts = new HashMap<Integer,Vector<Integer>>();
		if (r != 0) { // two segments...
			++nSeg;
			_end = resBase + resLen;
			bnkLen = resLen - r;
			resLen = r;
			int b = resStart + resLen;
			bnkStart = ((b + 0xff) & ~0xff);
			bnkBase = ((resBase + resLen + 0xff) & ~0xff);	// right after res
			resReloc = b + bnkLen;
			bnkReloc = resReloc + (((resLen + 0xff) & ~0xff) / 8);
		} else {
			_end = resBase + resLen;
		}
		bldSyms();
	}

	// bitmap space is unified, like code bytes, so access
	// as contiguous region.
	// NOTE: this does not get relative jump targets!
	private void bldSyms() {
		for (int x = 0; x < size(); ++x) {
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
			if (adr >= 0xf000) { // external references...
				int ex = adr & ~0xff;
				if (!exts.containsKey(ex)) {
					exts.put(ex, new Vector<Integer>());
				}
				exts.get(ex).add(adr);
				l = String.format("X%04x", adr);
			} else {
				l = String.format("L%04x", adr);
				if (adr > maxRef) maxRef = adr;
			}
			syms.put(adr, l);
		}
	}

	// Unified addr space, no seg idx needed...
	// Determine if the *site* addr contains a reloc.
	// Note, only hi byte has reloc bit, so site adr + 1.
	private boolean isReloc(int a) {
		int bit = (a & 7);
		int byt = (a >> 3);
		int rel = (img[resReloc + byt] & 0xff);
		return (((rel << bit) & 0x80) != 0);
	}

	private int base() { return resBase; }
	private int end() { return _end; }
	private int size() { return resLen + bnkLen; }
	public int numSeg() { return nSeg; }
	public int sizeSeg(int seg) {
		if (seg == 0) {
			return resLen;
		} else {
			return bnkLen;
		}
	}
	public int baseSeg(int seg) {
		if (seg == 0) {
			return resBase;
		} else {
			return bnkBase;
		}
	}
	public int endSeg(int seg) {
		if (seg == 0) {
			return resBase + resLen;
		} else {
			return bnkBase + bnkLen;
		}
	}
	public int maxSeg(int seg) {
		if (nSeg == 1) {
			return maxRef + 1;
		} else if (seg == 0) {
			return resBase + resLen;
		} else {
			return bnkBase + bnkLen;
		}
	}

	// Unified address space - still the simple case.
	// (all addresses uniquely identify segment)

	public int segAdr(int seg, int adr) { return (seg << 16) | adr; }
	public int segAdr(int seg, Z80Dissed d) {
		int x;
		// hi byte has reloc bit, so site adr + 1...
		if (d.rel) {
			x = seg;
		} else if (!isReloc(d.pc + d.off + 1)) {
			x = SEG_ABS;
		} else {
			x = _segOf(d.addr);
		}
		return segAdr(x, d.addr);
	}
	private int _segOf(int sa) { return sa >= resBase + resLen ? 1 : 0; }
	public int segOf(int sa) { return (sa >> 16); }
	public int adrOf(int sa) { return sa & 0xffff; }

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
		// rename symbol...
		// should this be accepted?
		// at least check reloc bitmap first?
		if (symbol(0, a)) {
			if (l == null) return;
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
		if (!d.rel) {	// should have already been handled...
			return;
		}
		if (symbol(0, d.addr)) return;
		syms.put(d.addr, String.format("L%04x", d.addr));
	}

	public String defLabel(int seg, int adr) {
		return String.format("L%04x", adr);
	}

	public void resetSymtab() {
		// TODO: clear then rebuild?
		syms.clear();
		exts.clear();
		bldSyms();
	}

	// Not used when numSeg() == 1
	public String segName(int seg) {
		if (seg == 0) {
			return "res";
		} else {
			return "bnk";
		}
	}

	public int read(int seg, int adr) {
		// address space is unified, no special handling.
		adr -= base();
		if (adr < 0 || adr >= end()) {
			return 0;
		}
		return img[adr + resStart] & 0xff;
	}

	public void preASM(PrintStream ps, boolean prn, int seg) {
		ps.print("\n");
		if (prn) ps.print("                ");
		if (seg == 0) {
			ps.print("\tcseg\n");
		} else {
			ps.print("\tdseg\n");
			return;
		}
		if (exts.size() == 0) {
			return;
		}
		String l;
		if (prn) ps.print("0000 =          ");
		ps.print("X0000\tequ\t$\n");
		for (int x : exts.keySet()) {
			if (prn) ps.format("%04x =          ", x);
			if (syms.containsKey(x)) {
				l = syms.get(x);
			} else {
				l = String.format("X%04x", x);
			}
			ps.format("%s\tequ\tX0000+0%04xh\n", l, x);
			for (int y : exts.get(x)) {
				if (y == x) continue;
				if (prn) ps.format("%04x =          ", y);
				ps.format("%s\tequ\tX%04x+%d\n", syms.get(y), x, y - x);
			}
		}
		ps.print("\n");
	}
}
