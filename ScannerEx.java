package com.astra.demo;

import java.util.Scanner;

public class ScannerEx {
	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		System.out.println("Enter Product ID");
		int productId = scan.nextInt();
		System.out.println("Enter Product Name");
		String productName = scan.next();
		System.out.println("Enter Product Price");
		float productPrice = scan.nextFloat();
		System.out.println("Enter Product Result");
		boolean result = scan.nextBoolean();
		System.out.println("Enter ProductName Starts With");
		String productNameStartsWith = scan.next();
		char startsWith = productNameStartsWith.charAt(0);

		System.out.println("Character :" + startsWith);

		System.out.println(productId + " " + productName + " " + productPrice + " " + result);

		scan.close();
	}
}
