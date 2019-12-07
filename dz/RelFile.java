// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.util.Map;
import java.util.HashMap;
import java.util.Set;
import java.util.HashSet;
import java.util.Vector;
import java.io.*;

// NOTE: Unless linked with [B], SPR files have merged cseg and dseg
// so we can no longer differentiate.
public class RelFile implements ProgramFile {
	static final String segChars = "LTYZGHIJKMNPQRSUVW";
	static final int BASE_EXT = 0xff00; // are 256 externals enough?
	static final int SEG_ABS  = segChars.length();
	static final int ABS_0 = (SEG_ABS << 16) | 0; // segAdr(SEG_ABS, 0);
	byte[] rel;
	byte[][] img;

	int[] base;
	int[] len;
	int[] max;
	int nSeg = 0;

	Map<Integer,String> syms;	// key is seg-adr
	Map<Integer,Integer> site;	// addr site, key is seg-adr
	Map<Integer,Integer> offs;	// extrn+/-off, key is seg-adr
	Vector<String> pubs;	// also entered into syms
	Vector<String> libs;
	Map<Integer,String> exts;
	Map<String,Integer> comm;
	Map<String,Integer> commSegs;
	int externals;
	boolean initDone;
	int csegSize;
	int dsegSize;
	int csegSeg = -1;
	int dsegSeg = -1;
	int curComm = -1;
	String name;

	Vector<String> segNms;
	Vector<String> segMns;

	// for managing bit stream in REL
	int bitter;
	int pointer;
	int current;
	int lseg;	// current segment
	int[] lptr;	// current loc ptr in each seg
	int endStart = -1;	// param on 'end' statement

	class RelException extends RuntimeException {
		public RelException(String m) {
			super(m);
		}
	}

	public RelFile(File f) throws Exception {
		FileInputStream fi = new FileInputStream(f);
		rel = new byte[fi.available()];
		fi.read(rel);
		fi.close();
		syms = new HashMap<Integer,String>();
		site = new HashMap<Integer,Integer>();
		offs = new HashMap<Integer,Integer>();
		exts = new HashMap<Integer,String>();
		pubs = new Vector<String>();
		libs = new Vector<String>();
		segNms = new Vector<String>();
		segMns = new Vector<String>();
		comm = new HashMap<String,Integer>();
		commSegs = new HashMap<String,Integer>();
		int n = SEG_ABS + 1;
		base = new int[n];
		len = new int[n];
		max = new int[n];
		len = new int[n];
		lptr = new int[n];
		img = new byte[n][];	// [SEG_ABS] not used
		loadRel();	// sets up the rest... may throw...
		if (nSeg == 0) throw new RelException("REL File empty?");
	}

	public int numSeg() { return nSeg; }
	public int sizeSeg(int seg) {
		return len[seg];
	}
	public int baseSeg(int seg) {
		return base[seg];
	}
	public int endSeg(int seg) {
		return base[seg] + len[seg];
	}
	public int maxSeg(int seg) {
		return max[seg] + 1;
	}

	public int segAdr(int seg, int adr) { return (seg << 16) | adr; }
	public int segAdr(int seg, Z80Dissed d) {
		int sa = segAdr(seg, d.pc + d.off);
		if (!site.containsKey(sa)) {
			return segAdr(seg, d.addr); // what? error? fault?
		}
		return site.get(sa);
	}
	public int segOf(int sa) { return (sa >> 16); }
	public int adrOf(int sa) { return sa & 0xffff; }

	public boolean symbol(int seg, int a) {
		int sa = segAdr(seg, a);
		return syms.containsKey(sa);
	}

	public String lookup(int seg, int a) {
		int sa = segAdr(seg, a);
		if (!syms.containsKey(sa)) return null;
		return syms.get(sa);
	}

	// called from loadDZ... rename a symbol if 'l' not null
	public void putsym(int sgc, int a, String l) {
		// rename symbol...
		// should this be accepted?
		// at least check reloc map first?
		int x = segChars.indexOf(sgc);
		if (x < 0) x = 0; // what's the right action here?
		int sa = segAdr(x, a);
		if (syms.containsKey(sa)) {
			if (l == null) return;
			syms.remove(sa);
		}
		if (l == null) {
			l = String.format("%c%04x", segChars.charAt(x), a);
		}
		syms.put(sa, l);
	}

