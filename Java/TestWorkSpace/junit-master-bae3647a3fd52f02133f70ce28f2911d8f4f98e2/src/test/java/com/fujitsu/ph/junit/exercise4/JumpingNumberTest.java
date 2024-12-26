package com.fujitsu.ph.junit.exercise4;

import static org.junit.Assert.*;

import org.junit.Test;

public class JumpingNumberTest {

    @Test
    public void testIsJumpingNumber_Single() {
    	JumpingNumber jumpingNumber = new JumpingNumber();
        assertTrue(jumpingNumber.isJumpingNumber(9).equals("Jumping!!\" It's single-digit number"));
    }

    @Test
    public void testIsJumpingNumber_DecreaseBy1() {
    	JumpingNumber jumpingNumber = new JumpingNumber();
        assertTrue(jumpingNumber.isJumpingNumber(87).equals("Jumping!!\" Adjacent digits differ by 1"));        
    }
	
    @Test
    public void testIsJumpingNumber_NotIncreaseBy1() {
    	JumpingNumber jumpingNumber = new JumpingNumber();
    	assertFalse(jumpingNumber.isJumpingNumber(79).equals("Jumping!!\" Adjacent digits differ by 1"));
    	assertTrue(jumpingNumber.isJumpingNumber(79).equals("Not!!\" Adjacent digits don't differ by 1"));
    }
    
    @Test(expected=IllegalArgumentException.class)
    public void testIsJumpingNumber_IsNegative() {
    	JumpingNumber jumpingNumber = new JumpingNumber();
    	assertTrue(jumpingNumber.isJumpingNumber(-1).equals("Jumping!!\" Adjacent digits differ by 1"));        
    }

}
