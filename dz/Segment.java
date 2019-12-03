// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.util.Arrays;

public class Segment {
	public int idx;
	public int base;
	public int end;
	public int max;
	public int cursor;
	public int cur_len;
	public int cwin = -1;
	public int cend = -1;
	public int dwin = -1;
	public int dend = -1;
	boolean init;
	// current search params
	int cur_adr;
	int cur_beg;
	int orphans;
	// disassembly
	byte[] brk;	// breaks
	byte[] rdx;	// radix
	byte[] sty;	// styles
	byte[] vst;	// visits and orphans 
	byte[] len;	// length of "instructions" (lines) 

	public Segment(ProgramFile p, int x) {
		int n = p.sizeSeg(x);
		idx = x;
		base = p.baseSeg(x);
		end = p.endSeg(x);
		max = p.maxSeg(x);
		brk = new byte[n];
		rdx = new byte[n];
		sty = new byte[n];
		vst = new byte[n];
		len = new byte[n];
	}

	public int getLen(int a) {
		return len[a - base] & 0xff;
	}

	public void putLen(int a, int n) {
		len[a - base] = (byte)n;
	}

	public void setLen(int a, int n) {
		putLen(a++, n--);
		while (a < end && n > 0) {
			putLen(a++, 0);
			--n;
		}
	}

	public int getBrk(int a) {
		return brk[a - base] & 0xff;
	}

	public int getRadix(int a) {
		return rdx[a - base] & 0xff;
	}

	public int getStyle(int a) {
		return sty[a - base] & 0xff;
	}

	public boolean anyBrk(int a) {
		return (getBrk(a) != 0 || getStyle(a) != 0 || getRadix(a) != 0);
	}

	public void putBrk(int a, int b) {
		adopt(a);
		brk[a - base] = (byte)b;
	}

	public void putRadix(int a, int b) {
		rdx[a - base] = (byte)b;
	}

	public void putStyle(int a, int b) {
		sty[a - base] = (byte)b;
	}

	public boolean visited(int a) {
		return ((vst[a - base] & 1) != 0);
	}

	public boolean orphaned(int a) {
		return ((vst[a - base] & 2) != 0);
	}

	public boolean constant(int a) {
		return ((vst[a - base] & 4) != 0);
	}

	public void toggleConst(int a) {
		vst[a - base] ^= 4;
	}

	public void setConst(int a) {
		vst[a - base] |= 4;
	}

	public void resConst(int a) {
		vst[a - base] &= ~4;
	}

	public void visit(int a) {
		vst[a - base] |= 1;
	}

	public void orphan(int a) {
		++orphans;
		vst[a - base] |= 2;
	}

	public void adopt(int a) {
		vst[a - base] &= ~2;
	}

	public void fresh() {
		// TODO: don't lose constants?
		Arrays.fill(vst, (byte)0);
	}

	public boolean terminal(int a) {
		return ((vst[a - base] & 8) != 0);
	}

	public void setTerm(int a) {
		vst[a - base] |= 8;
	}

	public void resTerm(int a) {
		vst[a - base] &= ~8;
	}

	public int lastBrk(int a, int n) {
		int bk = getBrk(a++);
		int b;
		--n;
		while (a < end && n > 0) {
			b = getBrk(a++);
			if (b != 0) bk = b;
			--n;
		}
		return bk;
	}

	public int lastStyle(int a, int n) {
		int bk = getStyle(a++);
		int b;
		--n;
		while (a < end && n > 0) {
			b = getStyle(a++);
			if (b != 0) bk = b;
			--n;
		}
		return bk;
	}

	public int lastRadix(int a, int n) {
		int bk = getRadix(a++);
		int b;
		--n;
		while (a < end && n > 0) {
			b = getRadix(a++);
			if (b != 0) bk = b;
			--n;
		}
		return bk;
	}

        public int oneBack(int a) {
                if (a > end) a = end;
                if (a < base) a = base;
                while (a - 1 >= base) {
                        --a;
                        if (getLen(a) > 0) break;
                }
                return a;
        }

	// returns address of first break before or at address 'a'
	public int activeBreak(int a) {
		int bk = 0;
		while (a > base && (bk = getBrk(a)) == 0) --a;
		return bk;
	}

	// returns address of first radix before or at address 'a'
	public int activeRadix(int a) {
		int bk = 0;
		while (a > base && (bk = getRadix(a)) == 0) --a;
		return bk;
	}

	// returns address of first style before or at address 'a'
	public int activeStyle(int a) {
		int bk = 0;
		while (a > base && (bk = getStyle(a)) == 0) --a;
		return bk;
	}
}