	public String getsym(int seg, Z80Dissed d) {
		int sa = segAdr(seg, d.pc + d.off);	// site address...
		if (site.containsKey(sa)) {
			int va = site.get(sa);
			if (syms.containsKey(va)) {
				return syms.get(va);
			}
			return String.format("0%04xh", d.addr);
		}
		// might be external... or rel...
		if (d.rel) {
			int va = segAdr(seg, d.addr);
			if (syms.containsKey(va)) {
				return syms.get(va);
			}
			return String.format("0%04xh", d.addr);
		}
		if (!offs.containsKey(sa)) {
			if (!isExt(d.addr)) {
				// what? error?
				return String.format("0%04xh", d.addr);
			}
			return exts.get(d.addr);
		}
		return String.format("%s%+d", exts.get(d.addr), offs.get(sa));
	}

	public void mksym(int seg, Z80Dissed d) {
		int sa = segAdr(seg, d);
		if (syms.containsKey(sa)) return;
		if (!d.rel) {	// should have already been handled...
			return;
		}
		bldSym(sa);
	}

	private void bldSym(int sa) {
		if (syms.containsKey(sa)) {
			return;
		}
		int a = adrOf(sa);
		int x = segOf(sa);
		String l = String.format("%c%04x", segChars.charAt(x), a);
		syms.put(sa, l);
	}

	public String defLabel(int seg, int adr) {
		return String.format("%c%04x", segChars.charAt(seg), adr);
	}

	public void resetSymtab() {
		// TODO: clear then rebuild? must loadRel()???
		// syms.clear();
		// exts.clear();
		// ...
	}

	// Translates REL segment id to local segment index.
	private int transSeg(int relseg) {
		// TODO: handle case where segment does not exist?
		// pre-init needs to work, segment is not needed?
		if (!initDone) return 0;
		if (relseg == 0b00) {
			return SEG_ABS;
		} else if (relseg == 0b01) {
			return csegSeg;
		} else if (relseg == 0b10) {
			return dsegSeg;
		} else if (relseg == 0b11) {
			return curComm;
		}
		return 0; // NOTREACHED
	}

	// Not used when numSeg() == 1
	public String segName(int seg) {
		return segNms.get(seg);
	}

	public int read(int seg, int adr) {
		// TODO: COMM segs are different
		adr -= base[seg];
		if (adr < 0 || adr >= len[seg]) {
			return 0;
		}
		return img[seg][adr] & 0xff;
	}

	public void preASM(PrintStream ps, boolean prn, int seg) {
		if (seg == 0) {
			if (exts.size() > 0) {
				if (prn) ps.print("                ");
				ps.print("\textrn\t");
				int x = 0;
				for (String xt : exts.values()) {
					if (x++ > 0) ps.print(",");
					ps.print(xt);
				}
				ps.print("\n");
			}
			if (exts.size() > 0 && pubs.size() > 0) {
				ps.print("\n");
			}
			if (pubs.size() > 0) {
				if (prn) ps.print("                ");
				ps.print("\tpublic\t");
				for (int x = 0; x < pubs.size(); ++x) {
					if (x > 0) ps.print(",");
					ps.print(pubs.get(x));
				}
				ps.print("\n");
			}
		}
		ps.print("\n");
		if (prn) ps.print("                ");
		ps.print("\t" + segMns.get(seg) + "\n");
	}

	private void loadRel() {
		resetExt();
		bitter = 8;
		pointer = 0;
		current = rel[pointer++] & 0xff;
		// clear symtab arrays?
		while (command() >= 0);
		// Now go through remaining sites and create symbols...
		for (int va : site.values()) {
			bldSym(va);
		}
	}

	private void initSegs() {
		if (initDone) return;
		nSeg = 0;
		int ns = 0;
		if (csegSize > 0) ++ns;
		if (dsegSize > 0) ++ns;
		ns += comm.size();
		if (ns >= segChars.length()) {
			throw new RelException("Too many segments");
		}
		if (csegSize > 0) {
			csegSeg = nSeg;
			base[nSeg] = 0x0000; // base always 0?
			len[nSeg] = csegSize;
			img[nSeg++] = new byte[csegSize];
			segNms.add("program");
			segMns.add("cseg");
		}
		if (dsegSize > 0) {
			dsegSeg = nSeg;
			base[nSeg] = 0x0000; // base always 0?
			len[nSeg] = dsegSize;
			img[nSeg++] = new byte[dsegSize];
			segNms.add("data");
			segMns.add("dseg");
		}
		for (String cmn : comm.keySet()) {
			base[nSeg] = 0x0000; // base always 0?
			commSegs.put(cmn, nSeg);
			int n = comm.get(cmn);
			len[nSeg] = n;
			img[nSeg++] = new byte[n];
			segNms.add(cmn);
			segMns.add("common\t/" + cmn + "/");
		}
		initDone = true;
	}

