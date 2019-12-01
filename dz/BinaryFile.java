// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.io.*;

public class BinaryFile implements ProgramFile {
	byte[] obj;
	int _base;
	int _end;

	public BinaryFile(File prog, int org) throws Exception {
		InputStream f = new FileInputStream(prog);
		obj = new byte[f.available()];
		f.read(obj);
		f.close();
		_base = org;
		_end = org + obj.length;
	}

	public int base() { return _base; }

	public int end() { return _end; }

	public int size() { return obj.length; }

	public int numSeg() { return 1; }

	public int sizeSeg(int seg) { return obj.length; }

	public int baseSeg(int seg) { return _base; }

	public int endSeg(int seg) { return _end; }

	public boolean isReloc(int adr) { return false; }

	public int read(int adr) {
		adr -= _base;
		if (adr < 0 || adr >= obj.length) return 0;
		return obj[adr] & 0xff;
	}

	public int read(int seg, int adr) {
		// no segments here
		return read(adr);
	}
}
