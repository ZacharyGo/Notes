package com.fujitsu.ph.junit.exercise5;
/**
 * From codewars
 * What date corresponds to the nth day of the year?
 * The answer depends on whether the year is a leap year or not.
 * 
 * Write a function that will help you determine the date if you know the 
 * number of the day in the year, as well as whether the year is a leap year or not.
 * The function accepts the day number and a boolean value isLeap as arguments, 
 * and returns the corresponding date of the year as a string "Month, day".
 * 
 * Only valid combinations of a day number and isLeap will be tested.
 * A valid day starts with 1
 */
public class DayNumberConverter {
    public static String getDay(int day, boolean isLeap) {
        
        if (day > 366 || (!isLeap && day > 365)) {
            throw new IllegalArgumentException("invalid date");
        }
        
        String[] monthString = {"January", "February", "March", "April", 
                                "May", "June", "July", "August", "September", 
                                "October", "November", "December"};
        int[] monthDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        if (isLeap) {
          monthDays[1] = 29;
        }
        
        for (int i = 0; i < monthDays.length; i++) {
          int t = day - monthDays[i];
          if (t <= 0) {
            return String.format("%s, %d", monthString[i], day);
          }
          day = t;
        }
        
        return "";
      }

}