	private int getBits(int n) {
		int ret = 0;
		if (n > 8) n = 8;
		while (n > 0) {
			if (bitter <= 0) return -1; // try to salvage something?
			boolean c = ((current & 0x80) != 0);
			current <<= 1;
			ret <<= 1;
			if (c) ret |= 1;
			--bitter;
			--n;
			if (bitter == 0) {
				if (pointer < rel.length) {
					current = rel[pointer++] & 0xff;
					bitter = 8;
				} // else bitter==0 EOF
			}
		}
		return ret;
	}

	// This might or might not be part of the program image...
	private int addr() {
		int bl = getBits(8);
		if (bl < 0) return -1;
		int bh = getBits(8);
		if (bh < 0) return -1;
		return (bh << 8) | bl;
	}

	// This is always part of the program image
	private int doByte() {
		initSegs();
		int b = getBits(8);
		if (b < 0) return -1;
		if (lseg != SEG_ABS) {
			img[lseg][lptr[lseg]] = (byte)b;
		}
		++lptr[lseg];
		return 0;
	}

	private String pname() {
		int t = getBits(3);
		if (t < 0) return null;
		if (t == 0) t = 8;
		byte[] nm = new byte[t];
		int x = 0;
		while (t > 0) {
			int c = getBits(8);
			if (c < 0) return null;
			nm[x++] = (byte)c;
			--t;
		}
		return new String(nm);
	}

	// get segment and value (address)
	private int value(int t) {
		int a = getBits(2);
		if (a < 0) return -1;
		int x = transSeg(a);
		int l = addr();
		if (l < 0) return -1;
		if (t == 0b1110) {	// end of module... end of byte
			getBits(bitter);
		}
		return segAdr(x, l);
	}

	// may need to pad...
	private int setloc() {
		int l = value(0);	// segment translated...
		if (l < 0) return -1;
		int x = segOf(l);
		lseg = x;
		// TODO: pad? implicit "ds N"...
		lptr[lseg] = adrOf(l);
		return 0;
	}

	private void resetExt() {
		externals = BASE_EXT;
		exts.clear();
	}

	private int getExt(String s) {
		int x = externals++;
		exts.put(x, s);
		return x;
	}

	private boolean isExt(int va) {
		// TODO: confirm segment? as what?
		return (adrOf(va) >= BASE_EXT);
	}

	private void chain(int e, int sa) {
		if (sa == ABS_0) return;	// end of chain
		int va;
		int na;
		int x = segOf(sa);
		int a = adrOf(sa);
		if (!site.containsKey(sa)) {
			// This might be terminal (ABS) 0000...
			na = (img[x][a] & 0xff) |
				((img[x][a + 1] & 0xff) << 8);
			if (na != 0) return;	// TODO: error?
			na = ABS_0;
		} else {
			na = site.get(sa);
		}
		site.put(sa, e); // replace
		img[x][a] = (byte)e;
		img[x][a + 1] = (byte)(e >> 8); // strips segment...
		chain(e, na);
	}

	private void chainExt(int e, int sa) {
		int x = segOf(sa);
		int a = adrOf(sa);
		if (sa == ABS_0) return;	// end of chain
		int va;
		if (!site.containsKey(sa)) {
			// This might be terminal (ABS) 0000...
			va = (img[x][a] & 0xff) |
				((img[x][a + 1] & 0xff) << 8);
			if (va != 0) return;	// TODO: error?
			va = ABS_0;
		} else {
			va = site.remove(sa);
		}
		img[x][a] = (byte)e;
		img[x][a + 1] = (byte)(e >> 8);
		chainExt(e, va);
	}

