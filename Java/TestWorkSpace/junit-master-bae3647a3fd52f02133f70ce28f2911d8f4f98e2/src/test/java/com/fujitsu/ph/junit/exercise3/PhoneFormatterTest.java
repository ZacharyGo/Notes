package com.fujitsu.ph.junit.exercise3;

import static org.junit.Assert.*;

import org.junit.Test;

public class PhoneFormatterTest {

    @Test
    public void testFormat_LengthIs11() {
    	int[] phone = {0,9,2,2,1,2,3,4,5,6,7};
    	String expected = "(0922) 123-4567";
    	assertEquals(expected, PhoneFormatter.format(phone));
    }

    @Test
    public void testFormat_LengthIs12() {
    	int[] phone = {6,3,9,2,2,1,2,3,4,5,6,7};
    	String expected = "(63922) 123-4567";
    	assertEquals(expected, PhoneFormatter.format(phone));
    }

    @Test(expected=IllegalArgumentException.class)
    public void testFormat_IsNull() {
    	int[] phone = null;
    	String expected = "null";
    	assertEquals(expected, PhoneFormatter.format(phone));
    }

    @Test(expected=IllegalArgumentException.class)
    public void testFormat_LengthIsNot11And12() {
    	int[] phone = {6,3,1,2,3,4,5,6,7};
    	String expected = "(62)1234567";
    	assertEquals(expected, PhoneFormatter.format(phone));
    }

}
