package com.fujitsu.ph.junit.exercises;



/**
 * Checks whether a number is prime or not. Returns true of prime, false otherwise.
 */
public class PrimeNumberChecker {
	public Boolean validate(final Integer primeNumber) {
		for (int i = 2; i < (primeNumber / 2); i++) {
			if (primeNumber % i == 0) {
				return false;
			}
		}
		return true;
	}

}
