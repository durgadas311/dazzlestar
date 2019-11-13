// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;
import java.util.Properties;

public class DazzleStar implements DZCodePainter, DZDumpPainter, Memory,
			KeyListener, ActionListener {
	static DazzleStar _us;
	File comFile;
	byte[] obj;
	byte[] brk;	// breaks
	byte[] len;	// length of "instructions" (lines)
	Map<Integer,String> symtab;
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

	FontMetrics _fm;
	int _fa;
	int _fw;
	int _fw2;
	int _fh;
	int bd_width = 3; // some number

	Properties props = new Properties();

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
			fi = new File(args[0]);
			if (!fi.exists()) {
				System.err.format("Unrecognized argument: \"%s\"\n", args[x]);
				help();	// does not return
			}
		}
		if (dis == null) {
			dis = new Z80DisassemblerMAC80(this);
		}
		symtab = new HashMap<Integer,String>();
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
		code.setPreferredSize(new Dimension(_fw * 80 + 2 * bd_width,
						_fh * clines + 2 * bd_width));
		dump = new DZDumpPane(this);
		dump.setFont(font);
		dump.setPreferredSize(new Dimension(_fw * 80 + 2 * bd_width,
						_fh * dlines + 2 * bd_width));
		pan.add(code);
		pan.add(dump);
		frame.add(pan);
		// done setup on frame...
		frame.pack();
		frame.setVisible(true);

		if (fi != null) {
			newJob(fi);
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

	private boolean newJob(File com) {
		jobActive(false);
		try {
			InputStream f = new FileInputStream(com);
			obj = new byte[f.available()];
			brk = new byte[f.available()];
			len = new byte[f.available()];
			f.read(obj);
			f.close();
			comFile = com;
		} catch (Exception ee) {
			ee.printStackTrace();
			return false;
		}
		statBase = String.format("Work: %s", com.getName());
		stat.setText(statBase);
		base = 0x0100;
		end = base + obj.length;
		symtab.clear();
		resetBreaks(base, true);
		File dz = new File(com.getName().replace(".com", ".dz"));
		if (dz.exists()) {
			try {
				loadDZ(dz);	// resets statBase...
			} catch (Exception ee) {}
		}
		jobActive(true);
		setCodeWin(base);
		setDumpWin(base);
		setCursor(base);
		return true;
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

	private void putBrk(int a, int b) {
		brk[a - base] = (byte)b;
	}

	// returns last break seen
	private int setLen(int a, int n) {
		int bk = getBrk(a);
		int b = bk;
		putLen(a++, n--);
		while (a < end && n > 0) {
			b = getBrk(a);
			if (b != 0) bk = b;
			putLen(a++, 0);
			--n;
		}
		return b;
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

	// Setup/rescan breaks and lengths... stop at next break
	private void resetBreaks(int a, boolean all) {
		int n;
		int b;
		int ba = activeBreak(a);
		int bk = getBrk(ba);
		if (bk == 0) bk = 'I';
		for (int x = a; x < end;) {
			b = getBrk(x);
			if (b != 0) {
				if (!all && x != a) break;
				bk = b;
			}
			switch (bk) {
			case 'I':
				n = dis.disas(x).len;
				break;
			case 'B': // TODO: what length?
			case 'C':
				n = 1;
				break;
			case 'L':
			case 'W':
			case 'X':
			case 'R':
				n = 2;
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
			b = setLen(x, n);
			if (b != 0) bk = b;
			x += n;
		}
	}

	private void setBreak(int a, int bk) {
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

	private void scrollUp() {
		setCodeWin(cwin + getLen(cwin));
	}

	private void lineDown() {
		int c = cursor + cur_len;
		if (c >= end) return;
		if (c >= cend) {
			scrollUp();
		}
		if (c >= dend) {
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
			// TODO: adjust for long "instructions"...
			setDumpWin(dwin - 16);
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
		while (a > base && getBrk(a) == 0) --a;
		return a;
	}

	private String lookup(boolean mk, int a) {
		if (symtab.containsKey(a)) {
			return symtab.get(a);
		}
		if (!mk) {
			return null;
		}
		String l = String.format("L%04x", a);
		symtab.put(a, l);
		return l;
	}

	private void clearSymtab() {
		symtab.clear();
	}

	private void symLine(int a, int n, int bk) {
		Z80Dissed d;
		int z;
		switch (bk) {
		case 'I':
			// assert: n == dis.intrLen()
			d = dis.disas(a);
			if (d.addr >= 0) {
				lookup(true, d.addr);
			}
			break;
		case 'L':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			lookup(true, z);
			break;
		case 'R':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			z += a;
			z &= 0xffff;
			lookup(true, z);
			break;
		}
	}

	private String asmString(int a, int n, boolean bit7) {
		String s = "";
		boolean q = false;
		boolean e = false;
		int c;
		while (n > 0) {
			c = read(a);
			e = (bit7 && n == 1);
			if (e) {
				c &= 0x7f;
			}
			if (c < ' ') {
				if (q) { s += '\''; q = false; }
				if (s.length() > 0) s += ',';
				s += String.format("%d", c);
			} else if (c > '~') {
				if (q) { s += '\''; q = false; }
				if (s.length() > 0) s += ',';
				s += String.format("0%02xh", c);
			} else {
				if (!q) { s += '\''; q = true; }
				s += (char)c;
				if (c == '\'') s += (char)c;
			}
			if (e) {
				if (q) { s += '\''; q = false; }
				s += "+80h";
			}
			++a;
			--n;
		}
		if (q) s += "'";
		return s;
	}

	private String disLine(int a, int n, int bk) {
		Z80Dissed d;
		int z;
		String s;
		switch (bk) {
		case 'I':
			// assert: n == dis.intrLen()
			d = dis.disas(a);
			if (d.addr < 0) {
				if (d.fmt == null) {
					return String.format("%s", d.op);
				} else {
					return String.format("%-8s%s", d.op, d.fmt);
				}
			} else {
				return String.format("%-8s%s", d.op,
					String.format(d.fmt, lookup(true, d.addr)));
			}
		case 'L':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			return String.format("dw      %s", lookup(true, z));
		case 'W':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			return String.format("dw      %d", z); // TODO: radix
		case 'X':
			// assert: n == 2
			z = read(a + 1) | (read(a) << 8);
			return String.format("dw      %d", z); // TODO: radix
		case 'R':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			z += a;
			z &= 0xffff;
			return String.format("dw      %s-$", lookup(true, z));
		case 'B':
			// TODO: radix
			s = "db      ";
			for (z = 0; z < n; ++z) {
				if (z != 0) s += ',';
				s += String.format("%d", read(a++));
			}
			return s;
		case 'C':
		case '0': // assert read(a + n - 1) == 0
		case '$': // assert read(a + n - 1) == '$'
		case '7': // assert read(a + n - 1) & 0x80 == 0x80
			s = "db      ";
			s += asmString(a, n, (bk == '7'));
			// TODO: '7' comment showing last char?
			return s;
		}
		return "?"; // or dis.disas()?
	}

	private String disLineTab(int a, int n, int bk) {
		Z80Dissed d;
		int z;
		String s;
		switch (bk) {
		case 'I':
			// assert: n == dis.intrLen()
			d = dis.disas(a);
			if (d.addr < 0) {
				if (d.fmt == null) {
					return String.format("%s", d.op);
				} else {
					return String.format("%s\t%s", d.op, d.fmt);
				}
			} else {
				return String.format("%s\t%s", d.op,
					String.format(d.fmt, lookup(true, d.addr)));
			}
		case 'L':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			return String.format("dw\t%s", lookup(true, z));
		case 'W':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			return String.format("dw\t%d", z); // TODO: radix
		case 'X':
			// assert: n == 2
			z = read(a + 1) | (read(a) << 8);
			return String.format("dw\t%d", z); // TODO: radix
		case 'R':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			z += a;
			z &= 0xffff;
			return String.format("dw\t%s-$", lookup(true, z));
		case 'B':
			// TODO: radix
			s = "db\t";
			for (z = 0; z < n; ++z) {
				if (z != 0) s += ',';
				s += String.format("%d", read(a++));
			}
			return s;
		case 'C':
		case '0': // assert read(a + n - 1) == 0
		case '$': // assert read(a + n - 1) == '$'
		case '7': // assert read(a + n - 1) & 0x80 == 0x80
			s = "db\t";
			s += asmString(a, n, (bk == '7'));
			return s;
		}
		return "?"; // or dis.disas()?
	}

	public void paintCode(Graphics2D g2d) {
		if (cwin < base) return;
		int a = cwin;
		int x = bd_width;
		int y = _fa + bd_width;
		String s;
		int b;
		int z;
		int n;
		int ba = activeBreak(a);
		int bk = getBrk(ba);
		if (bk == 0) bk = 'I';
		for (int l = 0; l < clines; ++l) {
			b = getBrk(a);
			if (b != 0) bk = b;
			else b = ' ';
			s = String.format("%c %04x ", (char)b, a);
			n = getLen(a);
			if (n == 0) n = 1;
			if (cursor >= a && cursor < a + n) {
				if (a == cursor) {
					g2d.setColor(hilite);
				} else {
					g2d.setColor(liter);
				}
				g2d.fillRect(x, y - _fa, 80 * _fw, _fh);
				g2d.setColor(code.getForeground());
			}
			for (z = 0; z < 4; ++z) {
				if (z < n) {
					s += String.format(" %02x", read(a + z));
				} else {
					s += "   ";
				}
			}
			if (z < n) {
				s += "...";
			} else {
				s += "   ";
			}
			s += disLine(a, n, bk);
			g2d.drawString(s, x, y);
			y += _fh;
			++a;	// already got this break, if any
			--n;	//
			while (n > 0) {
				b = getBrk(a++);
				if (b != 0) bk = b;
				--n;
			}
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

	private void generateDZ(File dz, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(dz);
		for (int a = first; a < last; ++a) {
			String l = lookup(false, a);
			if (l != null) {
				ps.format("%s\n", l);
			}
			int b = getBrk(a);
			if (b != 0) {
				ps.format("-%04x,%c\n", a, b);
			}
		}
		ps.close();
		statBase = String.format("Work: %s %s", comFile.getName(), dz.getName());
		stat.setText(statBase + " Saved");
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
		while ((s = lin.readLine()) != null) {
			if (s.matches("-[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F],.")) {
				a = Integer.valueOf(s.substring(1,5), 16);
				bk = s.charAt(6);
				putBrk(a, bk);
			} else if (s.matches("L[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]")) {
				a = Integer.valueOf(s.substring(1,5), 16);
				lookup(true, a);
			} else {
				System.err.format("Unrecognized DZ line \"%s\"\n", s);
			}
		}
		lin.close();
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
		int ba = activeBreak(first);
		int bk = getBrk(ba);
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
		int b;
		int z;
		int n;
		int ba = activeBreak(first);
		int bk = getBrk(ba);
		if (bk == 0) bk = 'I';
		for (int a = first; a < last;) {
			b = getBrk(a);
			if (b != 0) bk = b;
			l = lookup(false, a);
			if (l != null) ps.format("%s:", l);
			//	if (l.length() > 7) ps.format("\n");
			n = getLen(a);
			if (n == 0) n = 1;
			ps.format("\t");
			ps.format(disLineTab(a, n, bk));
			// TODO: optional:
			ps.format("\t;; %04x:", a);
			for (z = 0; z < 4; ++z) {
				if (z < n) {
					ps.format(" %02x", read(a + z));
				} else {
					ps.format("   ");
				}
			}
			ps.format("\n");
			++a;	// already got this break, if any
			--n;	//
			while (n > 0) {
				b = getBrk(a++);
				if (b != 0) bk = b;
				--n;
			}
		}
		ps.close();
		stat.setText(statBase + " ASM saved");
	}

	private void generatePRN(File prn, int first, int last) throws Exception {
		PrintStream ps = new PrintStream(prn);
		int b;
		int z;
		int n;
		int ba = activeBreak(first);
		int bk = getBrk(ba);
		if (bk == 0) bk = 'I';
		for (int a = first; a < last;) {
			b = getBrk(a);
			if (b != 0) bk = b;
			ps.format("%04x ", a);
			n = getLen(a);
			if (n == 0) n = 1;
			for (z = 0; z < 4; ++z) {
				if (z < n) {
					ps.format("%02x", read(a + z));
				} else {
					ps.format("  ");
				}
			}
			if (z < n) {
				ps.format("...");
			} else {
				ps.format("   ");
			}
			ps.format(disLine(a, n, bk));
			ps.format("\n");
			++a;	// already got this break, if any
			--n;	//
			while (n > 0) {
				b = getBrk(a++);
				if (b != 0) bk = b;
				--n;
			}
		}
		ps.close();
		stat.setText(statBase + " PRN saved");
	}

	private void menuAction(JMenuItem m) {
		int key = m.getMnemonic();
		if (key == KeyEvent.VK_Q) {
			System.exit(1);
		}
		if (key == KeyEvent.VK_P) {
			File prn = new File(comFile.getName().replace(".com", ".prn"));
			try {
				generatePRN(prn, base, end);
			} catch (Exception ee) {
				// TODO: pop-up warning
				ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_A) {
			File asm = new File(comFile.getName().replace(".com", ".asm"));
			try {
				generateASM(asm, base, end);
			} catch (Exception ee) {
				// TODO: pop-up warning
				ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_S) {
			// TODO: pick file?
			File dz = new File(comFile.getName().replace(".com", ".dz"));
			try {
				generateDZ(dz, base, end);
			} catch (Exception ee) {
				// TODO: pop-up warning
				ee.printStackTrace();
			}
			return;
		}
		if (key == KeyEvent.VK_L) {
			// TODO: pick file? "append" option?
			File dz = new File(comFile.getName().replace(".com", ".dz"));
			try {
				loadDZ(dz);
			} catch (Exception ee) {
				// TODO: pop-up warning
				ee.printStackTrace();
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
			if (rv == JFileChooser.APPROVE_OPTION) {
				newJob(sfc.getSelectedFile());
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
		int bk = 0;
		if (k == 'B') {
			bk = 'B';
		} else if (k == 'C') {
			bk = 'C';
		} else if (k == 'I') {
			bk = 'I';
		} else if (k == 'L') {
			bk = 'L';
		} else if (k == 'W') {
			bk = 'W';
		} else if (k == 'X') {
			bk = 'X';
		} else if (k == 'R') {
			bk = 'R';
		} else if (k == '0') {
			bk = '0';
		} else if (k == '$') {
			bk = '$';
		} else if (k == '7') {
			bk = '7';
		} else if (k == ' ') {
			bk = ' ';
		}
		if (bk == 0) return false;
		if (bk == ' ') bk = 0;	// clear break
		putBrk(cursor, bk);
		resetBreaks(cursor, false);
		cur_len = getLen(cursor);
		code.repaint();
		dump.repaint();
		return true;
	}

	private void follow() {
		int a = -1;
		int ba = activeBreak(cursor);
		int bk = getBrk(ba);
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
		goAdr(a);
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
			goAdr(a);
		}
	}

	public void keyTyped(KeyEvent e) {
		int c = Character.toUpperCase(e.getKeyChar());
		if (c == 'A') {
			dest.setEnabled(true);
			dest.requestFocus();
		} else if (c == 'F') {
			follow();
		} else if (doBrkKey(c)) {
			return;
		} else {
			// more keys
		}
	}

	public void keyPressed(KeyEvent e) {
		int k = e.getKeyCode();
		int m = e.getModifiers();
		if (k == KeyEvent.VK_DOWN || k == KeyEvent.VK_KP_DOWN) {
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
			goAdr(base);
		} else if (k == KeyEvent.VK_END) {
			int c = end;
			int x = clines;
			while (x > 0 && c > base) {
				c = oneBack(c);
				--x;
			}
			goAdr(c);
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
