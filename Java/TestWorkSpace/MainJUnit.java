import com.fujitsu.ph.junit.exercise1.KeepHydrated;
import com.fujitsu.ph.junit.exercise2.School;
import com.fujitsu.ph.junit.exercise3.PhoneFormatter;
import com.fujitsu.ph.junit.exercise4.*;
import com.fujitsu.ph.junit.exercise5.*;

public class MainJUnit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//1
		/*
		KeepHydrated keepHydrated = new KeepHydrated();
		System.out.println(keepHydrated.computeLiters(1));
		*/
		//2
		/*
		School school = new School();
		int[] marks = {1,2,3,4,5};
		System.out.println(school.getAverage(marks));
		*/
		/*
		//3
		PhoneFormatter phoneFormatter = new PhoneFormatter();
		int[] phone = {0,9,2,2,1,2,3,4,5,6,7};
		System.out.println(phoneFormatter.format(phone));		
		
		phone = new int[]{6,3,9,2,2,1,2,3,4,5,6,7};
		int[] phn = null;
		System.out.println(phoneFormatter.format(phn));
		*/
		//4
		 /* jumpingNumber(9) ==> return "Jumping!!" It's single-digit number
				 /*
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
		/*
		JumpingNumber jumpingNumber = new JumpingNumber();
		System.out.println(jumpingNumber.isJumpingNumber(9));
		System.out.println(jumpingNumber.isJumpingNumber(87));
		System.out.println(jumpingNumber.isJumpingNumber(23));
		System.out.println(jumpingNumber.isJumpingNumber(556847));
		System.out.println(jumpingNumber.isJumpingNumber(4343456));
		System.out.println(jumpingNumber.isJumpingNumber(89098));
		System.out.println(jumpingNumber.isJumpingNumber(32));
		*/
		//5
		DayNumberConverter dayNumberConverter = new DayNumberConverter();
		System.out.println(dayNumberConverter.getDay(31, false));
		System.out.println(dayNumberConverter.getDay(31+ 29, false));
		System.out.println(dayNumberConverter.getDay(31+ 29, true));
	}

}