	// "special link item". May return EOF (-1)
	private int special() {
		int xxx;
		short sss;
		String s;
		int t = getBits(4);
		if (t < 0) throw new RelException("REL sync error");
		switch (t) {
		case 0b0000:	// entry symbol - declares a public symbol - no value
			// handled later, in DEFINE ENTRY POINT
			s = pname();
			if (s == null) throw new RelException("REL sync error");
			break;
		case 0b0001:	// select common block - TBD
			s = pname();
			if (s == null) throw new RelException("REL sync error");
			initSegs();
			if (!commSegs.containsKey(s)) {
				throw new RelException("Unknown COMMON block");
			}
			curComm = commSegs.get(s);
			break;
		case 0b0010:	// program name
			name = pname();
			if (name == null) throw new RelException("REL sync error");
			break;
		case 0b0011:	// request lib search - TBD
			s = pname();
			if (s == null) throw new RelException("REL sync error");
			libs.add(s);
			break;
		case 0b0100:	// extension link items...
			initSegs();
			s = pname(); // op string, not label...
			if (s == null) throw new RelException("REL sync error");
			// perform(s); // must save and decode when printed
			break;
		case 0b0101:	// define comm size
			// TBD: what to do with this
			xxx = value(t);
			if (xxx < 0) throw new RelException("REL sync error");
			xxx = adrOf(xxx); // ignore segment?
			s = pname();
			if (s == null) throw new RelException("REL sync error");
			if (xxx == 0) break; // yes?
			if (!comm.containsKey(s)) {
				comm.put(s, xxx);
			} // else error?
			break;
		case 0b0110:	// chain external
			initSegs();
			xxx = value(t); // this is the head of list...
			if (xxx < 0) throw new RelException("REL sync error");
			s = pname();
			if (s == null) throw new RelException("REL sync error");
			// walk chain and fixup...
			// cleanout previous "fake" symbols...
			t = getExt(s);
			chainExt(t, xxx);
			break;
		case 0b0111:	// define entry point - public definitions
			xxx = value(t);
			if (xxx < 0) throw new RelException("REL sync error");
			s = pname();
			if (s == null) throw new RelException("REL sync error");
			syms.put(xxx, s);
			pubs.add(s);
			break;
		case 0b1000:	// external minus offset
			// NOTE: RMAC converts this to "external plus offset"
			initSegs();
			xxx = value(t);
			if (xxx < 0) throw new RelException("REL sync error");
			xxx = adrOf(xxx); // ignore segment?
			// must immediately precede address
			offs.put(segAdr(lseg, lptr[lseg]), -xxx);
			break;
		case 0b1001:	// external plus offset
			// RMAC converts "ext - off" to "ext + -off",
			initSegs();
			// so we need to sign-extend the value.
			xxx = value(t); // TBD
			if (xxx < 0) throw new RelException("REL sync error");
			sss = (short)adrOf(xxx); // ignore segment?
			xxx = sss;	// needs sign-extension
			// must immediately precede address
			offs.put(segAdr(lseg, lptr[lseg]), xxx);
			break;
		case 0b1010:	// define data size
			xxx = value(t);	// TBD: seg-adr to length?
			if (xxx < 0) throw new RelException("REL sync error");
			xxx = adrOf(xxx); // ignore segment?
			if (xxx == 0) break;
			dsegSize = xxx;
			break;
		case 0b1011:	// set location counter
			initSegs();
			xxx = setloc();
			if (xxx < 0) throw new RelException("REL sync error");
			break;
		case 0b1100:	// chain address - ?
			initSegs();
			xxx = value(t);
			if (xxx < 0) throw new RelException("REL sync error");
			// run chain...??? what is this for?
			chain(segAdr(lseg, lptr[lseg]), xxx);
			break;
		case 0b1101:	// define prog size
			xxx = value(t);	// TBD: seg-adr to length?
			if (xxx < 0) throw new RelException("REL sync error");
			xxx = adrOf(xxx); // ignore segment?
			if (xxx == 0) break;
			csegSize = xxx;
			break;
		case 0b1110:	//  end module
			initSegs();
			xxx = value(t); // value on 'end' statement, or ABS-0
			if (xxx < 0) throw new RelException("REL sync error");
			if (xxx != ABS_0) {
				endStart = xxx;
			}
			break;
		case 0b1111:	//  end file
			initSegs();
			return -1;
		}
		return 0;
	}

	// Something to enter into symbol table...
	// But, this may be an external chain, so only
	// enter the x-ref.
	private void ref(int t) {
		initSegs();
		int a = addr();
		if (a < 0) throw new RelException("REL sync error");
		int x = transSeg(t);
		int sa = segAdr(x, a);
		// need to record call site...
		int ss = segAdr(lseg, lptr[lseg]);
		site.put(ss, sa); // TODO: what's the right cross-ref?
		if (lseg == SEG_ABS) {
			lptr[lseg] += 2;
			return;
		}
		img[lseg][lptr[lseg]++] = (byte)a;
		img[lseg][lptr[lseg]++] = (byte)(a >> 8);
	}

	private int command() {
		int t = getBits(1);
		if (t < 0) throw new RelException("REL sync error");
		if (t == 0) {
			t = doByte();
			if (t < 0) throw new RelException("REL sync error");
			return 0;
		}
		t = getBits(2);
		if (t < 0) throw new RelException("REL sync error");
		if (t == 0) { // special item... incl. END FILE
			return special(); // may throw
		}
		ref(t);
		return 0;
	}
}
