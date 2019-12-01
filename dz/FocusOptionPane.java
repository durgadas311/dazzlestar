import java.awt.*;
import javax.swing.*;

public class FocusOptionPane extends JOptionPane {
	public static int focusConfirmDialog(Component parent,
			Object message, String title, int optionType,
			JComponent focus) throws HeadlessException {
		JOptionPane pane = new JOptionPane(message, QUESTION_MESSAGE,
				optionType, null, null, null) {
			@Override
			public void selectInitialValue() {
				focus.requestFocusInWindow();
			}
		};
		pane.setComponentOrientation(((parent == null) ?
			getRootFrame() : parent).getComponentOrientation());
		JDialog dialog = pane.createDialog(parent, title);
		pane.selectInitialValue();
		dialog.setVisible(true);
		dialog.dispose();
		Object res = pane.getValue();
		if (res instanceof Integer) {
			return ((Integer)res).intValue();
		}
		return CLOSED_OPTION;
	}
}
