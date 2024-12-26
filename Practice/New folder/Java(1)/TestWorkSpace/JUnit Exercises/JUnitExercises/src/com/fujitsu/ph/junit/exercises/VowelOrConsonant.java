package com.fujitsu.ph.junit.exercises;


/**
 *  Returns true if the input character is a vowel, returns false otherwise
 */
public class VowelOrConsonant {

	public boolean isVowel(char ch) {

		if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u')
			return true;
		else
			return false;
	}
}