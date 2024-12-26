package com.fujitsu.ph.junit.exercise2;

import static org.junit.Assert.*;

import org.junit.Test;

public class SchoolTest {

    //TODO
    @Test
    public void testGetAverage() {
        int[] marks = {1,2,3,4,5}; 
        int average = School.getAverage(marks);
        int expected = 3;
        assertEquals(expected, average);
    }

    //TODO
    @Test(expected=IllegalArgumentException.class)
    public void testGetAverage_IsNull() {
        int[] marks = null;
        int average = School.getAverage(marks);
    }

    //TODO
    @Test(expected=IllegalArgumentException.class)
    public void testGetAverage_IsEmpty() {
        int[] marks = {};
        int average = School.getAverage(marks);
    }

}
