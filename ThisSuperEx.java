package com.astra.demo;

import java.util.Date;

class ParentSample {
	int marks = 333;

	public ParentSample() {
		this(222);
		System.out.println("Parent-Default-Constructor");// 1st output
	}

	public ParentSample(int result) {

		System.out.println("Parent-param-Constructor");// 1st output
	}

	public void printDate() {
		System.out.println("Current Time : " + new Date().getHours());
	}
}

public class ThisSuperEx extends ParentSample {
	int marks = 222;

	public ThisSuperEx() {// 4
		super();
		System.out.println("default constructor");// 5
	}

	public ThisSuperEx(int marks) {// 2
		this();//
		System.out.println("param constructor : " + marks + " " + this.marks + " " + super.marks);
		this.printDate();
		super.printDate();
		System.out.println("36th : "+ this);
	}

	@Override
	public void printDate() {
		System.out.println("Today's Date : " + new Date().getDate());
	}

	public static void main(String[] args) {
		ThisSuperEx obj = new ThisSuperEx(111);// 1
		System.out.println(obj);
		System.out.println(obj.toString());
		// obj.printDate();
	}
}
