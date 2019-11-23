// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;
import java.util.Properties;
import java.util.Stack;
import java.util.Vector;
import java.awt.datatransfer.StringSelection;

public class DazzleStar implements DZCodePainter, DZDumpPainter, Memory,
			KeyListener, ActionListener {
	static final String allBreaks = "BILWXRC07$TQS";
	static final String allStyles = "MN";
	static final String allRadix = "HD2";

	static DazzleStar _us;
	File comFile;
	String baseName;
	String basePath;
	String dzExt;
	String asmExt;
	String prnExt;
	byte[] obj;
	byte[] brk;	// breaks
	byte[] rdx;	// radix
	byte[] sty;	// styles
	byte[] len;	// length of "instructions" (lines)
	Map<Integer,String> symtab;
	Stack<Integer> prevs;
	Z80Disassembler dis;
	Font font2;
	JMenuItem mi_ld;
	JMenuItem mi_sav;
	JMenuItem mi_asm;
	JMenuItem mi_prn;
	JMenuItem mi_cls;
	JMenuItem mi_sym;
	JMenuItem mi_dis;
	GenericHelp help;
	JFrame frame;
	DZCodePane code;
	DZDumpPane dump;
	Font font;
	JTextField dest;
	JLabel stat;
	JPanel src_pan;
	JTextField src_pat;
	JPanel err_pan;
	JEditorPane err_txt;
	JLabel err_lbl;
	String statBase;
	Color hilite;
	Color liter;
	int clines;
	int dlines;

	int base;
	int end;
	int cursor;
	int cur_len;
	int cwin = -1;
	int cend = -1;
	int dwin = -1;
	int dend = -1;
	// current search
	int cur_adr;
	int cur_beg;
	byte[] cur_val;
	String cur_str;

	FontMetrics _fm;
	int _fa;
	int _fw;
	int _fw2;
	int _fh;
	int bd_width = 3; // some number
	int ln_width = 21 + 80; // data + asm

	Properties props = new Properties();
	Vector<Z80Dissed> zdv = new Vector<Z80Dissed>();

	public static void main(String[] args) {
		_us = new DazzleStar(args);
		// _us.start(); ??
	}

	private void help() {
		System.err.format("Usage: DazzleStar <com-file>\n");
		System.exit(1);
	}

	private DazzleStar(String[] args) {
		String rc = null;
		File ff = new File("./dzrc");
		if (ff.exists()) {
			rc = ff.getAbsolutePath();
		}
		if (rc == null) {
			rc = System.getProperty("user.home") + "/.dzrc";
		}
		try {
			FileInputStream cfg = new FileInputStream(rc);
			props.load(cfg);
			cfg.close();
		} catch(Exception ee) {
			rc = null;
		}
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
		if (dis == null) {
			dis = new Z80DisassemblerMAC80(this);
		}
		symtab = new HashMap<Integer,String>();
		prevs = new Stack<Integer>();
		frame = new JFrame("DazzleStar TNG");
		frame.getContentPane().setName("DazzleStar TNG");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // TODO: save!
		frame.addKeyListener(this);
		// This allows TAB to be sent
		frame.setFocusTraversalKeysEnabled(false);
		java.net.URL url = this.getClass().getResource("docs/dzhelp.html");
		if (url != null) {
			help = new GenericHelp(frame.getTitle() + " Help", url);
		}

		JMenuBar mb = new JMenuBar();
		// File menu...
		JMenu mu = new JMenu("File");
		JMenuItem mi = new JMenuItem("New", KeyEvent.VK_N);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_cls = new JMenuItem("Close", KeyEvent.VK_C);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_asm = new JMenuItem("Generate ASM", KeyEvent.VK_A);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_prn = new JMenuItem("Generate PRN", KeyEvent.VK_P);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_sav = new JMenuItem("Save DZ", KeyEvent.VK_S);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_ld = new JMenuItem("Load DZ", KeyEvent.VK_L);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("Quit (no save)", KeyEvent.VK_Q);
		mi.addActionListener(this);
		mu.add(mi);
		mb.add(mu);
		// done with File menu
		mu = new JMenu("Disas");
		mi = mi_sym = new JMenuItem("Rebuild Symtab", KeyEvent.VK_G);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_dis = new JMenuItem("Use -----", KeyEvent.VK_M);
		mi.addActionListener(this);
		mu.add(mi);
		mb.add(mu);
		disHint();
		// done with Disas menu
		// Help is always last... far right.
		mu = new JMenu("Help");
		mi = new JMenuItem("About", KeyEvent.VK_T);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("Show Help", KeyEvent.VK_H);
		mi.addActionListener(this);
		mu.add(mi);
		mb.add(mu);
		// done with Help menu
		frame.setJMenuBar(mb);
		jobActive(false);
		// This is the main container of everything (exc. menus)
		JPanel pan = new JPanel();
		pan.setLayout(new BoxLayout(pan, BoxLayout.Y_AXIS));

		// TODO: get Properties...
		hilite = Color.yellow;
		float fz = (float)10.0;
		String fn = "Monospaced";
		clines = 24;
		dlines = 6;
		String s = props.getProperty("code_win");
		if (s != null) {
			clines = Integer.valueOf(s);
		}
		s = props.getProperty("dump_win");
		if (s != null) {
			dlines = Integer.valueOf(s);
		}
		s = props.getProperty("cursor_color");
		if (s != null) {
			hilite = new Color(Integer.valueOf(s, 16));
		}
		s = props.getProperty("font_name");
		if (s != null) {
			fn = s;
		}
		s = props.getProperty("font_size");
		if (s != null) {
			fz = Float.valueOf(s);
		}
		font = new Font(fn, Font.PLAIN, (int)fz);
		liter = hilite.darker();

		font2 = new Font("Sans-serif", Font.PLAIN, 10);
		dest = new JTextField();
		dest.setPreferredSize(new Dimension(50, 20));
		dest.setEditable(true);
		dest.setEnabled(false);
		dest.setFont(font2);
		dest.addActionListener(this);
		stat = new JLabel();
		stat.setPreferredSize(new Dimension(400, 20));
		stat.setFont(font2);
		JLabel lb = new JLabel("A(ddr):");
		lb.setFont(font2);
		JPanel pn = new JPanel();
		pn.setLayout(new BoxLayout(pn, BoxLayout.X_AXIS));
		pn.add(lb);
		pn.add(dest);
		pn.add(stat);
		pan.add(pn);

		code = new DZCodePane(this);
		code.setFont(font);
		setupFont();	// needs 'code' JPanel
		code.setPreferredSize(new Dimension(_fw * ln_width + 2 * bd_width,
						_fh * clines + 2 * bd_width));
		dump = new DZDumpPane(this);
		dump.setFont(font);
		dump.setPreferredSize(new Dimension(_fw * ln_width + 2 * bd_width,
						_fh * dlines + 2 * bd_width));
		pan.add(code);
		pan.add(dump);
		frame.add(pan);
		// done setup on frame...
		frame.pack();
		frame.setVisible(true);

		src_pan = new JPanel();
		src_pan.setLayout(new BoxLayout(src_pan, BoxLayout.Y_AXIS));
		src_pat = new JTextField();
		src_pat.setPreferredSize(new Dimension(100, 20));
		src_pat.setEditable(true);
		src_pan.add(src_pat);

		err_pan = new JPanel();
		err_pan.setLayout(new BoxLayout(err_pan, BoxLayout.Y_AXIS));
		// TODO: need better handling, don't require focus in err_txt/pan.
		err_pan.addKeyListener(this);
		err_lbl = new JLabel();
		err_txt = new JEditorPane();
		err_txt.setEditable(false);
		// TODO: font
		JScrollPane scroll = new JScrollPane(err_txt);
		scroll.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED);
		scroll.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		scroll.setPreferredSize(new Dimension(300, 200));
		err_pan.add(err_lbl);
		err_pan.add(scroll);

		if (fi != null) {
			// Assume this means commandline... stdin/out/err...
			try {
				newJob(fi);
			} catch (Exception ee) {
				ee.printStackTrace();
				System.exit(1);
			}
		} else {
			comFile = new File(System.getProperty("user.dir"));
		}
	}

	private void jobActive(boolean act) {
		mi_ld.setEnabled(act);
		mi_sav.setEnabled(act);
		mi_asm.setEnabled(act);
		mi_prn.setEnabled(act);
		mi_cls.setEnabled(act);
		mi_sav.setEnabled(act);
	}

	private void disHint() {
		if (dis instanceof Z80DisassemblerMAC80) {
			mi_dis.setText("Use Zilog");
		} else {
			mi_dis.setText("Use MAC80");
		}
	}

	private void newJob(File com) throws Exception {
		jobActive(false);
		InputStream f = new FileInputStream(com);
		obj = new byte[f.available()];
		brk = new byte[f.available()];
		rdx = new byte[f.available()];
		sty = new byte[f.available()];
		len = new byte[f.available()];
		f.read(obj);
		f.close();
		comFile = com;
		statBase = String.format("Work: %s", com.getName());
		stat.setText(statBase);
		base = 0x0100;
		end = base + obj.length;
		symtab.clear();
		resetBreaks(base, true);
		basePath = com.getAbsolutePath();
		baseName = com.getName();
		if (baseName.matches(".*\\.COM")) {
			basePath = basePath.substring(0, basePath.length() - 4);
			baseName = baseName.substring(0, baseName.length() - 4);
			dzExt = ".DZ";
			asmExt = ".ASM";
			prnExt = ".PRN";
		} else {
			if (baseName.matches(".*\\.com")) {
				basePath = basePath.substring(0, basePath.length() - 4);
				baseName = baseName.substring(0, baseName.length() - 4);
			}
			dzExt = ".dz";
			asmExt = ".asm";
			prnExt = ".prn";
		}
		// TODO: ignore case, only remove tail.
		File dz = new File(basePath + dzExt);
		if (dz.exists()) {
			loadDZ(dz);	// resets statBase...
		}
		jobActive(true);
		setCodeWin(base);
		setDumpWin(base);
		setCursor(base);
	}

	private void setupFont() {
		_fm = code.getFontMetrics(font);
		_fa = _fm.getAscent();
		_fw = _fm.charWidth('M');
		_fw2 = _fw / 2;
		_fh = _fm.getHeight();
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

	private int getRadix(int a) {
		return rdx[a - base] & 0xff;
	}

	private int getStyle(int a) {
		return sty[a - base] & 0xff;
	}

	private boolean anyBrk(int a) {
		return (getBrk(a) != 0 || getStyle(a) != 0 || getRadix(a) != 0);
	}

	private void putBrk(int a, int b) {
		brk[a - base] = (byte)b;
	}

	private void putRadix(int a, int b) {
		rdx[a - base] = (byte)b;
	}

	private void putStyle(int a, int b) {
		sty[a - base] = (byte)b;
	}

	// Return -1 for invalid, 0 for "none", or break
	private int validBrk(int c) {
		if (c == ' ') return 0;
		if (allBreaks.indexOf(c) >= 0) return c;
		return -1;
	}

	// Return -1 for invalid, 0 for "none", or style
	private int validStyle(int c) {
		if (c == ' ') return 0;
		if (allStyles.indexOf(c) >= 0) return c;
		return -1;
	}

	// Return -1 for invalid, 0 for "none", or radix
	private int validRadix(int c) {
		if (c == ' ') return 0;
		if (allRadix.indexOf(c) >= 0) return c;
		return -1;
	}

	// returns last break seen
	private void setLen(int a, int n) {
		putLen(a++, n--);
		while (a < end && n > 0) {
			putLen(a++, 0);
			--n;
		}
	}

	private int lastBrk(int a, int n) {
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

	private int lastStyle(int a, int n) {
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

	private int lastRadix(int a, int n) {
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

	private int lenTo(int a, int c) {
		// TODO: some max length...
		int x = a;
		while (x < end && read(x++) != c);
		return x - a;
	}

	private int lenToBit7(int a) {
		// TODO: some max length...
		int x = a;
		while (x < end && (read(x++) & 0x80) == 0);
		return x - a;
	}

	// Setup/rescan breaks and lengths...
	// stop at next break unless 'all'.
	private void resetBreaks(int a, boolean all) {
		int n;
		int b, s, r;
		int x = a;
		while (!all && x > base && getLen(x) == 0) --x;
		int bk = activeBreak(x);
		if (bk == 0) bk = 'I';
		int st = activeStyle(x);
		if (st == 0) st = 'M';
		int rx = activeRadix(x);
		if (rx == 0) rx = 'H';
		while (x < end) {
			if (!all && x > a && anyBrk(x)) break;
			b = getBrk(x);
			s = getStyle(x);
			r = getRadix(x);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			switch (bk) {
			case 'I':
				n = dis.disas(x).len;
				break;
			case 'B':
			case 'C':
			case 'U':
				n = 1;
				while (n < 16 && x + n < end && !anyBrk(x + n)) ++n;
				break;
			case 'L':
			case 'W':
			case 'X':
			case 'R':
				n = 2;
				break;
			case 'T':
				// TODO: interrupt at next break (how?)
				n = 3;
				break;
			case 'Q':
				// TODO: interrupt at next break (how?)
				n = 4;
				break;
			case 'S':
				n = 1;
				while (x + n < end && !anyBrk(x + n)) ++n;
				break;
			case '$':
				n = lenTo(x, '$');
				break;
			case '0':
				n = lenTo(x, 0);
				break;
			case '7':
				n = lenToBit7(x);
				break;
			default:
				n = 1;
				break;
			}
			// honor any breaks we skipped over...
			setLen(x, n);
			b = lastBrk(x, n);
			s = lastStyle(x, n);
			r = lastRadix(x, n);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			x += n;
		}
	}

	private int oneBack(int a) {
		if (a > end) a = end;
		if (a < base) a = base;
		while (a - 1 >= base) {
			--a;
			if (getLen(a) > 0) break;
		}
		return a;
	}

	private void setCursor(int c) {
		cursor = c;
		cur_len = getLen(c);
		if (cur_len == 0) cur_len = 1;
		code.repaint();
		dump.repaint();
	}

	private void setCodeWin(int a) {
		int e = a;
		for (int x = 0; e < end && x < clines; ++x) {
			e += getLen(e);
		}
		cwin = a;
		cend = e;
	}

	private void shiftUp() {
		int c = oneBack(cwin);
		if (c == cwin) { // no change
			return;
		}
		setCodeWin(c);
		c = oneBack(cursor);
		if (c < dwin) {
			setDumpWin(c & ~0x0f);
		}
		setCursor(c);
	}

	private void shiftDown() {
		if (cend >= end) { // no change
			return;
		}
		int c = cwin + getLen(cwin);
		setCodeWin(c);
		c = cursor + cur_len;
		if (c + getLen(c) > dend) {
			setDumpWin(dend - 16);
		}
		setCursor(c);
	}

	private void scrollUp() {
		setCodeWin(cwin + getLen(cwin));
	}

	private void lineDown() {
		int c = cursor + cur_len;
		if (c >= end) return;
		if (c >= cend) {
			scrollUp();
		}
		if (c + getLen(c) > dend) {
			setDumpWin(dend - 16);
		}
		setCursor(c);
	}

	private void lineUp() {
		int c = oneBack(cursor);
		if (c < cwin) {
			setCodeWin(c);
		}
		if (c < dwin) {
			setDumpWin(c & ~0x0f);
		}
		setCursor(c);
	}

	private void byteUp() {
		int c = cursor - 1;
		if (c < base) return;
		goAdr(c);
	}

	private void byteDown() {
		int c = cursor + 1;
		if (c >= end) return;
		goAdr(c);
	}

	private void pageDown() {
		int c = oneBack(cend);
		if (c == cursor) return;
		setCodeWin(c);
		if (c < dwin) {
			setDumpWin(c & ~0x0f);
		} else if (c >= dend) {
			setDumpWin(dend - 16);	// enough?
		}
		setCursor(c);
	}

	private void pageUp() {
		int c = cwin;
		int x = clines - 1;
		while (x > 0 && c > base) {
			c = oneBack(c);
			--x;
		}
		setCodeWin(c);
		if (c < dwin) {
			setDumpWin(c & ~0x0f);
		} else if (c >= dend) {
			setDumpWin(dend - 16);
		}
		setCursor(c);
	}

	private void goAdr(int a) {
		int c = a;
		while (a > base && getLen(a) == 0) --a;
		setCodeWin(a);
		setDumpWin(a & ~0x0f);
		setCursor(c);
	}

	private void setDumpWin(int a) {
		// TODO: implement
		dwin = a;
		dend = a + 16 * dlines;
	}

	// returns address of first break before or at address 'a'
	private int activeBreak(int a) {
		int bk = 0;
		while (a > base && (bk = getBrk(a)) == 0) --a;
		return bk;
	}

	// returns address of first radix before or at address 'a'
	private int activeRadix(int a) {
		int bk = 0;
		while (a > base && (bk = getRadix(a)) == 0) --a;
		return bk;
	}

	// returns address of first style before or at address 'a'
	private int activeStyle(int a) {
		int bk = 0;
		while (a > base && (bk = getStyle(a)) == 0) --a;
		return bk;
	}

	private String lookup(int a) {
		if (symtab.containsKey(a)) {
			return symtab.get(a);
		}
		return null;
	}

	private void putsym(int a, String l) {
		if (symtab.containsKey(a)) {
			symtab.remove(a);
		}
		symtab.put(a, l);
	}

	private String mksym(int a) {
		String l = lookup(a);
		if (l != null) {
			return l;
		}
		l = String.format("L%04x", a);
		putsym(a, l);
		return l;
	}

	private void clearSymtab() {
		symtab.clear();
	}

	// TODO: when to auto-create symbols?
	private void symLine(int a, int n, int bk) {
		Z80Dissed d;
		int z;
		switch (bk) {
		case 'I':
			// assert: n == dis.intrLen()
			d = dis.disas(a);
			if (d.addr >= 0) {
				mksym(d.addr);
			}
			break;
		case 'L':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			mksym(z);
			break;
		case 'R':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			z += a;
			z &= 0xffff;
			mksym(z);
			break;
		}
	}

	private String fmtNum(int n, int rdx) {
		if (rdx == 'H') {
			String s = Integer.toHexString(n);
			if (!Character.isDigit(s.charAt(0))) s = '0' + s;
			if (s.length() > 1) s += 'h';
			return s;
		} else if (rdx == '2') {
			// TODO: only for bytes...
			// TODO: pad to 8 bits...
			return Integer.toBinaryString(n) + 'b';
		}
		// } else if (rdx == 'D') {
		return Integer.toString(n);
	}

	// TODO: make this usable from asmString()...
	private String asmChar(int e, int rdx) {
		if (e < ' ' || e > '~') {
			return fmtNum(e, rdx);
		} else {
			return String.format("'%c'", (char)e);
		}
	}

	private String asmString(int a, int n, int brk, int rdx) {
		String s = "";
		boolean q = false;
		boolean bit7 = (brk == '7');
		// TODO: honor rdx H,D,2... and style M,N
		int c;
		int e;
		while (n > 0) {
			c = read(a);
			if (bit7 && n == 1) {
				e = (c & 0x7f);
			} else {
				e = c;
			}
			if (e < ' ' || e > '~') {
				if (q) { s += '\''; q = false; }
				if (s.length() > 0) s += ',';
				s += fmtNum(c, rdx);
			} else {
				if (!q) {
					if (s.length() > 0) s += ',';
					s += '\'';
					q = true;
				}
				s += (char)e;
				if (e == '\'') s += (char)e;
				if (bit7 && n == 1 && (c & 0x80) != 0) {
					s += "'+80h";
					q = false;
				}
			}
			++a;
			--n;
		}
		if (q) s += "'";
		return s;
	}

	// TODO: when to auto-create symbols?
	private String disMulti(Z80Dissed d, String sep) {
		if (d.addr < 0) {
			if (d.fmt == null) {
				return d.op;
			} else if (sep == null) {
				return String.format("%-8s%s", d.op, d.fmt);
			} else {
				return d.op + sep + d.fmt;
			}
		} else if (sep == null) {
			return String.format("%-8s%s", d.op,
				String.format(d.fmt, mksym(d.addr)));
		} else {
			return d.op + sep +
				String.format(d.fmt, mksym(d.addr));
		}
	}

	private void disPseudo(int a, int n, int bk, int st, int rx,
						Vector<Z80Dissed> zd) {
		Z80Dissed d = new Z80Dissed();
		int y;
		int z;
		String s;
		switch (bk) {
		case 'L':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			d.op = "dw";
			d.fmt = "%s";
			d.addr = z;
			d.type = Z80Dissed.JMP; // good enough?
			break;
		case 'W':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			d.op = "dw";
			d.fmt = fmtNum(z, rx);
			break;
		case 'X':
			// assert: n == 2
			z = read(a + 1) | (read(a) << 8);
			d.op = "dw";
			d.fmt = fmtNum(z, rx);
			break;
		case 'R':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			z += a;
			z &= 0xffff;
			d.op = "dw";
			d.fmt = "%s-$";
			d.addr = z;
			d.type = Z80Dissed.JMP; // good enough?
			break;
		case 'T':
//System.err.format("T: bk='%c' st='%c' rx='%c'\n", bk, st, rx);
			// assert: n == 3
			y = read(a);
			z = read(a + 1) | (read(a + 2) << 8);
			d.op = "db";
			if (st == 'M') {
				d.fmt = asmChar(y, rx);
			} else {
				d.fmt = fmtNum(y, rx);
			}
			zd.add(d);
			d = new Z80Dissed();
			d.op = "dw";
			d.fmt = "%s";
			d.addr = z;
			d.type = Z80Dissed.JMP; // good enough?
			break;
		case 'Q':
			// assert: n == 4
			y = read(a) | (read(a + 1) << 8);
			z = read(a + 2) | (read(a + 3) << 8);
			d.op = "dw";
			d.fmt = fmtNum(y, rx);
			zd.add(d);
			d = new Z80Dissed();
			d.op = "dw";
			d.fmt = "%s";
			d.addr = z;
			d.type = Z80Dissed.JMP; // good enough?
			break;
		case 'S':
			d.op = "ds";
			d.fmt = Integer.toString(n);
			break;
		case 'B':
		case 'C':
		case 'U':
			d.op = "db";
			if (st == 'M') { // "messages"... strings
				d.fmt = asmString(a, n, bk, rx);
			} else {
				s = "";
				for (z = 0; z < n; ++z) {
					if (z != 0) s += ',';
					s += fmtNum(read(a++), rx);
				}
				d.fmt = s;
			}
			break;
		case '0': // assert read(a + n - 1) == 0
		case '$': // assert read(a + n - 1) == '$'
		case '7': // assert read(a + n - 1) & 0x80 == 0x80
			// TODO: '7' comment showing last char?
			d.op = "db";
			d.fmt = asmString(a, n, bk, rx);
			break;
		default:
			d.op = "?";
			d.fmt = String.format("'%c'", (char)bk);
			break;
		}
		zd.add(d);
	}

	private String disLine(int a, int n, int bk, int st, int rx) {
		zdv.clear();
		if (bk == 'I') {
			// assert: n == dis.instrLen()
			zdv.add(dis.disas(a));
		} else {
			disPseudo(a, n, bk, st, rx, zdv);
		}
		if (zdv.size() > 1) {
			String s = "";
			int x = 0;
			for (Z80Dissed d : zdv) {
				if (x++ > 0) s += " ! ";
				s += disMulti(d, " ");
			}
			return s;
		} else {
			return disMulti(zdv.get(0), null);
		}
	}

	private String disLineTab(int a, int n, int bk, int st, int rx) {
		zdv.clear();
		if (bk == 'I') {
			// assert: n == dis.instrLen()
			zdv.add(dis.disas(a));
		} else {
			disPseudo(a, n, bk, st, rx, zdv);
		}
		if (zdv.size() > 1) {
			String s = "";
			int x = 0;
			for (Z80Dissed d : zdv) {
				if (x++ > 0) s += " ! ";
				s += disMulti(d, " ");
			}
			return s;
		} else {
			return disMulti(zdv.get(0), "\t");
		}
	}

	public void paintCode(Graphics2D g2d) {
		if (cwin < base) return;
		int a = cwin;
		int x = bd_width;
		int y = _fa + bd_width;
		String t;
		int b, s, r;
		int z;
		int n;
		int bk = activeBreak(a);
		if (bk == 0) bk = 'I';
		int st = activeStyle(a);
		if (st == 0) st = 'M';
		int rx = activeRadix(a);
		if (rx == 0) rx = 'H';
		for (int l = 0; l < clines; ++l) {
			b = getBrk(a);
			s = getStyle(a);
			r = getRadix(a);
			if (b != 0) bk = b; else b = ' ';
			if (s != 0) st = s; else s = ' ';
			if (r != 0) rx = r; else r = ' ';
			t = String.format("%c%c%c %04x ", (char)b, (char)s, (char)r, a);
			n = getLen(a);
			if (n == 0) n = 1;
			if (cursor >= a && cursor < a + n) {
				if (a == cursor) {
					g2d.setColor(hilite);
				} else {
					g2d.setColor(liter);
				}
				g2d.fillRect(x, y - _fa, ln_width * _fw, _fh);
				g2d.setColor(code.getForeground());
			}
			for (z = 0; z < 5; ++z) {
				if (z < n) {
					t += String.format("%02x", read(a + z));
				} else {
					t += "  ";
				}
			}
			if (z < n) {
				t += '+';
			} else {
				t += ' ';
			}
			String lbl = lookup(a);
			if (lbl != null) {
				t += String.format("%-8s", lbl + ':');
			} else {
				t += "        ";
			}
			t += disLine(a, n, bk, st, rx);
			g2d.drawString(t, x, y);
			y += _fh;
			b = lastBrk(a, n);
			s = lastStyle(a, n);
			r = lastRadix(a, n);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			a += n;
		}
	}

	private void paintHighlight(Graphics2D g2d, int a, int x, int y, int n) {
		if (a < cursor || a >= cursor + cur_len) {
			return;
		}
		g2d.setColor(hilite);
		g2d.fillRect(x, y, n * _fw, _fh);
		g2d.setColor(code.getForeground());
	}

	public void paintDump(Graphics2D g2d) {
		if (dwin < base) return;
		int a = dwin;	// TODO: diff range from code...
		String s;
		int x = bd_width;
		int y = _fa + bd_width;
		int c;
		for (int l = 0; l < dlines; ++l) {
			s = String.format("%04x ", a);
			for (int z = 0; z < 16; ++z) {
				paintHighlight(g2d, a + z, x + s.length() * _fw + _fw2, y - _fa, 3);
				if (a + z < end) {
					s += String.format(" %02x", read(a + z));
				} else {
					s += " --";
				}
			}
			s += "  ";
			for (int z = 0; z < 16; ++z) {
				paintHighlight(g2d, a + z, x + s.length() * _fw, y - _fa, 1);
				if (a + z < end) {
					c = read(a + z);
					if (c < ' ' || c > '~') c = '.';
					s += (char)c;
				} else {
					s += " ";
				}
			}
			g2d.drawString(s, x, y);
			y += _fh;
			a += 16;
		}
	}

	// Strip redundant breaks (radix, styles)
	private void generateDZ(File dz, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(dz);
		int bk = 0;
		int st = 0;
		int rx = 0;
		// TODO: decide whether to strip duplicates...
		for (int a = first; a < last; ++a) {
			String l = lookup(a);
			if (l != null) {
				// TODO: support non-auto names:
				// ps.format("L%04x %s\n", a, l);
				ps.format("%s\n", l);
			}
			String s = "";
			int b = getBrk(a);
			if (b != 0) { // skip dups: && b != bk) {
				s += (char)b;
				bk = b;
			} else s += " ";
			b = getStyle(a);
			if (b != 0) { // skip dups: && b != st) {
				s += (char)b;
				st = b;
			} else s += " ";
			b = getRadix(a);
			if (b != 0) { // skip dups: && b != rx) {
				s += (char)b;
				rx = b;
			} else s += " ";
			if (!s.equals("   ")) {
				ps.format("-%04x,%s\n", a, s);
			}
		}
		ps.close();
		statBase = String.format("Work: %s %s", comFile.getName(), dz.getName());
		stat.setText(statBase + " Saved");
	}

	private boolean processDZ(int c, String s) {
		int a;
		int bk = 0;
		int st = 0;
		int rx = 0;
		String[] ss;
		if (c == '-') {	// standard break: -AAAA,BSR
			ss = s.split(",");
			if (ss.length != 2) return false;
			try {
				a = Integer.valueOf(ss[0], 16);
			} catch (Exception ee) {
				return false; // provide ee.getString()?
			}
			// TODO: validate each char...
			if (ss[1].length() > 0) {
				// Special case, from orig "SA" command,
				// 'U' = Unknown break from analyzer.
				bk = ss[1].charAt(0);
				if (bk != 'U') {
					bk = validBrk(bk);
				}
			}
			if (ss[1].length() > 1) {
				st = validStyle(ss[1].charAt(1));
			}
			if (ss[1].length() > 2) {
				rx = validRadix(ss[1].charAt(2));
			}
			if (bk < 0 || st < 0 || rx < 0) {
				return false;
			}
			if (bk != 0) putBrk(a, bk);
			if (st != 0) putStyle(a, st);
			if (rx != 0) putRadix(a, rx);
		} else if (Character.isLetter(c)) { // symbol: XAAAA[ name]
			ss = s.split(" ");
			try {
				a = Integer.valueOf(ss[0], 16);
			} catch (Exception ee) {
				return false; // provide ee.getString()?
			}
			if (ss.length > 1) {
				putsym(a, ss[1]);
			} else {
				putsym(a, (char)c + ss[0]);
			}
		}
		return true;
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
		int c;
		int e = 0;
		int l = 0;
		String es = "";
		while ((s = lin.readLine()) != null) {
			++l;
			if (s.length() == 0) continue;
			c = s.charAt(0);
			if (c == 0x1a) break;	// CP/M EOF (Ctrl-Z)
			if (!processDZ(c, s.substring(1))) {
				es += String.format("%d: Unrecognized DZ line \"%s\"\n",
									l, s);
				++e;
			}
		}
		lin.close();
		if (e > 0) {
			err_txt.setText(es);
			err_txt.setCaretPosition(0);
			err_lbl.setText(String.format("Found %d errors out of %d lines", e, l));
			JOptionPane.showMessageDialog(frame, err_pan, "Load DZ",
						JOptionPane.WARNING_MESSAGE);
			// TODO: save to file?
		}
		resetBreaks(base, true);
		setCursor(base);
		statBase = String.format("Work: %s %s", comFile.getName(), dz.getName());
		stat.setText(statBase);
	}

	// TODO: address range?
	private void regenSymtab() {
		int first = base;
		int last = end;
		int b;
		int n;
		clearSymtab();	// optional?
		int bk = activeBreak(first);
		for (int a = first; a < last;) {
			b = getBrk(a);
			if (b != 0) bk = b;
			n = getLen(a);
			if (n == 0) n = 1;
			symLine(a, n, bk);
			++a;	// already got this break, if any
			--n;	//
			while (n > 0) {
				b = getBrk(a++);
				if (b != 0) bk = b;
				--n;
			}
		}
	}

	private void generateASM(File asm, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(asm);
		String l;
		int b, s, r;
		int z;
		int n;
		int bk = activeBreak(first);
		if (bk == 0) bk = 'I';
		int st = activeStyle(first);
		if (st == 0) st = 'M';
		int rx = activeRadix(first);
		if (rx == 0) rx = 'H';
		for (int a = first; a < last;) {
			b = getBrk(a);
			s = getStyle(a);
			r = getRadix(a);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			l = lookup(a);
			if (l != null) ps.format("%s:", l);
			//	if (l.length() > 7) ps.format("\n");
			n = getLen(a);
			if (n == 0) n = 1;
			ps.format("\t");
			ps.format(disLineTab(a, n, bk, st, rx));
			// TODO: optional: (also, more tabs as needed)
			ps.format("\t;; %04x:", a);
			for (z = 0; z < 4; ++z) {
				if (z < n) {
					ps.format(" %02x", read(a + z));
				} else {
					ps.format("   ");
				}
			}
			ps.format("\n");
			b = lastBrk(a, n);
			s = lastStyle(a, n);
			r = lastRadix(a, n);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			a += n;
		}
		ps.close();
		stat.setText(statBase + " ASM saved");
	}

	private void generatePRN(File prn, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(prn);
		int b, s, r;
		int z;
		int n;
		int bk = activeBreak(first);
		if (bk == 0) bk = 'I';
		int st = activeStyle(first);
		if (st == 0) st = 'M';
		int rx = activeRadix(first);
		if (rx == 0) rx = 'H';
		for (int a = first; a < last;) {
			b = getBrk(a);
			s = getStyle(a);
			r = getRadix(a);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			ps.format("%04x ", a);
			n = getLen(a);
			if (n == 0) n = 1;
			for (z = 0; z < 5; ++z) {
				if (z < n) {
					ps.format("%02x", read(a + z));
				} else {
					ps.format("  ");
				}
			}
			if (z < n) {
				ps.format("+ ");
			} else {
				ps.format("  ");
			}
			// TODO: need label...
			ps.format(disLine(a, n, bk, st, rx));
			ps.format("\n");
			b = lastBrk(a, n);
			s = lastStyle(a, n);
			r = lastRadix(a, n);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			a += n;
		}
		ps.close();
		stat.setText(statBase + " PRN saved");
	}

	// Search for byte pattern.
	private int search(int start, int stop, byte[] val, boolean wrap) {
		int a = start;
		int e = stop;
		if (e < 0) e = start;
		if (a + val.length >= end) {
			if (!wrap) return -1;
			a = base;
		}
		while (true) {
			int x = 0;
			for (; x < val.length && (val[x] & 0xff) == read(a + x); ++x);
			if (x == val.length) {
				return a;
			}
			++a;
			if (a >= end) {
				if (!wrap) break;
				a = base;
			}
			if (a == e) break;
		}
		// not found
		return -1;
	}

	private void menuAction(JMenuItem m) {
		int key = m.getMnemonic();
		if (key == KeyEvent.VK_Q) {
			System.exit(1);
		}
		if (key == KeyEvent.VK_P) {
			File prn = new File(basePath + prnExt);
			try {
				generatePRN(prn, base, end);
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Generate PRN",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_A) {
			File asm = new File(basePath + asmExt);
			try {
				generateASM(asm, base, end);
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Generate ASM",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_S) {
			// TODO: pick file? "append" option? backup existing?
			File dz = new File(basePath + dzExt);
			try {
				generateDZ(dz, base, end);
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Save DZ",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_L) {
			SuffFileChooser sfc = new SuffFileChooser("DZ file",
				new String[]{ "dz" },
				new String[]{ "DZ file" },
				comFile, null);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			try {
				loadDZ(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load DZ",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_G) {
			regenSymtab();
			return;
		}
		if (key == KeyEvent.VK_M) {
			// switch mnemonics
			if (dis instanceof Z80DisassemblerMAC80) {
				dis = new Z80DisassemblerZilog(this);
			} else {
				dis = new Z80DisassemblerMAC80(this);
			}
			disHint();
			code.repaint();
			return;
		}
		if (key == KeyEvent.VK_N) {
			// new job (disassembly)
			SuffFileChooser sfc = new SuffFileChooser("COM file",
				new String[]{ "com" },
				new String[]{ "COM file" },
				comFile, null);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			try {
				newJob(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load COM",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_C) {
			// close current
			// TODO: auto-save?
			cwin = -1;
			dwin = -1;
			base = end = 0;
			// TODO: discard obj[], brk[], len[] ?
			// TODO: symtab.clear()?
			return;
		}
		if (key == KeyEvent.VK_T) {
			java.net.URL url = this.getClass().getResource("docs/About.html");
			try {
				JEditorPane about = new JEditorPane(url);
				about.setEditable(false);
				Dimension dim = new Dimension(350, 250);
				about.setPreferredSize(dim);
				JOptionPane.showMessageDialog(frame, about,
					"About: DazzleStar TNG",
					JOptionPane.PLAIN_MESSAGE);
			} catch (Exception ee) { }
			return;
		}
		if (key == KeyEvent.VK_H) {
			if (help != null) {
				help.setVisible(true);
			}
			return;
		}
	}

	private void buttonAction(JButton b) {
	}

	private boolean doBrkKey(int k) {
		if (k == ' ') {
			putBrk(cursor, 0);
			putStyle(cursor, 0);
			putRadix(cursor, 0);
		} else if (validBrk(k) > 0) {
			putBrk(cursor, k);
		} else if (validStyle(k) > 0) {
			putStyle(cursor, k);
		} else if (validRadix(k) > 0) {
			putRadix(cursor, k);
		} else {
			return false;
		}
		resetBreaks(cursor, false);
		cur_len = getLen(cursor);
		setCodeWin(cwin);
		code.repaint();
		dump.repaint();
		return true;
	}

	private void pushPrev(int adr) {
		// TODO: configure stack size limit
		prevs.push(adr);
		if (prevs.size() > 100) {
			prevs.setSize(100);
		}
	}

	private void follow() {
		int a = -1;
		int bk = activeBreak(cursor);
		if (bk == 0) bk = 'I';
		if (bk == 'I') {
			Z80Dissed d = dis.disas(cursor);
			a = d.addr;
		} else if (bk == 'L') {
			a = read(cursor) | (read(cursor + 1) << 8);
		} else if (bk == 'R') {
			a = read(cursor) | (read(cursor + 1) << 8);
			a += cursor;
			a &= 0xffff;
		}
		if (a < base || a >= end) return;
		pushPrev(cursor);
		goAdr(a);
	}

	private void keyAlted(int k) {
		if (k == KeyEvent.VK_HOME) {
			goAdr(cursor);
		}
	}

	private void keyShifted(int k) {
		if (k == KeyEvent.VK_HOME) {
			goAdr(base);
		} else if (k == KeyEvent.VK_END) {
			int c = end;
			int x = clines;
			while (x > 0 && c > base) {
				c = oneBack(c);
				--x;
			}
			goAdr(c);
		} else if (k == KeyEvent.VK_DOWN || k == KeyEvent.VK_KP_DOWN) {
			shiftDown();
		} else if (k == KeyEvent.VK_UP || k == KeyEvent.VK_KP_UP) {
			shiftUp();
		}
	}

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() instanceof JMenuItem) {
			menuAction((JMenuItem)e.getSource());
		} else if (e.getSource() instanceof JButton) {
			buttonAction((JButton)e.getSource());
		} else if (e.getSource() instanceof JTextField) {
			frame.requestFocus();
			dest.setEnabled(false);
			if (dest.getText().length() == 0) return;
			int a = -1;
			try {
				a = Integer.valueOf(dest.getText(), 16);
			} catch (Exception ee) {}
			dest.setText("");
			if (a < base || a >= end) return;
			pushPrev(cursor);
			goAdr(a);
		}
	}

	private void errKey(int k, int m) {
		if (k == KeyEvent.VK_COPY) {
			StringSelection ss = new StringSelection(err_txt.getText());
			Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);
		}
	}

	public void keyTyped(KeyEvent e) {
		int c = Character.toUpperCase(e.getKeyChar());
		if (c == 'A') {
			dest.setEnabled(true);
			dest.requestFocus();
		} else if (c == 'F') {
			follow();
		} else if (c == 'V') {
			if (!prevs.empty()) {
				int a = prevs.pop();
				goAdr(a);
			}
		} else if (doBrkKey(c)) {
			return;
		} else {
			// more keys
		}
	}

	private void doSearch() {
		src_pat.setText("");
		int res = JOptionPane.showConfirmDialog(frame, src_pan,
					"Search Byte(s)",
					JOptionPane.OK_CANCEL_OPTION);
		if (res != JOptionPane.OK_OPTION) {
			return;
		}
		if (src_pat.getText().length() == 0) {
			return;
		}
		String[] ss = src_pat.getText().split("\\s");
		byte[] src = new byte[ss.length];
		try {
			for (int x = 0; x < ss.length; ++x) {
				src[x] = (byte)(int)Integer.valueOf(ss[x], 16);
			}
		} catch (Exception ee) {
			PopupFactory.warning(frame, "Search",
				ee.getMessage());
			return;
		}
		cur_val = src;
		cur_str = src_pat.getText();
		cur_adr = base;	// or cursor, or ...
		cur_beg = cur_adr;
		doSearchNext();
	}

	private void doSearchNext() {
		if (cur_val == null) {
			PopupFactory.warning(frame, "Search",
				"No previous search");
			return;
		}
		int a = search(cur_adr, cur_beg, cur_val, true);
		if (a < 0) {
			PopupFactory.inform(frame, "Search",
				"Not Found: " + cur_str);
			cur_adr = cur_beg;
			return;
		}
		cur_adr = a + 1;
		goAdr(a);
	}

	public void keyPressed(KeyEvent e) {
		int k = e.getKeyCode();
		int m = e.getModifiers();
		if (e.getSource() == err_pan) {
			errKey(k, m);
			return;
		}
		if ((m & InputEvent.SHIFT_MASK) != 0) {
			keyShifted(k);
		} else if ((m & InputEvent.ALT_MASK) != 0) {
			keyAlted(k);
		} else if (k == KeyEvent.VK_DOWN || k == KeyEvent.VK_KP_DOWN) {
			lineDown();
		} else if (k == KeyEvent.VK_UP || k == KeyEvent.VK_KP_UP) {
			lineUp();
		} else if (k == KeyEvent.VK_LEFT || k == KeyEvent.VK_KP_LEFT) {
			byteUp();
		} else if (k == KeyEvent.VK_RIGHT || k == KeyEvent.VK_KP_RIGHT) {
			byteDown();
		} else if (k == KeyEvent.VK_PAGE_DOWN) {
			pageDown();
		} else if (k == KeyEvent.VK_PAGE_UP) {
			pageUp();
		} else if (k == KeyEvent.VK_HOME) {
			setCursor(cwin);
		} else if (k == KeyEvent.VK_END) {
			int c = oneBack(cend);
			setCursor(c);
		} else if (k == KeyEvent.VK_F1) {
			doSearch();
		} else if (k == KeyEvent.VK_F2) {
			doSearchNext();
		}
	}
	public void keyReleased(KeyEvent e) {}

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
