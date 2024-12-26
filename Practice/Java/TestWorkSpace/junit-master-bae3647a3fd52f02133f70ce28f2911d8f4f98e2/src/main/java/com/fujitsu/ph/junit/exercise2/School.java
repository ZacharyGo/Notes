package com.fujitsu.ph.junit.exercise2;

/**
 * From codewars. Get the mean of an array
 * 
 * It's the academic year's end, fateful moment of your school report. 
 * The averages must be calculated. All the students come to you and entreat you to 
 * calculate their average for them. Easy ! You just need to write a script.
 * Return the average of the given array rounded down to its nearest integer.
 */

public class School {
    
    public static int getAverage(int[] marks) {
        if (marks == null || marks.length == 0) {
            throw new IllegalArgumentException("marks should not be null or empty");
        }
        
        int total = 0;
        for (int i : marks) {
          total += i;
        }
        
        return total / marks.length;
        
      }
}
