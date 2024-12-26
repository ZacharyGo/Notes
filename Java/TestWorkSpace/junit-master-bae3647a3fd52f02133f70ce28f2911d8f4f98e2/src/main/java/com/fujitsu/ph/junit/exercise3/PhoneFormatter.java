package com.fujitsu.ph.junit.exercise3;

/**
 * if length of array is 11 format it this way
 * [0,9,1,7,1,2,3,9,8,7,6] ==> (0917) 123-9876
 * 
 * if length of array is 12 format it this way
 * [6,3,9,1,7,1,2,3,9,8,7,6] ==> (63917) 123-9876
 * 
 *
 */
public class PhoneFormatter {
    
    public static String format(int[] phone) {
        if (phone == null || (phone.length != 11 && phone.length != 12)) {
            throw new IllegalArgumentException("invalid phones");
        }
        
        if (phone.length == 11) {
            return String.format("(%d%d%d%d) %d%d%d-%d%d%d%d", phone[0], phone[1], phone[2], phone[3],
                    phone[4], phone[5], phone[6], phone[7], phone[8], phone[9], phone[10]);
        }
        
        return String.format("(%d%d%d%d%d) %d%d%d-%d%d%d%d", phone[0], phone[1], phone[2], phone[3],
                phone[4], phone[5], phone[6], phone[7], phone[8], phone[9], phone[10], phone[11]);
    }
    

}
