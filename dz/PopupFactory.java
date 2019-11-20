// Copyright (c) 2017 Douglas Miller <durgadas311@gmail.com>

import java.awt.*;
import javax.swing.*;

public class PopupFactory {
	public static void warning(Component top, String op, String err) {
		JOptionPane.showMessageDialog(top,
			new JLabel(err),
			op + " Warning", JOptionPane.WARNING_MESSAGE);
	}

	public static void inform(Component top, String op, String err) {
		JOptionPane.showMessageDialog(top,
			new JLabel(err),
			op + " Information", JOptionPane.INFORMATION_MESSAGE);
	}

	public static int confirm(Component top, String op, String err) {
		int res = JOptionPane.showConfirmDialog(top,
			new JLabel(err),
			op + " Confirmation", JOptionPane.YES_NO_OPTION);
		return res;
	}
}
