package com.fujitsu.ph.junit.demo;

public class MathOperations {

	public Integer add(Integer firstNum, Integer secondNum) {
		if (checkForNull(firstNum) || checkForNull(secondNum)) {
			throw new IllegalArgumentException("null not allowed");
		}
		return firstNum + secondNum;
	}

	public Integer subtract(Integer minuend, Integer subtrahend) {
		if (checkForNull(minuend) || checkForNull(subtrahend)) {
			throw new IllegalArgumentException("null not allowed");
		}
		return minuend - subtrahend;
	}

	public Integer multiply(Integer firstNum, int secondNum) {
		if (checkForNull(firstNum) || checkForNull(secondNum)) {
			throw new IllegalArgumentException("null not allowed");
		}
		return firstNum * secondNum;
	}

	public Integer divide(Integer dividend, Integer divisor) {
		if (checkForNull(dividend) || checkForNull(divisor)) {
			throw new IllegalArgumentException("null not allowed");
		}
		return dividend / divisor;
	}

	private boolean checkForNull(Integer number) {
		if (number == null) {
			return true;
		} else {
			return false;
		}
	}

}
