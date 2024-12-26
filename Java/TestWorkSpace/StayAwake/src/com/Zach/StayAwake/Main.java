package com.Zach.StayAwake;

import java.awt.AWTException;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import javax.swing.JButton;
import javax.swing.JFrame;

public class Main {

	public static void main(String[] args) throws AWTException  {
		Robot hal = new Robot();
        Random random = new Random();
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
	    System.out.println("1");
        while(Toolkit.getDefaultToolkit().getLockingKeyState(KeyEvent.VK_CAPS_LOCK)){
            hal.delay(1000 * 5);
            int x = random.nextInt() % 640;
            int y = random.nextInt() % 480;
            hal.mouseMove(x,y);
            
        }
        topFrame.dispatchEvent(new WindowEvent(topFrame, WindowEvent.WINDOW_CLOSING));;	 

	}
	
	public static void Lights() throws InterruptedException {
		Boolean scrolllockState;

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
	    Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_NUM_LOCK, false);
	    Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, false);
	    Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, false);
    	
		for (int i = 0; i <10000; i++) {
			testButton.setText(String.valueOf(i));
			testButton.setBackground(Color.GRAY);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_NUM_LOCK, true);
			System.out.print("Nums Lock : " + i);
			TimeUnit.SECONDS.sleep(1);
			testButton.setBackground(Color.RED);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_NUM_LOCK, false);
	    	System.out.print("Nums Lock : " + i);
			TimeUnit.SECONDS.sleep(1);
	 
			testButton.setBackground(Color.BLUE);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, true);
			System.out.print("Caps Lock : " + i);
			TimeUnit.SECONDS.sleep(1);
			testButton.setBackground(Color.GREEN);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_CAPS_LOCK, false);
			System.out.print("Caps Lock : " + i);
			TimeUnit.SECONDS.sleep(1);
	    	
			testButton.setBackground(Color.YELLOW);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, true);
	    	System.out.print("Scroll Lock : " + i);
			TimeUnit.SECONDS.sleep(1);
	    	testButton.setBackground(Color.ORANGE);
	    	Toolkit.getDefaultToolkit().setLockingKeyState(KeyEvent.VK_SCROLL_LOCK, false);
	    	System.out.print("Scroll Lock : " + i);
			TimeUnit.SECONDS.sleep(1);
			
	    	testButton.setBackground(Color.DARK_GRAY);
	    	TimeUnit.SECONDS.sleep(1);
	    	
		}
	}

}
