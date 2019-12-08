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

// TODO:
//	* cur_len is not getting update after analyze()...
//	* cend not properly (re)computed sometimes.
//	* do not pop-up results for "Scan from here", use status field...
//	* make "Scan from here" a function key?
//	* key to align cursor to nearest instruction/line?

public class DazzleStar implements DZCodePainter, DZDumpPainter, Memory,
			KeyListener, ActionListener {
	static final String allBreaks = "BILWXRC07$TQS";
	static final String allStyles = "MN";
	static final String allRadix = "HD2";
	static final String BINZERO = "00000000";

	static DazzleStar _us;
	ProgramFile prog;
	File comFile;
	String baseName;
	String basePath;
	String dzExt;
	String hintExt;
	String asmExt;
	String prnExt;
	boolean uppercase;
	byte[] brk;	// breaks
	byte[] rdx;	// radix
	byte[] sty;	// styles
	byte[] vst;	// visits and orphans
	byte[] len;	// length of "instructions" (lines)
	Map<Integer,String> cmnts;
	Stack<Integer> prevs;
	Map<Integer,Integer> calls;	// registered inline-param functs
	Vector<Integer> codes;	// pre-register code sections/entries
	Z80Disassembler dis;
	Font font2;
	JMenuItem mi_ld;
	JMenuItem mi_shn;
	JMenuItem mi_hn;
	JMenuItem mi_sav;
	JMenuItem mi_asm;
	JMenuItem mi_prn;
	JMenuItem mi_cls;
	JMenuItem mi_hnt;
	JMenuItem mi_sch;
	JMenuItem mi_sym;
	JMenuItem mi_dis;
	GenericHelp help;
	JFrame frame;
	DZCodePane code;
	DZDumpPane dump;
	Font font;
	JTextField dest;
	JLabel statCom;
	JLabel statDZ;
	JLabel statHint;
	JLabel statSeg;
	JLabel stat5;
	JLabel stat6;
	JLabel stat7;

	JPanel com_pan;
	JTextField com_org;
	JPanel src_pan;
	JTextField src_pat;
	JRadioButton src_hex;
	JRadioButton src_txt;
	JRadioButton src_beg;
	JRadioButton src_cur;
	JCheckBox src_wrp;
	JPanel cmt_pan;
	JTextField cmt_txt;
	JPanel hnt_pan;
	JTextField hnt_txt;
	JPanel err_pan;
	JEditorPane err_txt;
	JLabel err_lbl;
	String statBase;
	Color hilite;
	Color liter;
	int clines;
	int dlines;

	// current search criteria
	byte[] cur_val;
	String cur_str;
	boolean cur_wrp;

	Segment[] segs;	// all segments in program
	int seg;	// current segment index
	int nseg;	// number of segments
	Segment sg;	// current Segment

	FontMetrics _fm;
	int _fa;
	int _fw;
	int _fw2;
	int _fh;
	int bd_width = 3; // some number
	int ln_width = 21 + 80; // data + asm

	Properties props = new Properties();
	Vector<Z80Dissed> zdv = new Vector<Z80Dissed>();
	int dislen;

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
		String s = props.getProperty("disas");
		if (s != null && s.equalsIgnoreCase("ZILOG")) {
			dis = new Z80DisassemblerZilog(this);
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
		cmnts = new HashMap<Integer,String>();
		calls = new HashMap<Integer,Integer>();
		codes = new Vector<Integer>();
		prevs = new Stack<Integer>();
		frame = new JFrame("DazzleStar TNG");
		frame.getContentPane().setName("DazzleStar TNG");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // TODO: save!
		frame.addKeyListener(this);
		GridBagLayout gb = new GridBagLayout();
		GridBagConstraints gc = new GridBagConstraints();
		gc.fill = GridBagConstraints.NONE;
		gc.gridx = 0;
		gc.gridy = 0;
		gc.weightx = 0;
		gc.weighty = 0;
		gc.gridwidth = 1;
		gc.gridheight = 1;
		gc.anchor = GridBagConstraints.WEST;
		// This allows TAB to be sent
		frame.setFocusTraversalKeysEnabled(false);
		java.net.URL url = this.getClass().getResource("docs/dzhelp.html");
		if (url != null) {
			help = new GenericHelp(frame.getTitle() + " Help", url);
		}

		JMenuItem mi;
		JMenuBar mb = new JMenuBar();
		// File menu...
		JMenu mu = new JMenu("File");
		mu.setMnemonic(KeyEvent.VK_F);
		mu.add(newSubMenu());
		mi = mi_cls = new JMenuItem("Close", KeyEvent.VK_C);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_asm = new JMenuItem("Generate ASM", KeyEvent.VK_A);
		mi.addActionListener(this);
		mi.setDisplayedMnemonicIndex(9);
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
		mi = mi_shn = new JMenuItem("Save Hints (D)", KeyEvent.VK_D);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_hn = new JMenuItem("Load Hints (I)", KeyEvent.VK_I);
		mi.setDisplayedMnemonicIndex(12);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("Quit (no save)", KeyEvent.VK_Q);
		mi.addActionListener(this);
		mu.add(mi);
		mb.add(mu);
		// done with File menu
		mu = new JMenu("Disas");
		mu.setMnemonic(KeyEvent.VK_D);
		mi = new JMenuItem("Scan from here (Z)", KeyEvent.VK_Z);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_sch = new JMenuItem("Scan Hints (Y)", KeyEvent.VK_Y);
		mi.addActionListener(this);
		mi_sch.setEnabled(false);
		mu.add(mi);
		mi = new JMenuItem("Reset scan", KeyEvent.VK_R);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_hnt = new JMenuItem("Apply Hint (B)", KeyEvent.VK_B);
		mi.addActionListener(this);
		mi_hnt.setEnabled(false);
		mu.add(mi);
		mi = mi_sym = new JMenuItem("Rebuild Symtab (G)", KeyEvent.VK_G);
		mi.addActionListener(this);
		mu.add(mi);
		mi = mi_dis = new JMenuItem("Use ----- (M)", KeyEvent.VK_M);
		mi.addActionListener(this);
		mi.setDisplayedMnemonicIndex(11);
		mu.add(mi);
		mb.add(mu);
		disHint();
		// done with Disas menu
		// Help is always last... far right.
		mu = new JMenu("Help");
		mu.setMnemonic(KeyEvent.VK_H);
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
		pan.setLayout(gb);
		JPanel pn = new JPanel();
		pn.setPreferredSize(new Dimension(5, 5));
		gb.setConstraints(pn, gc);
		pan.add(pn);
		++gc.gridx;
		++gc.gridy;

		// TODO: get Properties...
		hilite = Color.yellow;
		float fz = (float)10.0;
		String fn = "Monospaced";
		clines = 24;
		dlines = 6;
		s = props.getProperty("code_win");
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
		liter = hilite.darker();
		s = props.getProperty("font_name");
		if (s != null) {
			fn = s;
		}
		s = props.getProperty("font_size");
		if (s != null) {
			fz = Float.valueOf(s);
		}
		font = new Font(fn, Font.PLAIN, (int)fz);
		Color fc = Color.black;
		s = props.getProperty("font_color");
		if (s != null) {
			fc = new Color(Integer.valueOf(s, 16));
		}
		Color bc = null; // default: don't set
		s = props.getProperty("background");
		if (s != null) {
			bc = new Color(Integer.valueOf(s, 16));
		}

		fz = (float)10.0;
		s = props.getProperty("status_font_size");
		if (s != null) {
			fz = Float.valueOf(s);
		}
		font2 = new Font("Sans-serif", Font.PLAIN, (int)fz);

		// setup early, for font metrics.
		code = new DZCodePane(this);
		code.setFont(font);
		code.setForeground(fc);
		if (bc != null) code.setBackground(bc);
		setupFont();	// needs 'code' JPanel

		dest = new JTextField();
		dest.setPreferredSize(new Dimension(50, (int)(fz + 4)));
		dest.setEditable(true);
		dest.setEnabled(false);
		dest.setFont(font2);
		dest.addActionListener(this);
		int w = (_fw * ln_width) / 2;
		statCom = new JLabel("Work:");
		statCom.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		statCom.setFont(font2);
		statDZ = new JLabel("DZ:");
		statDZ.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		statDZ.setFont(font2);
		statHint = new JLabel("Hint:");
		statHint.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		statHint.setFont(font2);
		statSeg = new JLabel("");
		statSeg.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		statSeg.setFont(font2);
		stat5 = new JLabel("");
		stat5.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		stat5.setFont(font2);
		stat6 = new JLabel("");
		stat6.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		stat6.setFont(font2);
		stat7 = new JLabel("");
		stat7.setPreferredSize(new Dimension(w, (int)(fz + 2)));
		stat7.setFont(font2);
		gb.setConstraints(statCom, gc);
		pan.add(statCom);
		++gc.gridx;
		gb.setConstraints(statSeg, gc);
		pan.add(statSeg);
		--gc.gridx;
		++gc.gridy;
		gb.setConstraints(statDZ, gc);
		pan.add(statDZ);
		++gc.gridx;
		gb.setConstraints(stat5, gc);
		pan.add(stat5);
		--gc.gridx;
		++gc.gridy;
		gb.setConstraints(statHint, gc);
		pan.add(statHint);
		++gc.gridx;
		gb.setConstraints(stat6, gc);
		pan.add(stat6);
		--gc.gridx;
		++gc.gridy;
		pn = new JPanel();
		JLabel lb = new JLabel("A(ddr):");
		lb.setFont(font2);
		pn.setLayout(new BoxLayout(pn, BoxLayout.X_AXIS));
		pn.add(lb);
		pn.add(dest);
		gb.setConstraints(pn, gc);
		pan.add(pn);
		++gc.gridx;
		gb.setConstraints(stat7, gc);
		pan.add(stat7);
		--gc.gridx;
		++gc.gridy;
		gc.gridwidth = 2;

		pn = new JPanel();
		pn.setPreferredSize(new Dimension(5, 5));
		gb.setConstraints(pn, gc);
		pan.add(pn);
		++gc.gridy;
		// 'code' setup early, for font metrics...
		code.setPreferredSize(new Dimension(_fw * ln_width + 2 * bd_width,
						_fh * clines + 2 * bd_width));
		gb.setConstraints(code, gc);
		pan.add(code);
		++gc.gridy;
		pn = new JPanel();
		pn.setPreferredSize(new Dimension(5, 5));
		gb.setConstraints(pn, gc);
		pan.add(pn);
		++gc.gridy;
		dump = new DZDumpPane(this);
		dump.setFont(font);
		dump.setForeground(fc);
		if (bc != null) dump.setBackground(bc);
		dump.setPreferredSize(new Dimension(_fw * ln_width + 2 * bd_width,
						_fh * dlines + 2 * bd_width));
		gb.setConstraints(dump, gc);
		pan.add(dump);
		++gc.gridy;
		frame.add(pan);

		gc.gridx += gc.gridwidth;
		gc.gridwidth = 1;
		pn = new JPanel();
		pn.setPreferredSize(new Dimension(5, 5));
		gb.setConstraints(pn, gc);
		pan.add(pn);
		// done setup on frame...
		frame.pack();
		frame.setVisible(true);

		gb = new GridBagLayout();
		com_pan = new JPanel();
		com_pan.setLayout(gb);
		gc.gridx = 0;
		gc.gridy = 0;
		com_org = new JTextField();
		com_org.setPreferredSize(new Dimension(50, 20));
		com_org.setEditable(true);
		lb = new JLabel("Org:");
		gb.setConstraints(lb, gc);
		com_pan.add(lb);
		++gc.gridy;
		gb.setConstraints(com_org, gc);
		com_pan.add(com_org);
		src_pan = new JPanel();
		src_pan.setLayout(new BoxLayout(src_pan, BoxLayout.Y_AXIS));
		src_pat = new JTextField();
		src_pat.setPreferredSize(new Dimension(100, 20));
		src_pat.setEditable(true);
		src_pan.add(src_pat);
		src_txt = new JRadioButton("Text");
		src_hex = new JRadioButton("Hex");
		ButtonGroup bg = new ButtonGroup();
		bg.add(src_hex);
		bg.add(src_txt);
		pan = new JPanel();
		pan.setLayout(new BoxLayout(pan, BoxLayout.X_AXIS));
		pan.add(src_hex);
		pan.add(src_txt);
		src_pan.add(pan);
		src_beg = new JRadioButton("Beginning");
		src_cur = new JRadioButton("Current");
		bg = new ButtonGroup();
		bg.add(src_beg);
		bg.add(src_cur);
		pan = new JPanel();
		pan.setLayout(new BoxLayout(pan, BoxLayout.X_AXIS));
		pan.add(new JLabel("From:"));
		pan.add(src_beg);
		pan.add(src_cur);
		src_pan.add(pan);
		src_wrp = new JCheckBox("Wrap");
		pan = new JPanel();
		pan.setLayout(new BoxLayout(pan, BoxLayout.X_AXIS));
		pan.add(new JLabel("At end:"));
		pan.add(src_wrp);
		src_pan.add(pan);
		// TODO: make these persistent or not?
		src_pat.setText("");
		src_hex.setSelected(true);
		src_beg.setSelected(true);
		src_wrp.setSelected(false);

		cmt_pan = new JPanel();
		cmt_pan.setLayout(new BoxLayout(cmt_pan, BoxLayout.Y_AXIS));
		cmt_txt = new JTextField();
		cmt_txt.setPreferredSize(new Dimension(300, 20));
		cmt_txt.setEditable(true);
		cmt_pan.add(new JLabel(" "));
		cmt_pan.add(cmt_txt);

		hnt_pan = new JPanel();
		hnt_pan.setLayout(new BoxLayout(hnt_pan, BoxLayout.Y_AXIS));
		hnt_txt = new JTextField();
		hnt_txt.setPreferredSize(new Dimension(300, 20));
		hnt_txt.setEditable(true);
		hnt_pan.add(new JLabel(" "));
		hnt_pan.add(hnt_txt);

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
			// TODO: allow org to be specified
			try {
				prog = guessByType(fi);
				newJob(fi);
			} catch (Exception ee) {
				ee.printStackTrace();
				System.exit(1);
			}
		} else {
			comFile = new File(System.getProperty("user.dir"));
		}
	}

	private ProgramFile guessByType(File fi) throws Exception {
		String t = fi.getName();
		int x = t.lastIndexOf('.');
		if (x > 0) {
			t = t.substring(x);
		} else {
			t = "";
		}
		if (t.equalsIgnoreCase(".PRL")) {
			return new PrlFile(fi);
		} else if (t.equalsIgnoreCase(".SPR")) {
			return new SprFile(fi);
		} else if (t.equalsIgnoreCase(".REL")) {
			return new RelFile(fi);
		} else {
			return new BinaryFile(fi, 0x0100);
		}
	}

	private JMenuItem newSubMenu() {
		JMenu mu = new JMenu("New");
		mu.setMnemonic(KeyEvent.VK_N);
		JMenuItem mi = new JMenuItem("Binary (.COM)", KeyEvent.VK_N);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("PRL File (V)", KeyEvent.VK_V);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("SPR File (W)", KeyEvent.VK_W);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("REL File (X)", KeyEvent.VK_X);
		mi.addActionListener(this);
		mi.setEnabled(false);	// TODO: implement and enable
		mu.add(mi);
		return mu;
	}

	private void jobActive(boolean act) {
		mi_ld.setEnabled(act);
		mi_hn.setEnabled(act);
		mi_hnt.setEnabled(act);
		mi_sav.setEnabled(act);
		mi_asm.setEnabled(act);
		mi_prn.setEnabled(act);
		mi_cls.setEnabled(act);
		mi_sav.setEnabled(act);
	}

	private void disHint() {
		if (dis instanceof Z80DisassemblerMAC80) {
			mi_dis.setText("Use Zilog (M)");
			mi_dis.setDisplayedMnemonicIndex(11);
		} else {
			mi_dis.setText("Use MAC80 (M)");
			mi_dis.setDisplayedMnemonicIndex(11);
		}
	}

	private void newJob(File com) throws Exception {
		comFile = com;
		statBase = String.format("Work: %s", com.getName());
		statCom.setText(statBase);
		nseg = prog.numSeg();
		segs = new Segment[nseg];
		for (int x = 0; x < nseg; ++x) {
			segs[x] = new Segment(prog, x);
			segs[x].cursor = segs[x].base;
		}
		setSeg(0);
		prevs.clear();
		calls.clear();
		codes.clear();
		mi_sch.setEnabled(false);
		cmnts.clear();
		basePath = com.getAbsolutePath();
		baseName = com.getName();
		uppercase = baseName.equals(baseName.toUpperCase());
		int x = baseName.lastIndexOf('.');
		if (x > 0) {
			String sfx = baseName.substring(x);
			// TODO: analyze suffix?
			baseName = baseName.substring(0, x);
			x = basePath.length() - sfx.length();
			basePath = basePath.substring(0, x);
		}
		setExts();
		prog.resetSymtab(); // unneccessary?
		File dz = new File(basePath + dzExt);
		if (dz.exists()) {
			loadDZ(dz, null);
		}
		dz = new File(basePath + hintExt);
		if (dz.exists()) {
			loadHints(dz);
		}
		int base = sg.base;
		resetBreaks(sg);
		setCodeWin(base);
		setDumpWin(base);
		setCursor(base);
		sg.init = true;
		jobActive(true);
	}

	private void setSeg(int g) {
		seg = g;
		sg = segs[g];
		if (nseg > 1) {
			statSeg.setText(String.format("Segment %d / %d (%s)",
				seg + 1, nseg, prog.segName(seg)));
		}
		if (!sg.init) {
			int base = sg.base;
			resetBreaks(sg);
			setCodeWin(base);
			setDumpWin(base);
			setCursor(base);
			sg.init = true;
		}
	}

	private void setupFont() {
		_fm = code.getFontMetrics(font);
		_fa = _fm.getAscent();
		_fw = _fm.charWidth('M');
		_fw2 = _fw / 2;
		_fh = _fm.getHeight();
	}

	private int nextOrphan(int a) {
		while (++a < sg.end) {
			if (sg.orphaned(a)) {
				return a;
			}
		}
		return -1;
	}

	private int nextUnknown(int a) {
		int n;
		// TODO: what criteria to look for?
		while (a < sg.end && !sg.visited(a)) {	// don't count current...
			n = sg.getLen(a);
			if (n == 0) n = 1;
			a += n;
		}
		while (a < sg.end && sg.visited(a)) {
			n = sg.getLen(a);
			if (n == 0) n = 1;
			a += n;
		}
		if (a < sg.end) {
			return a;
		}
		return -1;
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

	private int lenTo(Segment g, int a, int c, int rdx) {
		// TODO: some max length...
		// Must never return len 0
		inQ = false;
		boolean fmt = (rdx != 0);
		int col = 0;
		int b;
		int w;
		int x = a;
		while (x < g.end) {
			b = prog.read(g.idx, x++);
			if (fmt) {
				w = asmFmtOne(b, col, false, rdx).length();
				if (col + w > 60) {
					--x;
					break;
				}
				col += w;
			}
			if (b == c) break;
			if (fmt && x < g.end && (g.anyBrk(x) || prog.symbol(g.idx, x))) break;
		}
		return x - a;
	}

	private int lenToBit7(Segment g, int a, int rdx) {
		// TODO: some max length...
		// Must never return len 0
		boolean fmt = (rdx != 0);
		int col = 0;
		int b;
		int w;
		int x = a;
		while (x < g.end) {
			b = prog.read(g.idx, x++);
			if (fmt) {
				w = asmFmtOne(b, col, false, rdx).length();
				if (col + w > 60) {
					--x;
					break;
				}
				col += w;
			}
			if ((b & 0x80) != 0) break;
			if (fmt && x < g.end && (g.anyBrk(x) || prog.symbol(g.idx, x))) break;
		}
		return x - a;
	}

	private void resetBreaks() {
		for (int x = 0; x < nseg; ++x) {
			resetBreaks(segs[x]);
		}
	}

	private void resetBreaks(Segment g) {
		resetBreaks(g, g.base, true);
	}

	// Setup/rescan breaks and lengths...
	// stop at next break unless 'all'.
	// Basically, resets the len[] array based on new break(s).
	private void resetBreaks(Segment g, int a, boolean all) {
		Z80Dissed d;
		int n;
		int m;	// line wrap target
		int b, s, r;
		int x = a;
		while (!all && x > g.base && g.getLen(x) == 0) --x;
		int bk = g.activeBreak(x);
		if (bk == 0) bk = 'I';
		int st = g.activeStyle(x);
		if (st == 0) st = 'M';
		int rx = g.activeRadix(x);
		if (rx == 0) rx = 'H';
		while (x < g.end) {
			// TODO: need to extend to next radix if radix set...
			// TODO: need to extend to next style if style set...
			if (!all && x > a && g.anyBrk(x)) break;
			b = g.getBrk(x);
			s = g.getStyle(x);
			r = g.getRadix(x);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			g.resTerm(x);	// try and keep things clean(er)
			switch (bk) {
			case 'I':
				d = dis.disas(g.idx, x);
				n = d.len;
				if (d.type == Z80Dissed.JMP ||
						d.type == Z80Dissed.RET) {
					g.setTerm(x);
				}
				break;
			case 'B':
			case 'C':
			case 'U':
				n = asmStringLen(g, x, bk, rx);
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
				while (x + n < g.end && !g.anyBrk(x + n) &&
						!prog.symbol(g.idx, x + n)) ++n;
				break;
			case '$':
				n = lenTo(g, x, '$', rx);
				break;
			case '0':
				n = lenTo(g, x, 0, rx);
				break;
			case '7':
				n = lenToBit7(g, x, rx);
				break;
			default:
				n = 1;
				break;
			}
			g.setLen(x, n);
			// honor any breaks we skipped over...
			b = g.lastBrk(x, n);
			s = g.lastStyle(x, n);
			r = g.lastRadix(x, n);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			x += n;
		}
	}

	private void setCursor(int c) {
		sg.cursor = c;
		sg.cur_len = sg.getLen(c);
		if (sg.cur_len == 0) sg.cur_len = 1;
		code.repaint();
		dump.repaint();
	}

	private void setCodeWin(int a) {
		int e = a;
		for (int x = 0; e < sg.end && x < clines; ++x) {
			if (sg.terminal(e)) ++x;
			e += sg.getLen(e);
		}
		sg.cwin = a;
		sg.cend = e;
	}

	private void shiftUp() {
		int c = sg.oneBack(sg.cwin);
		if (c == sg.cwin) { // no change
			return;
		}
		setCodeWin(c);
		c = sg.oneBack(sg.cursor);
		if (c < sg.dwin) {
			setDumpWin(c & ~0x0f);
		}
		setCursor(c);
	}

	private void shiftDown() {
		if (sg.cend >= sg.end) { // no change
			return;
		}
		int c = sg.cwin + sg.getLen(sg.cwin);
		setCodeWin(c);
		c = sg.cursor + sg.cur_len;
		if (c + sg.getLen(c) > sg.dend) {
			setDumpWin(sg.dend - 16);
		}
		setCursor(c);
	}

	private void scrollUp() {
		setCodeWin(sg.cwin + sg.getLen(sg.cwin));
	}

	private void lineDown() {
		int c = sg.cursor + sg.cur_len;
		if (c >= sg.end) return;
		if (c >= sg.cend) {
			scrollUp(); // changes 'cend'
			if (c >= sg.cend) {
				scrollUp();
			}
		}
		if (c + sg.getLen(c) > sg.dend) {
			setDumpWin(sg.dend - 16);
		}
		setCursor(c);
	}

	private void lineUp() {
		int c = sg.oneBack(sg.cursor);
		if (c < sg.cwin) {
			setCodeWin(c);
		}
		if (c < sg.dwin) {
			setDumpWin(c & ~0x0f);
		}
		setCursor(c);
	}

	private void byteUp() {
		int c = sg.cursor - 1;
		if (c < sg.base) return;
		goAdr(c);
	}

	private void byteDown() {
		int c = sg.cursor + 1;
		if (c >= sg.end) return;
		goAdr(c);
	}

	private void pageDown() {
		int c = sg.oneBack(sg.cend);
		setCodeWin(c);
		if (c < sg.dwin) {
			setDumpWin(c & ~0x0f);
		} else if (c >= sg.dend) {
			setDumpWin(sg.dend - 16);	// enough?
		}
		setCursor(c);
	}

	private void pageUp() {
		int c = sg.cwin;
		int x = clines - 1;
		while (x > 0 && c > sg.base) {
			c = sg.oneBack(c);
			--x;
		}
		setCodeWin(c);
		if (c < sg.dwin) {
			setDumpWin(c & ~0x0f);
		} else if (c >= sg.dend) {
			setDumpWin(sg.dend - 16);
		}
		setCursor(c);
	}

	private void goAdr(int a) {
		goAdr(a, false);
	}

	private void goAdr(int a, boolean jump) {
		int c = a;
		while (a > sg.base && sg.getLen(a) == 0) --a;
		if (!jump && a >= sg.cwin && a < sg.cend) {
			// TODO: any action?
		} else {
			setCodeWin(a);
		}
		if (a >= sg.dwin && a < sg.dend) {
			// TODO: any action?
		} else {
			setDumpWin(sg.cwin & ~0x0f);
		}
		setCursor(c);
	}

	private void setDumpWin(int a) {
		sg.dwin = a;
		sg.dend = a + 16 * dlines;
	}

	private int callBreak(int addr, int n) {
		int bb = 'B';
		if (n > 0 && (n & ~0xff) != 0) {
			bb = (n & 0xff);
			// TODO: common code...
			switch (bb) {
			case 'L':
				n = 2;
				break;
			case '0':
				n = lenTo(sg, addr, 0, 0); // n >= 1
				break;
			case '$':
				n = lenTo(sg, addr, '$', 0); // n >= 1
				break;
			case '7':
				n = lenToBit7(sg, addr, 0); // n >= 1
				break;
			}
		}
		sg.putBrk(addr, bb);
		if (n == 0) {
			n = prog.read(sg.idx, addr) + 1;
		} else if (n < 0) {
			n = -n;
			if ((prog.read(sg.idx, addr) & 0x80) == 0) {
				++n;
			}
		}
		// handle long strings...
		int m = n;
		while (m > 16) {
			sg.setLen(addr, 16);
			m -= 16;
		}
		sg.setLen(addr, m);
		addr += n;
		sg.putBrk(addr, 'I');
		return n;
	}

	// TODO: detect bogus/nonsense instructions (derailings)
	// This (potentially) alters all segments.
	private void analyze(Segment g, int addr) {
		int bk;
		if (addr < g.base || addr >= g.end) return; // TODO: report this?
		bk = g.activeBreak(addr);
		//if (bk == 0) bk = 'I';
		while (addr >= g.base && addr < g.end) {
			g.adopt(addr);
			if (g.visited(addr)) {	// already been here...
				break;
			}
			g.visit(addr);
			Z80Dissed d = dis.disas(g.idx, addr);
			g.setLen(addr, d.len);
			if (bk != 'I') {
				bk = 'I';
				g.putBrk(addr, bk);	// adopt()s also
			}
			boolean k = g.constant(addr);
			if (d.type == Z80Dissed.JMP ||
					d.type == Z80Dissed.RET) {
				g.setTerm(addr);
			} else {
				g.resTerm(addr);
			}
			addr += d.len;
			if (d.addr < 0) {
				continue;
			}
			if (!k) prog.mksym(g.idx, d);
			if (d.type == Z80Dissed.LXI || d.type == Z80Dissed.LDI) {
				// can't make any assumptions
				continue;
			}
			if (d.type == Z80Dissed.CRET) {
				// ignore diversion
				continue;
			}
			if (d.type == Z80Dissed.RET) {
				// mark next address as potential orphan
				if (!g.visited(addr)) {
					g.orphan(addr);
				}
				break;
			}
			int f = prog.segAdr(g.idx, d);
			int x = prog.segOf(f);
			if (d.type == Z80Dissed.JMP) {
				// mark next address as potential orphan
				if (!g.visited(addr)) {
					g.orphan(addr);
				}
				addr = prog.adrOf(f);
				g = segs[x];
				bk = 0; // g.activeBreak(addr);
				//if (bk == 0) bk = 'I';
				continue;
			}
			// user must have pre-registered calls with inline parameters...
			if (d.type == Z80Dissed.CALL && calls.containsKey(f)) {
				// must be unconditional CALL if inline params...
				int n = callBreak(addr, calls.get(f));
				addr += n;
			}
			// Only CJMP, CALL left...
			analyze(segs[x], prog.adrOf(f));
		}
		// System.out.format("Break at %04x\n", addr);
	}

	private void analyze(Vector<Integer> exe) {
		for (int sa : exe) {
			int x = prog.segOf(sa);
			int pc = prog.adrOf(sa);
			Segment g = segs[x];
			g.putBrk(pc, 0);
			analyze(g, pc);
		}
	}

	// TODO: when to auto-create symbols?
	private Z80Dissed getDissed(Segment g, int a, int n, int bk) {
		Z80Dissed d;
		int z;
		if (bk == 'I') {
			d = dis.disas(g.idx, a);
		} else {
			d = new Z80Dissed();
			d.pc = a;
			switch (bk) {
			case 'L':
				// assert: n == 2
				d.addr = prog.read(g.idx, a) | (prog.read(g.idx, a + 1) << 8);
				break;
			case 'R':
				// assert: n == 2
				d.rel = true;
				z = prog.read(g.idx, a) | (prog.read(g.idx, a + 1) << 8);
				z += a;
				z &= 0xffff;
				d.addr = z;
				break;
			case 'T':
				// assert: n == 3
				d.off = 1;
				d.addr = prog.read(g.idx, a + 1) | (prog.read(g.idx, a + 2) << 8);
				break;
			case 'Q':
				// assert: n == 4
				d.off = 2;
				d.addr = prog.read(g.idx, a + 2) | (prog.read(g.idx, a + 3) << 8);
				break;
			default:
				break;	// d.addr == -1
			}
		}
		return d;
	}

	// TODO: when to auto-create symbols?
	private void symLine(Segment g, int a, int n, int bk) {
		Z80Dissed d = getDissed(g, a, n, bk);
		if (d.addr < 0 || g.constant(a)) {
			return;
		}
		prog.mksym(g.idx, d);
	}

	private String fmtNum(int n, int rdx, boolean bin) {
		String s;
		if (rdx == '2' && bin) {
			s = Integer.toBinaryString(n);
			int l = s.length();
			if (l < 8) {
				s = BINZERO.substring(l) + s;
			}
			s += 'b';
			return s;
		} else if (rdx == 'D') {
			return Integer.toString(n);
		}
		// } else if (rdx == 'H') {
		s = Integer.toHexString(n);
		if (!Character.isDigit(s.charAt(0))) s = '0' + s;
		if (s.length() > 1) s += 'h';
		return s;
	}

	// TODO: make this usable from asmString()...
	private String asmChar(int e, int rdx) {
		if (e < ' ' || e > '~' || e == '!') {
			return fmtNum(e, rdx, true);
		} else {
			if (e == '\'') return "''''";
			else return String.format("'%c'", (char)e);
		}
	}

	private boolean inQ;

	private String asmFmtOne(int c, int col, boolean last, int rdx) {
		String s = "";
		int e;
		if (last) {
			e = (c & 0x7f);
		} else {
			e = c;
		}
		if (e < ' ' || e > '~' || e == '!') {
			if (inQ) { s += '\''; inQ = false; }
			if (col > 0) s += ',';
			s += fmtNum(c, rdx, true);
		} else {
			if (last && inQ) {
				s += '\'';
				inQ = false;
			}
			if (!inQ) {
				if (col > 0) s += ',';
				s += '\'';
				inQ = true;
			}
			s += (char)e;
			if (e == '\'') s += (char)e;
			if (last) {
				s += "'+80h";
				inQ = false;
			}
		}
		return s;
	}

	private int asmStringLen(Segment g, int a, int brk, int rdx) {
		// must take at least 1 char...
		int x = a;
		inQ = false;
		boolean bit7 = (brk == '7');
		int c = prog.read(g.idx, x++);
		boolean last = (bit7 && (c & 0x80) != 0);
		int len = asmFmtOne(c, 0, last, rdx).length();
		while (!last && x < g.end) {
			if (g.anyBrk(x) || prog.symbol(g.idx, x)) break;
			c = prog.read(g.idx, x++);
			last = (bit7 && (c & 0x80) != 0);
			int n = asmFmtOne(c, len, last, rdx).length();
			if (len + n > 60) {
				--x;
				break;
			}
			len += n;
		}
		return x - a;
	}

	private String asmString(Segment g, int a, int n, int brk, int rdx) {
		String s = "";
		inQ = false;
		boolean bit7 = (brk == '7');
		// TODO: should strings use binary?
		int c;
		int x = 0;
		while (n > 0) {
			c = prog.read(g.idx, a);
			boolean last = (bit7 && n == 1 && (c & 0x80) != 0);
			s += asmFmtOne(c, x++, last, rdx);
			++a;
			--n;
		}
		if (inQ) s += "'";
		return s;
	}

	// TODO: when to auto-create symbols?
	private String disMulti(Segment g, int a, Z80Dissed d, String sep) {
		String l;
		int seplen = 8;
		if (sep != null && !sep.equals("\t")) {
			seplen = d.op.length() + sep.length();
		}
		if (d.addr < 0) {
			if (d.fmt == null) {
				dislen = d.op.length();
				return d.op;
			} else if (sep == null) {
				l = String.format("%-8s%s", d.op, d.fmt);
				dislen = l.length();
				return l;
			} else {
				dislen = seplen + d.fmt.length();
				return d.op + sep + d.fmt;
			}
		} else {
			if (g.constant(a)) {
				// TODO: honor radix?
				l = String.format(d.fmt,
					String.format("0%04xh", d.addr));
			} else {
				l = String.format(d.fmt, prog.getsym(g.idx, d));
			}
			if (sep == null) {
				l = String.format("%-8s%s", d.op, l);
				dislen = l.length();
				return l;
			} else {
				dislen = seplen + l.length();
				return d.op + sep + l;
			}
		}
	}

	private void disPseudo(Segment g, int a, int n, int bk, int st, int rx,
						Vector<Z80Dissed> zd) {
		Z80Dissed d = new Z80Dissed();
		int y;
		int z;
		String s;
		switch (bk) {
		case 'L':
			// assert: n == 2
			z = prog.read(g.idx, a) | (prog.read(g.idx, a + 1) << 8);
			d.op = "dw";
			d.fmt = "%s";
			d.addr = z;
			d.type = Z80Dissed.JMP; // good enough?
			break;
		case 'W':
			// assert: n == 2
			z = prog.read(g.idx, a) | (prog.read(g.idx, a + 1) << 8);
			d.op = "dw";
			d.fmt = fmtNum(z, rx, false);
			break;
		case 'X':
			// assert: n == 2
			z = prog.read(g.idx, a + 1) | (prog.read(g.idx, a) << 8);
			d.op = "dw";
			d.fmt = fmtNum(z, rx, false);
			break;
		case 'R':
			// assert: n == 2
			z = prog.read(g.idx, a) | (prog.read(g.idx, a + 1) << 8);
			z += a;
			z &= 0xffff;
			d.op = "dw";
			d.fmt = "%s-$";
			d.addr = z;
			d.type = Z80Dissed.JMP; // good enough?
			break;
		case 'T':
			// assert: n == 3
			y = prog.read(g.idx, a);
			z = prog.read(g.idx, a + 1) | (prog.read(g.idx, a + 2) << 8);
			d.op = "db";
			if (st == 'M') {
				d.fmt = asmChar(y, rx);
			} else {
				d.fmt = fmtNum(y, rx, true);
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
			y = prog.read(g.idx, a) | (prog.read(g.idx, a + 1) << 8);
			z = prog.read(g.idx, a + 2) | (prog.read(g.idx, a + 3) << 8);
			d.op = "dw";
			d.fmt = fmtNum(y, rx, false);
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
				d.fmt = asmString(g, a, n, bk, rx);
			} else {
				s = "";
				for (z = 0; z < n; ++z) {
					if (z != 0) s += ',';
					s += fmtNum(prog.read(g.idx, a++), rx, true);
				}
				d.fmt = s;
			}
			break;
		case '0': // assert prog.read(a + n - 1) == 0
		case '$': // assert prog.read(a + n - 1) == '$'
		case '7': // assert prog.read(a + n - 1) & 0x80 == 0x80
			// TODO: '7' comment showing last char?
			d.op = "db";
			d.fmt = asmString(g, a, n, bk, rx);
			break;
		default:
			d.op = "?";
			d.fmt = String.format("'%c'", (char)bk);
			break;
		}
		zd.add(d);
	}

	private String disLine(Segment g, int a, int n, int bk, int st, int rx) {
		zdv.clear();
		if (bk == 'I') {
			// assert: n == dis.instrLen()
			zdv.add(dis.disas(g.idx, a));
		} else {
			disPseudo(g, a, n, bk, st, rx, zdv);
		}
		if (zdv.size() > 1) {
			String s = "";
			int x = 0;
			for (Z80Dissed d : zdv) {
				if (x++ > 0) s += " ! ";
				s += disMulti(g, a, d, " ");
			}
			return s;
		} else {
			return disMulti(g, a, zdv.get(0), null);
		}
	}

	private String disLineTab(Segment g, int a, int n, int bk, int st, int rx) {
		zdv.clear();
		if (bk == 'I') {
			// assert: n == dis.instrLen()
			zdv.add(dis.disas(g.idx, a));
		} else {
			disPseudo(g, a, n, bk, st, rx, zdv);
		}
		if (zdv.size() > 1) {
			String s = "";
			int x = 0;
			for (Z80Dissed d : zdv) {
				if (x++ > 0) s += " ! ";
				s += disMulti(g, a, d, " ");
			}
			dislen = s.length();
			return s;
		} else {
			return disMulti(g, a, zdv.get(0), "\t");
		}
	}

	public void paintCode(Graphics2D g2d) {
		Segment g = sg;
		if (g == null) return;
		if (g.cwin < g.base) return;
		int a = g.cwin;
		int x = bd_width;
		int y = _fa + bd_width;
		String t;
		int b, s, r;
		int z;
		int n;
		int bk = g.activeBreak(a);
		if (bk == 0) bk = 'I';
		int st = g.activeStyle(a);
		if (st == 0) st = 'M';
		int rx = g.activeRadix(a);
		if (rx == 0) rx = 'H';
		for (int l = 0; a < g.end && l < clines; ++l) {
			b = g.getBrk(a);
			s = g.getStyle(a);
			r = g.getRadix(a);
			if (b != 0) bk = b; else b = ' ';
			if (s != 0) st = s; else s = ' ';
			if (r != 0) rx = r; else r = ' ';
			t = String.format("%c%c%c %04x ", (char)b, (char)s, (char)r, a);
			n = g.getLen(a);
			if (n == 0) n = 1;
			if (g.cursor >= a && g.cursor < a + n) {
				if (a == g.cursor) {
					g2d.setColor(hilite);
				} else {
					g2d.setColor(liter);
				}
				g2d.fillRect(x, y - _fa, ln_width * _fw, _fh);
				g2d.setColor(code.getForeground());
			}
			for (z = 0; z < 5; ++z) {
				if (z < n) {
					t += String.format("%02x", prog.read(g.idx, a + z));
				} else {
					t += "  ";
				}
			}
			if (z < n) {
				t += '+';
			} else {
				t += ' ';
			}
if (g.orphaned(a)) t += '!';
else if (g.visited(a)) t += '*';
else t += ' ';
			String lbl = prog.lookup(g.idx, a);
			if (lbl != null) {
				t += String.format("%-8s", lbl + ':');
			} else {
				t += "        ";
			}
			t += disLine(g, a, n, bk, st, rx);
			if (cmnts.containsKey(a)) {
				t += " ;";
				t += cmnts.get(a);
			}
			g2d.drawString(t, x, y);
			y += _fh;
			if (g.terminal(a)) {
				// doesn't matter if off-screen?
				y += _fh;
				++l;
			}
			b = g.lastBrk(a, n);
			s = g.lastStyle(a, n);
			r = g.lastRadix(a, n);
			if (b != 0) bk = b;
			if (s != 0) st = s;
			if (r != 0) rx = r;
			a += n;
		}
	}

	private void paintHighlight(Segment g, Graphics2D g2d, int a, int x, int y, int n) {
		if (a < g.cursor || a >= g.cursor + g.cur_len) {
			return;
		}
		g2d.setColor(hilite);
		g2d.fillRect(x, y, n * _fw, _fh);
		g2d.setColor(code.getForeground());
	}

	public void paintDump(Graphics2D g2d) {
		Segment g = sg;
		if (g == null) return;
		if (g.cwin < g.base) return;
		int a = g.dwin;	// TODO: diff range from code...
		String s;
		int x = bd_width;
		int y = _fa + bd_width;
		int c;
		for (int l = 0; l < dlines; ++l) {
			s = String.format("%04x ", a);
			for (int z = 0; z < 16; ++z) {
				paintHighlight(g, g2d, a + z, x + s.length() * _fw + _fw2, y - _fa, 3);
				if (a + z < g.end) {
					s += String.format(" %02x", prog.read(g.idx, a + z));
				} else {
					s += " --";
				}
			}
			s += "  ";
			for (int z = 0; z < 16; ++z) {
				paintHighlight(g, g2d, a + z, x + s.length() * _fw, y - _fa, 1);
				if (a + z < g.end) {
					c = prog.read(g.idx, a + z);
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

	// TODO: how to separate segments
	// (like REL files which overlap address spaces)
	// TODO: Strip redundant breaks (radix, styles)?
	private void generateDZ(File dz) throws Exception {
		PrintStream ps = new PrintStream(dz);
		for (int x = 0; x < nseg; ++x) {
			Segment g = segs[x];
			int first = g.base;
			int last = g.end;
			int bk = 0;
			int st = 0;
			int rx = 0;
			// TODO: decide whether to strip duplicates...
			for (int a = first; a < last; ++a) {
				// TODO: don't save auto labels?
				String l = prog.lookup(x, a);
				if (l != null) {
					String d = prog.defLabel(x, a);
					if (l.equals(d)) {
						ps.format("%s\n", l);
					} else {
						ps.format("%s %s\n", d, l);
					}
				}
				String s = "";
				int b = g.getBrk(a);
				if (b != 0) { // skip dups: && b != bk)
					s += (char)b;
					bk = b;
				} else s += " ";
				b = g.getStyle(a);
				if (b != 0) { // skip dups: && b != st)
					s += (char)b;
					st = b;
				} else s += " ";
				b = g.getRadix(a);
				if (b != 0) { // skip dups: && b != rx)
					s += (char)b;
					rx = b;
				} else s += " ";
				if (!s.equals("   ")) {
					ps.format("-%04x,%s\n", a, s);
				}
				// for now, only minor comments...
				if (cmnts.containsKey(a)) {
					ps.format("/%04x %s\n", a, cmnts.get(a));
				}
				if (g.constant(a)) {
					ps.format("%%%04x\n", a);
				}
			}
		}
		ps.close();
		statDZ.setText("DZ: " + dz.getName() + " Saved");
	}

	// TODO: how to separate segments
	// (like REL files which overlap address spaces)
	private void generateHints(File dzh) throws Exception {
		PrintStream ps = new PrintStream(dzh);
		String h;
		for (int a : codes) {
			ps.format("+%04x\n", a);
		}
		for (int a : calls.keySet()) {
			int n = calls.get(a);
			if (n > 0 && (n & ~0xff) != 0) {
				switch (n & 0xff) {
				case 'L':
					h = "L";
					break;
				case '0':
					h = "Z";
					break;
				case '$':
					h = "$";
					break;
				case '7':
					h = "B";
					break;
				default:
					// not a viable situation...
					h = String.format("?%04x", n);
					break;
				}
			} else if (n == 0) {
				h = "N";
			} else {
				h = String.format("%d", n);
			}
			ps.format("*%04x,%s\n", a, h);
		}
		ps.close();
		statHint.setText("Hint: " + dzh.getName() + " Saved");
	}

	// TODO: how to separate segments
	// (like REL files which overlap address spaces)
	private boolean processDZ(int c, String s) {
		Segment g;
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
			// Address may have segment spec
			int x = prog.segOf(a);
			a = prog.adrOf(a);
			g = segs[x];
			// TODO: error, or ignored?
			if (a < g.base || a >= g.end) return false;
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
			if (bk != 0) g.putBrk(a, bk);
			if (st != 0) g.putStyle(a, st);
			if (rx != 0) g.putRadix(a, rx);
		} else if (c == '/') {	// minor comment /AAAA s...
			ss = s.split(" ", 2);
			if (ss.length != 2) return false;
			try {
				a = Integer.valueOf(ss[0], 16);
			} catch (Exception ee) {
				return false; // provide ee.getString()?
			}
			// cmnts uses seg-adr
			cmnts.put(a, ss[1]);
		} else if (c == '%') {	// LXI constant operand
			try {
				a = Integer.valueOf(s, 16);
			} catch (Exception ee) {
				return false; // provide ee.getString()?
			}
			int x = prog.segOf(a);
			a = prog.adrOf(a);
			g = segs[x];
			// TODO: error, or ignored?
			if (a < g.base || a >= g.end) return false;
			g.setConst(a);
		} else if (Character.isLetter(c)) { // symbol: XAAAA[ name]
			ss = s.split(" ");
			try {
				a = Integer.valueOf(ss[0], 16);
			} catch (Exception ee) {
				return false; // provide ee.getString()?
			}
			// 'c' is segment "hint"
			if (ss.length > 1) {
				prog.putsym(c, a, ss[1]);
			} else {
				// TODO: ignore these?
				prog.putsym(c, a, null);
			}
		} else {
			return false;
		}
		return true;
	}

	// TODO: need better, extensible, way to pass codes,calls,...
	private boolean processHint(int c, String s,
				Vector<Integer> codes,
				Map<Integer,Integer> calls) {
		int a;
		int b;
		String[] ss = s.split(",");
		try {
			a = Integer.valueOf(ss[0], 16);
		} catch (Exception ee) {
			return false; // provide ee.getString()?
		}
		if (c == '*') {	// inline function parameters
			// addr, num params
			if (ss.length > 2) return false;
			if (ss.length > 1) {
				if (ss[1].matches("-*[0-9]+")) {
					try {
						b = Integer.valueOf(ss[1]);
					} catch (Exception ee) {
						return false; // provide ee.getString()?
					}
				} else if (ss[1].equalsIgnoreCase("n")) {
					b = 0; // first byte is length
				} else if (ss[1].equalsIgnoreCase("z")) {
					b = '0' | 0x0100; // (non-zero hi byte)
				} else if (ss[1].equalsIgnoreCase("b")) {
					b = '7' | 0x0100; // (non-zero hi byte)
				} else if (ss[1].equals("$")) {
					b = '$' | 0x0100; // (non-zero hi byte)
				} else if (ss[1].equalsIgnoreCase("l")) {
					b = 'L' | 0x0100; // (non-zero hi byte)
				} else {
					return false;
				}
			} else {
				b = 1;
			}
			// uses seg-adr
			calls.put(a, b); // duplicates overwritten
		} else if (c == '+') {
			if (ss.length != 1) return false;
			// uses seg-adr
			codes.add(a); // TODO: reject duplicates
		} else {
			return false;
		}
		return true;
	}

	private boolean applyHint(String s) {
		// TODO: need better way to locate what was added...
		Vector<Integer> codes = new Vector<Integer>();
		Map<Integer,Integer> calls = new HashMap<Integer,Integer>();
		int c = s.charAt(0);
		if (!processHint(c, s.substring(1), codes, calls)) {
			return false;
		}
		// Only one can be non-zero...
		if (codes.size() > 0) {
			this.codes.addAll(codes);
			return true;
		}
		this.calls.putAll(calls);
		for (int x = 0; x < nseg; ++x) {
			Segment g = segs[x];
			int a = g.base;
			int bk = g.getBrk(a);
			if (bk == 0) bk = 'I';
			int b;
			int n;
			Z80Dissed d;
			while (a < g.end) {
				b = g.getBrk(a);
				if (b != 0) bk = b;
				n = g.getLen(a);
				if (n == 0) n = 1;
				if (bk != 'I') {
					b = g.lastBrk(a, n);
					if (b != 0) bk = b;
					a += n;
					continue;
				}
				d = dis.disas(x, a);
				int f = prog.segAdr(x, d);
				// assert n == d.len
				if (d.type == Z80Dissed.CALL &&
						calls.containsKey(f)) {
					n += callBreak(a + n, calls.get(f));
				}
				b = g.lastBrk(a, n);
				if (b != 0) bk = b;
				a += n;
			}
		}
		return true;
	}

	private void loadDZ(File dz, BufferedReader lin) throws Exception {
		if (lin == null) {
			lin = new BufferedReader(new FileReader(dz));
		}
		String s;
		int a;
		int bk;
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
		resetBreaks();
		setCursor(sg.base);
		statDZ.setText("DZ: " + dz.getName());
	}

	private void reloadDZ(File dz) throws Exception {
		BufferedReader lin = new BufferedReader(new FileReader(dz));
		// TODO: always wipe slate clean?
		Arrays.fill(brk, (byte)0);
		Arrays.fill(rdx, (byte)0);
		Arrays.fill(sty, (byte)0);
		Arrays.fill(len, (byte)0);
		Arrays.fill(vst, (byte)0); // yes? or else
		// OR: for (int x = 0; x < vst.length; ++x) resConst(x);
		prog.resetSymtab();
		loadDZ(dz, lin);
	}

	// TODO: cummulative? or start from scratch?
	private void loadHints(File in) throws Exception {
		BufferedReader lin = new BufferedReader(new FileReader(in));
		String s;
		int a;
		int bk;
		int c;
		int e = 0;
		int l = 0;
		String es = "";
		while ((s = lin.readLine()) != null) {
			++l;
			if (s.length() == 0) continue;
			c = s.charAt(0);
			if (c == 0x1a) break;	// CP/M EOF (Ctrl-Z)
			if (c == '#') continue;
			if (!processHint(c, s.substring(1), codes, calls)) {
				es += String.format("%d: Unrecognized Hint \"%s\"\n",
									l, s);
				++e;
			}
		}
		lin.close();
		if (e > 0) {
			err_txt.setText(es);
			err_txt.setCaretPosition(0);
			err_lbl.setText(String.format("Found %d errors out of %d lines", e, l));
			JOptionPane.showMessageDialog(frame, err_pan, "Load Hints",
						JOptionPane.WARNING_MESSAGE);
			// TODO: save to file?
		}
		resetBreaks();
		// TODO: preserve current location?
		setCursor(sg.base);
		statHint.setText("Hint: " + in.getName());
		if (codes.size() > 0) {
			mi_sch.setEnabled(true);
		}
	}

	private void regenSymtab() {
		int b;
		int n;
		prog.resetSymtab();	// optional?
		for (int x = 0; x < nseg; ++x) {
			Segment g = segs[x];
			int first = g.base;
			int last = g.end;
			int bk = g.activeBreak(first);
			if (bk == 0) bk = 'I';
			// TODO: recompute max ref...
			for (int a = first; a < last;) {
				b = g.getBrk(a);
				if (b != 0) bk = b;
				n = g.getLen(a);
				if (n == 0) n = 1;
				symLine(g, a, n, bk);
				b = g.lastBrk(a, n);
				if (b != 0) bk = b;
				a += n;
			}
		}
		code.repaint();
	}

	private void generateASM(File asm, boolean prn) throws Exception {
		// TODO: resetBreaks(sg.base, true); ?
		PrintStream ps = new PrintStream(asm);
		for (int x = 0; x < nseg; ++x) {
			Segment g = segs[x];
			int first = g.base;
			int last = g.end;
			prog.preASM(ps, prn, x);
			String l;
			Z80Dissed d;
			int b, s, r;
			int z;
			int n;
			int bk = g.activeBreak(first);
			if (bk == 0) bk = 'I';
			int st = g.activeStyle(first);
			if (st == 0) st = 'M';
			int rx = g.activeRadix(first);
			if (rx == 0) rx = 'H';
			// TODO: ps.print("\tmaclib\tz80\n");
			for (int a = first; a < last;) {
				b = g.getBrk(a);
				s = g.getStyle(a);
				r = g.getRadix(a);
				if (b != 0) bk = b;
				if (s != 0) st = s;
				if (r != 0) rx = r;
				n = g.getLen(a);
				if (n == 0) n = 1;
				if (prn) {
					ps.format("%04x ", a);
					for (z = 0; z < 5; ++z) {
						if (z < n) {
							ps.format("%02x", prog.read(x, a + z));
						} else {
							ps.print("  ");
						}
					}
					if (z < n) {
						ps.print("+");
					} else {
						ps.print(" ");
					}
				}
				l = prog.lookup(x, a);
				if (l != null) ps.format("%s:", l);
				//	if (l.length() > 7) ps.print("\n");
				ps.print("\t");
				ps.print(disLineTab(g, a, n, bk, st, rx));
				if (cmnts.containsKey(a)) {
					// already indented 8... so use 24 not 32...
					while (dislen < 24) {
						ps.print("\t");
						dislen = (dislen & ~7) + 8;
					}
					ps.print(";");
					ps.print(cmnts.get(a));
				} else if (bk == 'I') {
					// TODO: optional? all breaks?
					// already indented 8... so use 24 not 32...
					while (dislen < 24) {
						ps.print("\t");
						dislen = (dislen & ~7) + 8;
					}
					ps.format(";; %04x:", a);
					for (z = 0; z < 4; ++z) {
						if (z < n) {
							ps.format(" %02x", prog.read(x, a + z));
						} else {
							ps.print("   ");
						}
					}
					ps.print(" ");
					for (z = 0; z < n && z < 4; ++z) {
						b = prog.read(x, a + z);
						if (b < ' ' || b > '~' || b == '!') b = '.';
						ps.format("%c", b);
					}
				}
				ps.print("\n");
				if (g.terminal(a)) {
					ps.print("\n");
				}
				for (z = 1; z < n; ++z) {
					l = prog.lookup(x, a + z);
					if (l != null) {
						if (prn) ps.format("%04x =          ", a + z);
						ps.format("%s\tequ\t$-%d\n", l, n - z);
					}
				}
				b = g.lastBrk(a, n);
				s = g.lastStyle(a, n);
				r = g.lastRadix(a, n);
				if (b != 0) bk = b;
				if (s != 0) st = s;
				if (r != 0) rx = r;
				a += n;
			}
			n = g.end;
			for (int a = g.end; a < g.max; ++a) {
				l = prog.lookup(x, a);
				if (l != null) {
					if (a - n > 0) {
						if (prn) ps.format("%04x            ", n);
						ps.format("\tds\t%d\n", a - n);
					}
					if (prn) ps.format("%04x            ", a);
					ps.format("%s:\tds\t0\n", l);
					n = a;
				}
			}
		}
		if (prn) ps.print("                ");
		ps.print("\tend\n");
		ps.close();
		if (prn) {
			statCom.setText(statBase + " PRN Saved");
		} else {
			statCom.setText(statBase + " ASM Saved");
		}
	}

	// Search for byte pattern.
	private int search(int start, int stop, byte[] val, boolean wrap) {
		int a = start;
		int e = stop;
		if (e < 0) e = start;
		if (a + val.length >= sg.end) {
			if (!wrap) return -1;
			a = sg.base;
		}
		while (true) {
			int x = 0;
			for (; x < val.length &&
				(val[x] & 0xff) == prog.read(sg.idx, a + x);
				++x);
			if (x == val.length) {
				return a;
			}
			++a;
			if (a >= sg.end) {
				if (!wrap) break;
				a = sg.base;
			}
			if (a == e) break;
		}
		// not found
		return -1;
	}

	private void setExts() {
		dzExt = ".dz";
		hintExt = ".dzh";
		if (dis instanceof Z80DisassemblerMAC80) {
			asmExt = ".asm";
			prnExt = ".prn";
		} else {
			asmExt = ".z80";
			prnExt = ".lst";
		}
		if (uppercase) {
			dzExt = dzExt.toUpperCase();
			hintExt = hintExt.toUpperCase();
			asmExt = asmExt.toUpperCase();
			prnExt = prnExt.toUpperCase();
		}
	}

	private void menuAction(JMenuItem m) {
		int key = m.getMnemonic();
		if (key == KeyEvent.VK_Q) {
			System.exit(1);
		}
		if (key == KeyEvent.VK_P) {
			File prn = new File(basePath + prnExt);
			try {
				generateASM(prn, true);
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
				generateASM(asm, false);
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
				generateDZ(dz);
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Save DZ",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_D) {
			// Save Hints...
			// TODO: pick file? backup existing?
			if (calls.size() == 0 && codes.size() == 0) {
				PopupFactory.warning(frame, "Save Hints",
					"No Hints to save");
				return;
			}
			File dz = new File(basePath + hintExt);
			try {
				generateHints(dz);
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Save Hints",
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
				reloadDZ(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load DZ",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_I) {
			SuffFileChooser sfc = new SuffFileChooser("Hints file",
				new String[]{ "dzh" },
				new String[]{ "Hints file" },
				comFile, null);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			try {
				loadHints(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load Hints",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_G) {
			regenSymtab();
			return;
		}
		if (key == KeyEvent.VK_Z) {
			doAnalyze();
			return;
		}
		if (key == KeyEvent.VK_Y) {
			doAnaHints();
			return;
		}
		if (key == KeyEvent.VK_B) {
			doHint();
			return;
		}
		if (key == KeyEvent.VK_R) {
			// In somecases, this warrants a repaint...
			sg.fresh();
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
			setExts();
			code.repaint();
			return;
		}
		if (key == KeyEvent.VK_N) {
			// new job (disassembly)
			com_org.setText("0100");
			SuffFileChooser sfc = new SuffFileChooser("Binary file",
				new String[]{ "com", "bin", "rom" },
				new String[]{ "COM file", "BIN file", "ROM file" },
				comFile, com_pan);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			int org = 0x0100;
			if (com_org.getText().length() > 0) {
				org = Integer.valueOf(com_org.getText(), 16);
			}
			try {
				jobActive(false);
				prog = new BinaryFile(sfc.getSelectedFile(), org);
				newJob(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load COM",
					ee.getMessage());
				//ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_V) {
			// PRL file
			SuffFileChooser sfc = new SuffFileChooser("PRL file",
				new String[]{ "prl" },
				new String[]{ "PRL file" },
				comFile, null);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			try {
				jobActive(false);
				prog = new PrlFile(sfc.getSelectedFile());
				newJob(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load PRL",
					ee.getMessage());
			}
			return;
		}
		if (key == KeyEvent.VK_W) {
			// SPR file
			SuffFileChooser sfc = new SuffFileChooser("SPR file",
				new String[]{ "spr" },
				new String[]{ "SPR file" },
				comFile, null);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			try {
				jobActive(false);
				prog = new SprFile(sfc.getSelectedFile());
				newJob(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load SPR",
					ee.getMessage());
			}
			return;
		}
		if (key == KeyEvent.VK_X) {
			// REL file
			SuffFileChooser sfc = new SuffFileChooser("REL file",
				new String[]{ "rel" },
				new String[]{ "REL file" },
				comFile, null);
			int rv = sfc.showOpenDialog(frame);
			if (rv != JFileChooser.APPROVE_OPTION) {
				return;
			}
			try {
				jobActive(false);
				prog = new RelFile(sfc.getSelectedFile());
				newJob(sfc.getSelectedFile());
			} catch (Exception ee) {
				PopupFactory.warning(frame, "Load REL",
					ee.getMessage());
			}
			return;
		}
		if (key == KeyEvent.VK_C) {
			// close current
			// TODO: auto-save?
			segs = null;
			prog = null;
			// don't null - remember last directory used
			//comFile = null;
			statCom.setText("Work:");
			statDZ.setText("DZ:");
			statHint.setText("Hint:");
			jobActive(false);
			brk = null;
			rdx = null;
			sty = null;
			vst = null;
			len = null;
			calls.clear();
			codes.clear();
			code.repaint();
			dump.repaint();
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

	private void doAnalyze() {
		// TODO: more stats?
		sg.orphans = 0;
		analyze(sg, sg.cursor);
		// TODO: analyze codes? destructively?
		if (sg.orphans > 0) {
			PopupFactory.inform(frame, "Scan",
				String.format("%d New Orphans Found", sg.orphans));
		} else {
			PopupFactory.inform(frame, "Scan",
				String.format("No New Orphans Found"));
		}
		// We have no idea how far-reaching this was...
		// probably need to rebuild all breaks...???
		resetBreaks();
		code.repaint();
	}

	private void doAnaHints() {
		// TODO: more stats?
		sg.orphans = 0;
		analyze(codes);	// this may operate on all segments...
		if (sg.orphans > 0) {
			PopupFactory.inform(frame, "Scan Hints",
				String.format("%d New Orphans Found", sg.orphans));
		} else {
			PopupFactory.inform(frame, "Scan Hints",
				String.format("No New Orphans Found"));
		}
		// We have no idea how far-reaching this was...
		// probably need to rebuild all breaks...???
		resetBreaks();
		code.repaint();
	}

	private void buttonAction(JButton b) {
	}

	// TODO: use some modifier for single/double byte B-I?
	private boolean doBrkKey(int k) {
		if (k == ' ') {
			sg.putBrk(sg.cursor, 0);
			sg.putStyle(sg.cursor, 0);
			sg.putRadix(sg.cursor, 0);
		} else if (validBrk(k) > 0) {
			sg.putBrk(sg.cursor, k);
		} else if (validStyle(k) > 0) {
			sg.putStyle(sg.cursor, k);
		} else if (validRadix(k) > 0) {
			sg.putRadix(sg.cursor, k);
		} else {
			return false;
		}
		resetBreaks(sg, sg.cursor, false);
		sg.cur_len = sg.getLen(sg.cursor);
		setCodeWin(sg.cwin);
		code.repaint();
		dump.repaint();
		return true;
	}

	private void pushPrev() {
		// TODO: configure stack size limit
		int sa = prog.segAdr(sg.idx, sg.cursor);
		prevs.push(sa);
		if (prevs.size() > 100) {
			prevs.setSize(100);
		}
	}

	private void popPrev() {
		if (prevs.empty()) return;
		int sa = prevs.pop();
		int x = prog.segOf(sa);
		int a = prog.adrOf(sa);
		if (x != seg) {
			setSeg(x);
			goAdr(a, true);
		} else {
			goAdr(a);
		}
	}

	private void follow() {
		int a = -1;
		int bk = sg.activeBreak(sg.cursor);
		if (bk == 0) bk = 'I';
		Z80Dissed d = getDissed(sg, sg.cursor, sg.cur_len, bk);
		int f = prog.segAdr(sg.idx, d);
		int x = prog.segOf(f);
		a = prog.adrOf(f);
		if (a < segs[x].base || a >= segs[x].end) return;
		pushPrev();
		if (x != seg) {
			setSeg(x);
			goAdr(a, true);
		} else {
			goAdr(a);
		}
	}

	private void keyAlted(int k) {
		if (k == KeyEvent.VK_HOME) {
			goAdr(sg.cursor, true);
		}
	}

	private void keyShifted(int k) {
		if (k == KeyEvent.VK_HOME) {
			goAdr(sg.base);
		} else if (k == KeyEvent.VK_END) {
			int c = sg.end;
			int x = clines;
			while (x > 0 && c > sg.base) {
				int cc = sg.oneBack(c);
				if (sg.terminal(cc)) {
					if (--x <= 0) break;
				}
				c = cc;
				--x;
			}
			goAdr(c);
			setCursor(sg.oneBack(sg.cend));
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
			int s = 0;
			int x = 0;
			String t = dest.getText();
			dest.setText("");
			if (t.charAt(x) == '+') {
				++x;
				s = 1;
			} else if (t.charAt(x) == '-') {
				++x;
				s = -1;
			}
			try {
				a = Integer.valueOf(t.substring(x), 16);
			} catch (Exception ee) {}
			if (s != 0) {
				a = sg.cursor + s * a;
			}
			if (a < sg.base || a >= sg.end) return;
			pushPrev();
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
		int m = e.getModifiers();
		if ((m & InputEvent.ALT_MASK) != 0) {
			// don't respond to shortcut keys
			return;
		}
		if (c == 'A') {
			dest.setEnabled(true);
			dest.requestFocus();
		} else if (c == 'F') {
			follow();
		} else if (c == '/') {
			doComment();
		} else if (c == 'K') {
			doConstant();
		} else if (c == 'V') {
			popPrev();
		} else if (doBrkKey(c)) {
			return;
		} else {
			// more keys
		}
	}

	private void doConstant() {
		int bk = sg.activeBreak(sg.cursor);
		if (bk != 0 && bk != 'I') return;
		Z80Dissed d = dis.disas(sg.idx, sg.cursor);
		if (d.type != Z80Dissed.LXI) return;
		// assert: d.addr >= 0
		sg.toggleConst(sg.cursor);
		if (!sg.constant(sg.cursor)) {
			prog.mksym(sg.idx, d);
		}
		code.repaint();
	}

	private void doHint() {
		hnt_txt.setText("");
		int res = FocusOptionPane.focusConfirmDialog(frame, hnt_pan,
					"Apply Hint",
					JOptionPane.OK_CANCEL_OPTION, hnt_txt);
		if (res != JOptionPane.OK_OPTION) {
			return;
		}
		if (hnt_txt.getText().length() == 0) {
			return;
		}
		if (!applyHint(hnt_txt.getText())) {
			PopupFactory.inform(frame, "Apply Hint",
				String.format("Hint failed \"%s\"", hnt_txt.getText()));
		}
		resetBreaks();
		code.repaint();
	}

	private void doComment() {
		if (cmnts.containsKey(sg.cursor)) {
			cmt_txt.setText(cmnts.get(sg.cursor));
		} else {
			cmt_txt.setText("");
		}
		int res = FocusOptionPane.focusConfirmDialog(frame, cmt_pan,
					"Comment",
					JOptionPane.OK_CANCEL_OPTION, cmt_txt);
		if (res != JOptionPane.OK_OPTION) {
			return;
		}
		if (cmt_txt.getText().length() == 0) {
			cmnts.remove(sg.cursor);
			code.repaint();
			return;
		}
		cmnts.put(sg.cursor, cmt_txt.getText());
		code.repaint();
	}

	private void doSearch() {
		// TODO: make these persistent or not?
		//src_pat.setText("");
		//src_hex.setSelected(true);
		//src_beg.setSelected(true);
		//src_wrp.setSelected(false);
		int res = FocusOptionPane.focusConfirmDialog(frame, src_pan,
					"Search Byte(s)",
					JOptionPane.OK_CANCEL_OPTION, src_pat);
		if (res != JOptionPane.OK_OPTION) {
			return;
		}
		if (src_pat.getText().length() == 0) {
			return;
		}
		cur_str = src_pat.getText();
		if (src_hex.isSelected()) {
			String[] ss = cur_str.split("\\s");
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
		} else { // src_txt.isSelected()
			cur_val = cur_str.getBytes();
		}
		for (int x = 0; x < nseg; ++x) {
			if (src_beg.isSelected()) {
				segs[x].cur_adr = segs[x].base;
			} else {
				segs[x].cur_adr = segs[x].cursor; // TODO: +1?
			}
			segs[x].cur_beg = segs[x].cur_adr;
		}
		cur_wrp = src_wrp.isSelected();
		doSearchNext();
	}

	private void doSearchNext() {
		if (cur_str == null) {
			PopupFactory.warning(frame, "Search",
				"No previous search");
			return;
		}
		int a = search(sg.cur_adr, sg.cur_beg, cur_val, cur_wrp);
		if (a < 0) {
			PopupFactory.inform(frame, "Search",
				"Not Found: " + cur_str);
			sg.cur_adr = sg.cur_beg;
			return;
		}
		sg.cur_adr = a + 1;
		goAdr(a);
	}

	private void doOrphaned() {
		int a;
		a = nextOrphan(sg.cursor);
		if (a < 0) {
			PopupFactory.inform(frame, "Orphan",
				"At End of Program. Resetting to Start for next.");
			goAdr(sg.base);
			return;
		}
		goAdr(a);
	}

	private void doUnknown() {
		int a;
		a = nextUnknown(sg.cursor);
		if (a < 0) {
			PopupFactory.inform(frame, "Unknown Blocks",
				"At End of Program. Resetting to Start for next.");
			goAdr(sg.base);
			return;
		}
		// TODO: if (a >= cwin && a < cend) setCursor(a);
		//       else goAdr(a);
		goAdr(a);
	}

	private void doSeg() {
		if (nseg < 2) return;
		int g = seg + 1;
		if (g >= nseg) g = 0;
		setSeg(g);
		code.repaint();
		dump.repaint();
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
			setCursor(sg.cwin);
		} else if (k == KeyEvent.VK_END) {
			int c = sg.oneBack(sg.cend);
			setCursor(c);
		} else if (k == KeyEvent.VK_F1) {
			doSearch();
		} else if (k == KeyEvent.VK_F2) {
			doSearchNext();
		} else if (k == KeyEvent.VK_F3) {
			doOrphaned();
		} else if (k == KeyEvent.VK_F4) {
			doUnknown();
		} else if (k == KeyEvent.VK_F5) {
			doSeg();
		}
	}
	public void keyReleased(KeyEvent e) {}

	// Memory interface:
	public int read(int seg, int adr) {
		// should never happen...
		if (prog == null) return 0;
		return prog.read(seg, adr);
	}
}
