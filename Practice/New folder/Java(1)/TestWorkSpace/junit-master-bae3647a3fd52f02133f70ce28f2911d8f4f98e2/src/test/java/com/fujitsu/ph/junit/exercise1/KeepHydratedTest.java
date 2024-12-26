package com.fujitsu.ph.junit.exercise1;

import static org.junit.Assert.*;

import org.junit.Test;

public class KeepHydratedTest {

    @Test
    public void testComputeLiters() {
        KeepHydrated keepHydrated = new KeepHydrated();
        //Test 1: 
        double value = 1;
        double expected = 0.5;
        assertEquals(expected, keepHydrated.computeLiters(value), 0.01);
        //Test 2: 
        value = 2;
        expected = 1.0;
        assertEquals(expected, keepHydrated.computeLiters(value), 0.01);
        //Test 3: 
        value = 3;
        expected = 1.5;
        assertEquals(expected, keepHydrated.computeLiters(value), 0.01);
        //Test 4: 
        value = 4;
        expected = 2;
        assertEquals(expected, keepHydrated.computeLiters(value), 0.01);
        //Test 5: 
        value = 5;
        expected = 2.5;
        assertEquals(expected, keepHydrated.computeLiters(value), 0.01);
      
    }

    @Test(expected=IllegalArgumentException.class)
    public void testComputeLiters_NotAPositiveNumber() {
        KeepHydrated keepHydrated = new KeepHydrated();
        //TODO: 
        double value = -1;
        
        keepHydrated.computeLiters(value);
    }

}