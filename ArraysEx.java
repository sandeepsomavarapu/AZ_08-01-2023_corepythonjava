package com.astra.demo;

public class ArraysEx {

	public static void main(String[] args) {

		int a[] = { 12, 23, 2, 53, 64, 12, 34 };
		System.out.println(a[2]);

		String names[] = new String[7];
		names[0] = "sunday";
		names[1] = "monday";
		names[2] = "tuesday";
		names[3] = "wednesday";
		names[4] = "thursday";
		names[5] = "friday";
		names[6] = "saturday";

		for (int i = 0; i < names.length; i++) {
			System.out.println(names[i]);
		}

		int a1[][] = { { 12, 22, 33, 44 }, { 90, 91, 92, 93 }, { 80, 81, 82, 83 } };

		for (int i = 0; i < a1.length; i++) {
			for (int j = 0; j < a1[i].length; j++) {
				System.out.print(a1[i][j]+" ");
			}
			System.out.println();
		}

	}

}
