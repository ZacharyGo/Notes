package com.fujitsu.ph.junit.exercises;

/**
 * Extracts the individual digits from the given number and returns it in
 * reverse order with a single whitespace between digits
 * 
 * e.g.
 * 12345 = 5 4 3 2 1
 * 
 */
public class ExtractDigits {

	public String extract(int input) {
		StringBuffer outputStr = new StringBuffer();
		while (input > 0) {
			int digit = input % 10;
			outputStr.append(digit);
			outputStr.append(" ");
			input = input / 10;
		}

		return outputStr.toString();
	}
}
