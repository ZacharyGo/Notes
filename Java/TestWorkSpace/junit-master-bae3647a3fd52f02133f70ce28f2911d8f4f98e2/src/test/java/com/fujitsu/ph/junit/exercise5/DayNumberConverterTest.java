package com.fujitsu.ph.junit.exercise5;

import static org.junit.Assert.*;

import org.junit.Test;

public class DayNumberConverterTest {

    @Test
    public void testGetDay_01() {
    	
    	DayNumberConverter dayNumberConverter = new DayNumberConverter();
    	int days = 31;
        String expected = "January, 31";
        assertEquals(expected, dayNumberConverter.getDay(days, true));
    }

    @Test
    public void testGetDay_02() {
        DayNumberConverter dayNumberConverter = new DayNumberConverter();
    	int days = 31 + 29;
        String expected = "March, 1";
        assertEquals(expected, dayNumberConverter.getDay(days, false));
        expected = "February, 29";
        assertEquals(expected, dayNumberConverter.getDay(days, true));
    }

}
