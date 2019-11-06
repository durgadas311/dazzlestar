// Copyright (c) 2017 Douglas Miller <durgadas311@gmail.com>

import java.util.Stack;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.HyperlinkEvent;
import javax.swing.event.HyperlinkListener;

public class GenericHelp extends JFrame
	implements ActionListener, WindowListener,
		HyperlinkListener
{
	JEditorPane _text;
	JScrollPane _scroll;
	Stack<java.net.URL> _history;
	java.net.URL _home;

	JButton back;
	JButton home;

	public GenericHelp(String title, java.net.URL url) {
		super(title);
		_history = new Stack<java.net.URL>();
		_home = url;
		JMenuBar mb = new JMenuBar();
		home = new JButton("Home");
		home.setMnemonic(KeyEvent.VK_H);
		home.addActionListener(this);
		back = new JButton("Back");
		back.setMnemonic(KeyEvent.VK_B);
		back.addActionListener(this);
		back.setEnabled(false);
		mb.add(back);
		mb.add(home);
		setJMenuBar(mb);
		try {
			_text = new JEditorPane(url);
		} catch (Exception ee) {
			_text = new JEditorPane();
		}
		_text.setEditable(false);
		_text.setFont(new Font("Sans-serif", Font.PLAIN, 12));
		_text.addHyperlinkListener(this);
		_scroll = new JScrollPane(_text);
		_scroll.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		_scroll.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_AS_NEEDED);
		_scroll.setPreferredSize(new Dimension(600, 320));
		add(_scroll, BorderLayout.CENTER);
		pack();
		addWindowListener(this);
	}

	public void actionPerformed(ActionEvent e) {
		if (!(e.getSource() instanceof JButton)) {
			return;
		}
		JButton btn = (JButton)e.getSource();
		if (btn == back) {
			if (!_history.empty()) try {
				java.net.URL prev = _history.pop();
				_text.setPage(prev);
			} catch (Exception ee) {}
			back.setEnabled(!_history.empty());
			return;
		}
		if (btn == home) {
			try {
				_text.setPage(_home);
				_history.clear();
			} catch (Exception ee) {}
			back.setEnabled(!_history.empty());
			return;
		}
	}

	public void windowActivated(WindowEvent e) { }
	public void windowClosed(WindowEvent e) { }
	public void windowIconified(WindowEvent e) { }
	public void windowOpened(WindowEvent e) { }
	public void windowDeiconified(WindowEvent e) { }
	public void windowDeactivated(WindowEvent e) { }
	public void windowClosing(WindowEvent e) {
		if (e.getWindow() == this) {
			setVisible(false);
			return;
		}
	}

	public void hyperlinkUpdate(HyperlinkEvent r) {
		if (r.getEventType() == HyperlinkEvent.EventType.ACTIVATED) {
			try {
				java.net.URL prev = _text.getPage();
				_text.setPage(r.getURL());
				_history.push(prev);
				back.setEnabled(true);
			} catch (Exception ee) {}
			return;
		}
	}
}
