import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.time.Duration;
import java.time.Instant;
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
	    if (args.length == 0) {
	    		args = new String [1];
	    		args[0] = "Z";
	    }
	    Instant start = Instant.now();
	    Instant end  = Instant.now();
	    for (int i = 0; i <100000; i++) {
	    	testButton.setText(String.valueOf(i));
	    	testButton.setBackground(Color.RED);
	    	System.out.print("Value retrieved from " );
	    	switch (args[0]) {
	    		case "C" :
	    			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, true);
	    			System.out.print("Caps Lock : ");
	    			break;
	    		case "S" :
	    			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, true);
	    			System.out.print("Scroll Lock : ");
	    			break;
	    		case "M" :
	    			Robot robot = new Robot();
	    	         robot.mousePress(InputEvent.BUTTON1_MASK);
	    	         robot.mouseRelease(InputEvent.BUTTON1_MASK);
	    	        //robot.keyPress(KeyEvent.VK_A);
	    			System.out.print("Mouse Press : ");
	    			break;
	    		case "K" :
	    			Robot robot2 = new Robot();
	    	         robot2.keyPress(65);
	    	         System.out.print("A : ");
	    			break;
	    		default :
	    			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_NUM_LOCK, false);
	    			System.out.print("Nums Lock : ");
	    	}
	    	java.awt.Toolkit.getDefaultToolkit().beep();
	    	end = Instant.now();
	    	//System.out.print(i);
	    	Duration timeElapsed = Duration.between(start, end);
	    	System.out.print("Current Time: " + end + "(");
	    	System.out.println(i + " - " + timeElapsed.toMillis() + ")");
	    	start = end;
	    	TimeUnit.SECONDS.sleep(1);
	    	testButton.setBackground(Color.BLUE);

	    	switch (args[0]) {
    		case "C" :
    			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, false);
    			break;
    		case "S" :
    			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, false);
    			break;
    		case "M" :
    			Robot robot = new Robot();
    	        robot.mousePress(InputEvent.BUTTON1_MASK);
    			robot.mouseRelease(InputEvent.BUTTON1_MASK);
    	        //robot.keyPress(KeyEvent.VK_A);
    			System.out.print("Mouse Press : ");
    			break;
    		case "K" :
    			Robot robot2 = new Robot();
    	         robot2.keyPress(97);
    	         System.out.print("A : ");
    			break;
    		default :
    			Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_NUM_LOCK, true);
	    	}

	    	TimeUnit.SECONDS.sleep(1);
	    	testButton.setBackground(Color.GRAY);
	    	TimeUnit.SECONDS.sleep(1);
			java.awt.Toolkit.getDefaultToolkit().beep();
		}
	    testButton.doClick();
	}

}
