package com.fujitsu.ph.junit.exercise1;

/**
 * From codewars. Keep Hydrated!
 * Nathan loves cycling.
 * Because Nathan knows it is important to stay hydrated, he drinks 0.5 litres of water per hour of cycling.
 * You get given the time in hours and you need to return the 
 * number of litres Nathan will drink, rounded to the smallest value.
 * For example:
 * time = 3 ----> litres = 1
 * time = 6.7---> litres = 3
 * time = 11.8--> litres = 5
 * 
 * Time only accepts positive values
 */

public class KeepHydrated {

    public double computeLiters(double time) {

        if (time <= 0) {
            throw new IllegalArgumentException("time only accepts positive values");
        }
        
        return (int) time * 0.5;

    }
    
}
