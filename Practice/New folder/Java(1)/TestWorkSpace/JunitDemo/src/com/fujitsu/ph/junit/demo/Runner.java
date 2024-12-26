package com.fujitsu.ph.junit.demo;

public class Runner {

	public static void main(String[] args) {
		MathOperations ops = new MathOperations();
		
		System.out.println("addition");
		System.out.println(ops.add(2, 2));
		
		System.out.println("\nsubtraction");
		System.out.println(ops.subtract(8, 2));
		
		System.out.println("\nmultiplication");
		System.out.println(ops.multiply(6, 2));
		
		System.out.println("\ndivision");
		System.out.println(ops.divide(6, 2));
	}

}
