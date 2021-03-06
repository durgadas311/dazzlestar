// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.*;
import javax.swing.*;
import javax.swing.border.*;

public class DZCodePane extends JPanel {
	DZCodePainter p1;

	public DZCodePane(DZCodePainter cp) {
		super();
		Color c = getBackground();
		setBorder(BorderFactory.createBevelBorder(BevelBorder.LOWERED,
			c.brighter(), c.brighter(),
			c.darker(), c.darker()));
		p1 = cp;
	}

	public void paint(Graphics g) {
		super.paint(g);
		Graphics2D g2d = (Graphics2D)g;
		p1.paintCode(g2d);
	}
}
