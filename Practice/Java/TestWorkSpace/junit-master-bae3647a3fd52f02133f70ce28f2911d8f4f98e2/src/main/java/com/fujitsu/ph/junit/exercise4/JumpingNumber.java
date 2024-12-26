package com.fujitsu.ph.junit.exercise4;

/**
 * From codewars. Jumping Number
 * 
 * Jumping number is the number that All adjacent digits in it differ by 1.
 * Given a number, Find if it is Jumping or not .
 * 
 * Number passed is always Positive . Return the result as String . The
 * difference between e9f and e0f is not considered as 1 . All single digit
 * numbers are considered as Jumping numbers.
 * 
 * jumpingNumber(9) ==> return "Jumping!!" It's single-digit number
 * 
 * jumpingNumber(79) ==> return "Not!!" Adjacent digits don't differ by 1
 * 
 * jumpingNumber(23) ==> return "Jumping!!" Adjacent digits differ by 1
 * 
 * jumpingNumber(556847) ==> return "Not!!" Adjacent digits don't differ by 1
 * 
 * jumpingNumber(4343456) ==> return "Jumping!!" Adjacent digits differ by 1
 * 
 * jumpingNumber(89098) ==> return "Not!!" Adjacent digits don't differ by 1
 * 
 * jumpingNumber(32) ==> return "Jumping!!" Adjacent digits differ by 1
 * 
 */
public class JumpingNumber {
    public String isJumpingNumber(int number) {
        
        if (number <= 0) {
            throw new IllegalArgumentException("invalid number");
        }
        if (number < 10) {
        	return "Jumping!!\" It's single-digit number";
        }
        else {
        	String s = Integer.toString(number);

            for (int i = 0; i < s.length() - 1; i++) {
                int v1 = Integer.parseInt(s.substring(i, i + 1));
                int v2 = Integer.parseInt(s.substring(i + 1, i + 2));
                if (Math.abs(v1 - v2) != 1) {
                    return "Not!!\" Adjacent digits don't differ by 1";
        		}
           }
            return "Jumping!!\" Adjacent digits differ by 1";
        }
    }
}
