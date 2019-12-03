// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Vector;
import java.io.*;

public class SprFile implements ProgramFile {
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
	Map<Integer,Set<Integer>> exts;

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
		exts = new HashMap<Integer,Set<Integer>>();
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

	// TODO: special handling for inter-module externals...
	// bitmap space is unified, like code bytes, so access
	// as contiguous region.
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
			String l;
			if (adr >= 0xf000) { // external references...
				int ex = adr & ~0xff;
				if (!exts.containsKey(ex)) {
					exts.put(ex, new HashSet<Integer>());
				}
				exts.get(ex).add(adr);
				l = String.format("X%04x", adr);
			} else {
				l = String.format("L%04x", adr);
				if (adr > maxRef) maxRef = adr;
			}
			if (!syms.containsKey(adr)) {
				syms.put(adr, l);
			}
		}
	}

	public int base() { return resBase; }
	public int end() { return _end; }
	public int size() { return resLen + bnkLen; }
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

	public int addSymbols(Map<Integer,String> tab) {
		// These will replace any dups...
		tab.putAll(syms);
		return maxRef + 1;
	}

	public int read(int adr) {
		adr -= base();
		if (adr < 0 || adr >= end()) {
			return 0;
		}
		return img[adr + resStart] & 0xff;
	}

	public int read(int seg, int adr) {
		// address space is unified, no special handling.
		return read(adr);
	}

	public void preASM(PrintStream ps, boolean prn) {
		preASM(ps, prn, 0);
	}

	public void preASM(PrintStream ps, boolean prn, int seg) {
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
	}
}
