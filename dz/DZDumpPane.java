// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>

import java.awt.*;
import javax.swing.*;
import javax.swing.border.*;

public class DZDumpPane extends JPanel {
	DZDumpPainter p1;

	public DZDumpPane(DZDumpPainter dp) {
		super();
		setBorder(BorderFactory.createBevelBorder(BevelBorder.LOWERED));
		p1 = dp;
	}

	public void paint(Graphics g) {
		super.paint(g);
		Graphics2D g2d = (Graphics2D)g;
		p1.paintDump(g2d);
	}
}
