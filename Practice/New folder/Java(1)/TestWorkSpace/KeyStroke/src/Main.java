import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.concurrent.TimeUnit;

import javax.swing.JButton;
import javax.swing.JFrame;
public class Main {

	public static void main(String[] args) throws Exception {
		Boolean scrolllockState;
		/*for (int i = 0; i < 1000; i++) {
			capslockState = Toolkit.getDefaultToolkit().getLockingKeyState(KeyEvent.VK_CAPS_LOCK);
			System.out.println(Toolkit.getDefaultToolkit().getLockingKeyState(KeyEvent.VK_SCROLL_LOCK));
			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, !capslockState);
			TimeUnit.MINUTES.sleep(1);
		} 
*/
		JFrame topFrame = new JFrame();
	    topFrame.addWindowListener(new WindowAdapter() {
	        public void windowClosing(WindowEvent e) {
	            System.exit(0);
	        }
	    });
	    topFrame.setLocation(100, 100);
	    topFrame.setSize( new Dimension (100, 100));
	    topFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	    JButton testButton= new JButton ("Exit");
	    testButton.addActionListener(new ActionListener() {
	        public void actionPerformed(ActionEvent e) {
	        	topFrame.dispatchEvent(new WindowEvent(topFrame, WindowEvent.WINDOW_CLOSING));;	    	        	
	        } 
	    });
	    testButton.setFocusPainted(false);
	    testButton.setFont(new Font("Arial", Font.PLAIN, 40));
	    topFrame.getContentPane().add (testButton);
	    topFrame.validate();
	    topFrame.setVisible(true);
	    for (int i = 0; i <10000; i++) {
	    	testButton.setText(String.valueOf(i));
	    	testButton.setBackground(Color.RED);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, true);
	    	//Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, false);
	    	System.out.println(i);
	    	System.out.println("Value retrieved from client : " );
	    	TimeUnit.SECONDS.sleep(3);
	    	testButton.setBackground(Color.BLUE);
	    	//Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, true);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, false);
	    	TimeUnit.SECONDS.sleep(3);
	    	System.out.println(i);
			testButton.setBackground(Color.GRAY);
	    	TimeUnit.SECONDS.sleep(10);		
		}
	    testButton.doClick();
	}

}
