// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Properties;

public class DazzleStar implements DZCodePainter, DZDumpPainter, Memory,
			KeyListener, ActionListener {
	static DazzleStar _us;
	String com;
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
			InputStream f = new FileInputStream(args[0]);
			obj = new byte[f.available()];
			brk = new byte[f.available()];
			len = new byte[f.available()];
			f.read(obj);
			f.close();
		} catch (Exception ee) {
			ee.printStackTrace();
			System.exit(1);
		}
		// file must exist... assume a COM file...
		com = args[0];
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
		setBreaks();
		frame = new JFrame("DazzleStar TNG");
		frame.getContentPane().setName("DazzleStar TNG");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // TODO: save!
		frame.addKeyListener(this);
		// This allows TAB to be sent
		frame.setFocusTraversalKeysEnabled(false);

		JMenuBar mb = new JMenuBar();
		// File menu...
		JMenu mu = new JMenu("File");
		JMenuItem mi = new JMenuItem("Quit (no save)", KeyEvent.VK_Q);
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

	private void setLen(int a, int n) {
		len[a - base] = (byte)n;
	}

	// Setup/rescan breaks and lengths...
	private void setBreaks() {
		// TODO: default to "I"... but handle all...
		for (int x = base; x < end;) {
			// TODO: check brk[]...
			String i = dis.disas(x);
			int n = dis.instrLen();
			setLen(x, n);
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

	public void paintCode(Graphics2D g2d) {
		int a = cwin;
		int x = bd_width;
		int y = _fa + bd_width;
		String s;
		String i;
		int n;
		for (int l = 0; l < clines; ++l) {
			i = dis.disas(a);
			n = dis.instrLen();
			s = String.format("? %04x ", a);
			if (cursor >= a && cursor < a + n) {
				if (a == cursor) {
					g2d.setColor(hilite);
				} else {
					g2d.setColor(liter);
				}
				g2d.fillRect(x, y - _fa, 80 * _fw, _fh);
				g2d.setColor(code.getForeground());
			}
			for (int z = 0; z < 4; ++z) {
				if (z < n) {
					s += String.format(" %02x", read(a));
					++a;
				} else {
					s += "   ";
				}
			}
			s += "  ";
			s += i;
			g2d.drawString(s, x, y);
			y += _fh;
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

	private void menuAction(JMenuItem m) {
		int key = m.getMnemonic();
		if (key == KeyEvent.VK_Q) {
			System.exit(1);
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

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() instanceof JMenuItem) {
			menuAction((JMenuItem)e.getSource());
		} else if (e.getSource() instanceof JButton) {
			buttonAction((JButton)e.getSource());
		}
	}

	public void keyTyped(KeyEvent e) {}
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
		} else if (k == KeyEvent.VK_A) {
			adrDialog();
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
