// Copyright (c) 2019 Douglas Miller <durgadas311@gmail.com>
// $Id: SuffFileChooser.java,v 1.4 2014/01/14 21:53:51 drmiller Exp $

import java.awt.*;
import java.io.*;
import javax.swing.*;

class SuffFileChooser extends JFileChooser {
	static final long serialVersionUID = 311457692041L;
	private String _btn;
	public SuffFileChooser(String btn, String[] sfx, String[] dsc,
			File dir, JComponent opts) {
		super(dir);
		if (sfx != null && dsc != null && sfx.length == dsc.length) {
			SuffFileFilter f = new SuffFileFilter(sfx[0], dsc[0]);
			setFileFilter(f);
			for (int i = 1; i < dsc.length; ++i) {
				f = new SuffFileFilter(sfx[i], dsc[i]);
				addChoosableFileFilter(f);
			}
		}
		_btn = btn;
		setApproveButtonText(btn);
		setApproveButtonToolTipText(btn);
		setDialogTitle(btn);
		setDialogType(JFileChooser.SAVE_DIALOG);
		if (opts != null) {
			setAccessory(opts);
		}
	}
	public int showDialog(Component frame) {
		int rv = super.showDialog(frame, _btn);
		if (rv == JFileChooser.APPROVE_OPTION) {
			javax.swing.filechooser.FileFilter ff = getFileFilter();
			if (ff instanceof SuffFileFilter) {
				SuffFileFilter fi = (SuffFileFilter)getFileFilter();
				String sfx = "." + fi.getSuffix();
				if (getSelectedFile().getName().endsWith(sfx)) {
					return rv;
				}
				File f = new File(getSelectedFile().getAbsolutePath().concat(sfx));
				setSelectedFile(f);
			}
		}
		return rv;
	}
}
