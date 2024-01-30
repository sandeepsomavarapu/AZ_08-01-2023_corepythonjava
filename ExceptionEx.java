package com.astra.exceptions;

import java.util.Scanner;

//1)system defined error messages
//2)abnormal termination

//1)user friendly error messages
//2)normal termination
public class ExceptionEx {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("Enter first number for division:");
		int fnum = scan.nextInt();
		System.out.println("Enter second number for division:");
		int snum = scan.nextInt();
		try {
			int result = fnum / snum;// terminated
			System.out.println("division is : " + result);
		} catch (ArithmeticException ex) {
			System.out.println("Denominator cannot be zero...");
		}
		System.out.println("Remaining 100 lines code ");
		scan.close();
	}

}
