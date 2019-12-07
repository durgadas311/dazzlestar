// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.io.*;
import java.util.Map;
import java.util.Map;
import java.util.HashMap;

public class BinaryFile implements ProgramFile {
	byte[] obj;
	int _base;
	int _end;
	Map<Integer,String> symtab;

	public BinaryFile(File prog, int org) throws Exception {
		InputStream f = new FileInputStream(prog);
		obj = new byte[f.available()];
		f.read(obj);
		f.close();
		symtab = new HashMap<Integer,String>();
		_base = org;
		_end = org + obj.length;
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
}
