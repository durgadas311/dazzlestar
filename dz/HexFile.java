// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.io.*;
import java.util.Map;
import java.util.Map;
import java.util.HashMap;

public class HexFile implements ProgramFile {
	byte[] obj;
	int _base = -1;
	int _end = -1;
	int _entry = -1;
	Map<Integer,String> symtab;

	public HexFile(File prog) throws Exception {
		scanHex(prog);	// scan for min/max
		obj = new byte[_end - _base];
		scanHex(prog);	// now load it
		symtab = new HashMap<Integer,String>();
	}

	private boolean parseHex(String s) {
		if (s.length() < 3) {
			throw new RuntimeException("HEX format error");
		}
		int len = Integer.valueOf(s.substring(1,3), 16);
		// 'len' may be 0...
		if (s.length() < len * 2 + 11) {
			throw new RuntimeException("HEX format error");
		}
		int adr = Integer.valueOf(s.substring(3,7), 16);
		int fil = Integer.valueOf(s.substring(7,9), 16);
		// assert fil == 0
		if (obj == null) {
			if (len == 0) return false;
			if (_base < 0) {
				_base = adr;
				_end = adr + len;
			} else {
				if (adr < _base) _base = adr;
				if (adr + len > _end) _end = adr + len;
			}
			return true;
		}
		int csm = len + ((adr >> 8) & 0xff) + (adr & 0xff) + fil;
		int i = 9;
		for (int x = 0; x < len; ++x) {
			int b = Integer.valueOf(s.substring(i, i + 2), 16);
			obj[adr - _base + x] = (byte)b;
			csm += b;
			i += 2;
		}
		csm += Integer.valueOf(s.substring(i, i + 2), 16);
		csm &= 0xff;
		if (csm != 0) {
			throw new RuntimeException("HEX checksum error");
		}
		if (len == 0 && adr >= _base && adr < _end) {
			// entry point to program...
			_entry = adr;
		}
		return (len > 0);
	}

	private void scanHex(File in) throws Exception {
		BufferedReader lin = new BufferedReader(new FileReader(in));
		String s;
		while ((s = lin.readLine()) != null) {
			if (s.length() == 0) continue;
			int c = s.charAt(0);
			if (c == 0x1a) break;
			if (c != ':') continue;
			if (!parseHex(s)) break;
		}
		lin.close();
	}

	public int numSeg() { return 1; }

	public int sizeSeg(int seg) { return obj.length; }

	public int baseSeg(int seg) { return _base; }

	public int endSeg(int seg) { return _end; }

	public int maxSeg(int seg) { return _end; }

	public int segAdr(int seg, int adr) { return adr; }
	public int segAdr(int seg, Z80Dissed d) { return d.addr; }
	public int segOf(int sa) { return 0; }
	public int adrOf(int sa) { return sa; }

	public boolean symbol(int seg, int a) {
		return symtab.containsKey(a);
	}

	public String lookup(int seg, int a) {
		if (symbol(0, a)) {
			return symtab.get(a);
		}
		return null;
	}

	// called from loadDZ...
	public void putsym(int sgc, int a, String l) {
		if (symbol(0, a)) {
			symtab.remove(a);
		}
		if (l == null) {
			l = String.format("%c%04x", sgc, a);
		}
		symtab.put(a, l);
	}

	public String getsym(int seg, Z80Dissed d) {
		String l = lookup(0, d.addr);
		if (l != null) return l;
		l = String.format("0%04xh", d.addr);
		return l;
	}

	public void mksym(int seg, Z80Dissed d) {
		if (symbol(0, d.addr)) return;
		if (d.addr < _base || d.addr > 0xc000) return;
		symtab.put(d.addr, String.format("L%04x", d.addr));
	}

	public String defLabel(int seg, int adr) {
		return String.format("L%04x", adr);
	}

	public void resetSymtab() {
		symtab.clear();
		if (_entry >= 0) {
			putsym('L', _entry, null);
		}
	}

	// Not used when numSeg() == 1
	public String segName(int seg) { return ""; }

	public int read(int seg, int adr) {
		// no segments here
		adr -= _base;
		if (adr < 0 || adr >= obj.length) return 0;
		return obj[adr] & 0xff;
	}

	public void preASM(PrintStream ps, boolean prn, int seg) {
		if (prn) ps.format("%04x            ", _base);
		ps.format("\torg\t0%04xh\n", _base);
	}

	public void postASM(PrintStream ps, boolean prn, int seg) {
		// only 1 segment...
		if (prn) ps.format("%04x            ", _end);
		if (_entry >= 0) {
			ps.format("\tend\t%s\n", symtab.get(_entry));
		} else {
			ps.print("\tend\n");
		}
	}
}
