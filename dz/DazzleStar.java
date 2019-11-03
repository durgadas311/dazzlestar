// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;
import java.io.*;
import java.util.Properties;

public class DazzleStar implements DZCodePainter, DZDumpPainter, Memory,
			ActionListener {
	static DazzleStar _us;
	String com;
	byte[] obj;
	Z80Disassembler dis;
	JFrame frame;
	DZCodePane code;
	DZDumpPane dump;
	Font font;
	int clines;
	int dlines;

	int addr;
	int base;

	FontMetrics _fm;
	int _fa;
	int _fw;
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
		addr = 0x0100;
		base = 0x0100;
		if (dis == null) {
			dis = new Z80DisassemblerMAC80(this);
		}
		frame = new JFrame("DazzleStar TNG");
		frame.getContentPane().setName("DazzleStar TNG");
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // TODO: save!
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
		// TODO: get Properties...
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
		JPanel pan = new JPanel();
		pan.setLayout(new BoxLayout(pan, BoxLayout.Y_AXIS));
		pan.add(code);
		pan.add(dump);
		frame.add(pan);
		// done setup on frame...
		frame.pack();
		frame.setVisible(true);
	}

	private void setupFont() {
		_fm = code.getFontMetrics(font);
		_fa = _fm.getAscent();
		_fw = _fm.charWidth('M');
		_fh = _fm.getHeight();
	}

	public void paintCode(Graphics2D g2d) {
		int a = addr;
		int x = bd_width;
		int y = _fa + bd_width;
		String s;
		String i;
		int n;
		for (int l = 0; l < clines; ++l) {
			i = dis.disas(a);
			n = dis.instrLen();
			s = String.format("? %04x ", a);
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

	public void paintDump(Graphics2D g2d) {
		g2d.setFont(font);
		int a = addr;	// TODO: diff range from code...
		String s;
		int x = bd_width;
		int y = _fa + bd_width;
		int c;
		for (int l = 0; l < dlines; ++l) {
			s = String.format("%04x ", a);
			for (int z = 0; z < 16; ++z) {
				if (a + z < obj.length) {
					s += String.format(" %02x", read(a + z));
				} else {
					s += " --";
				}
			}
			s += "  ";
			for (int z = 0; z < 16; ++z) {
				if (a + z < obj.length) {
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

	public void actionPerformed(ActionEvent e) {
		if (!(e.getSource() instanceof JMenuItem)) {
			return;
		}
		JMenuItem m = (JMenuItem)e.getSource();
		int key = m.getMnemonic();
		if (key == KeyEvent.VK_Q) {
			System.exit(1);
		}
	}

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
