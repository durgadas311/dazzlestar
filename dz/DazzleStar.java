// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Properties;

public class DazzleStar implements DZCodePainter, DZDumpPainter, Memory,
			KeyListener, ActionListener {
	static DazzleStar _us;
	File comFile;
	byte[] obj;
	byte[] brk;	// breaks
	byte[] len;	// length of "instructions" (lines)
	Z80Disassembler dis;
	JFrame frame;
	DZCodePane code;
	DZDumpPane dump;
	Font font;
	JTextField dest;
	JPanel gopn;
	Color hilite;
	Color liter;
	int clines;
	int dlines;

	int base;
	int end;
	int cursor;
	int cur_len;
	int cwin;
	int cend;
	int dwin;
	int dend;

	FontMetrics _fm;
	int _fa;
	int _fw;
	int _fw2;
	int _fh;
	int bd_width = 3; // some number

	public static void main(String[] args) {
		_us = new DazzleStar(args);
		// _us.start(); ??
	}

	private void help() {
		System.err.format("Usage: DazzleStar <com-file>\n");
		System.exit(1);
	}

	private DazzleStar(String[] args) {
		if (args.length < 1) {
			help();	// does not return
		}
		try {
			File fi = new File(args[0]);
			InputStream f = new FileInputStream(fi);
			obj = new byte[f.available()];
			brk = new byte[f.available()];
			len = new byte[f.available()];
			f.read(obj);
			f.close();
			comFile = fi;
		} catch (Exception ee) {
			ee.printStackTrace();
			System.exit(1);
		}
		for (int x = 1; x < args.length; ++x) {
			if (args[x].equalsIgnoreCase("ZILOG")) {
				dis = new Z80DisassemblerZilog(this);
				continue;
			} else if (args[x].equalsIgnoreCase("MAC80")) {
				// default is this, done later...
				continue;
			}
			System.err.format("Unrecognized argument: \"%s\"\n", args[x]);
		}
		if (dis == null) {
			dis = new Z80DisassemblerMAC80(this);
		}
		base = 0x0100;
		end = base + obj.length;
		resetBreaks(base);
		frame = new JFrame("DazzleStar TNG");
		frame.getContentPane().setName("DazzleStar TNG");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // TODO: save!
		frame.addKeyListener(this);
		// This allows TAB to be sent
		frame.setFocusTraversalKeysEnabled(false);

		JMenuBar mb = new JMenuBar();
		// File menu...
		JMenu mu = new JMenu("File");
		JMenuItem mi = new JMenuItem("Generate PRN", KeyEvent.VK_P);
		mi.addActionListener(this);
		mu.add(mi);
		mi = new JMenuItem("Quit (no save)", KeyEvent.VK_Q);
		mi.addActionListener(this);
		mu.add(mi);
		mb.add(mu);
		// done with File menu
		frame.setJMenuBar(mb);
		// This is the main container of everything (exc. menus)
		JPanel pan = new JPanel();
		pan.setLayout(new BoxLayout(pan, BoxLayout.Y_AXIS));

		// TODO: get Properties...
		hilite = Color.yellow;
		liter = hilite.darker();

		dest = new JTextField();
		dest.setPreferredSize(new Dimension(50, 20));
		dest.setEditable(true);
		JPanel pn = new JPanel();
		pn.setLayout(new BoxLayout(pn, BoxLayout.X_AXIS));
		pn.add(dest);
		gopn = pn;

		font = new Font("Monospaced", Font.PLAIN, 10);
		clines = 24;
		dlines = 6;
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
	private void resetBreaks(int a) {
		int n;
		int b;
		int ba = activeBreak(a);
		int bk = getBrk(ba);
		if (bk == 0) bk = 'I';
		for (int x = a; x < end;) {
			b = getBrk(x);
			if (b != 0) {
				if (x != a) break;
				bk = b;
			}
			switch (bk) {
			case 'I':
				n = dis.disas(x).len;
				break;
			case 'B':
				// TODO: what length?
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
		// TODO: break type...
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

	private String lookup(int a) {
		// TODO: symtab
		return String.format("L%04x", a);
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
					String.format(d.fmt, lookup(d.addr)));
			}
		case 'L':
			// assert: n == 2
			z = read(a) | (read(a + 1) << 8);
			return String.format("dw      %s", lookup(z));
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
			return String.format("dw      %s-$", lookup(z));
		case 'B':
			// TODO: radix
			s = "db      ";
			for (z = 0; z < n; ++z) {
				if (z != 0) s += ',';
				s += String.format("%d", read(a++));
			}
			return s;
		case '0':
			// assert read(a + n - 1) == 0
			// TODO: non-ASCII and ' handling
			s = "db      '";
			s += new String(obj, a - base, n - 1);
			s += "',0";
			return s;
		case '$':
			// assert read(a + n - 1) == '$'
			// TODO: non-ASCII and ' handling
			s = "db      '";
			s += new String(obj, a - base, n);
			s += '\'';
			return s;
		case '7':
			// assert read(a + n - 1) & 0x80 == 0x80
			// TODO: non-ASCII and ' handling
			s = "db      '";
			s += new String(obj, a - base, n);
			s += "'+80H";
			return s;
		}
		return "?"; // or dis.disas()?
	}

	public void paintCode(Graphics2D g2d) {
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
		g2d.setFont(font);
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
					ps.format(" %02x", read(a + z));
				} else {
					ps.format("   ");
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
		}
	}

	private void buttonAction(JButton b) {
	}

	private void adrDialog() {
		String title = "GoTo Address";
		int res = JOptionPane.showOptionDialog(frame, dest, title,
			JOptionPane.OK_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE,
			null, null, null);
		if (res != JOptionPane.OK_OPTION) return;
		if (dest.getText().length() == 0) return;
		int a = -1;
		try {
			a = Integer.valueOf(dest.getText(), 16);
		} catch (Exception ee) {}
		dest.setText("");
		if (a < base || a >= end) return;
		goAdr(a);
	}

	private boolean doBrkKey(int k) {
		int bk = 0;
		if (k == 'B') {
			bk = 'B';
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
		resetBreaks(cursor);
		cur_len = getLen(cursor);
		code.repaint();
		dump.repaint();
		return true;
	}

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() instanceof JMenuItem) {
			menuAction((JMenuItem)e.getSource());
		} else if (e.getSource() instanceof JButton) {
			buttonAction((JButton)e.getSource());
		}
	}

	public void keyTyped(KeyEvent e) {
		int c = Character.toUpperCase(e.getKeyChar());
		if (c == 'A') {
			adrDialog();
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
