package com.astra.demo;

public class Methods_Demo {

	public void addOfTwo(int a, int b) {
		System.out.println("add of two numbers :" + (a + b));
	}

	public static int subOfTwo(int a, int b) {
		return a - b;
	}

	public void displayMsg() {
		System.out.println("welcome to java world");
	}

	public String returnMsg() {
		return "hello good morning !!!";
	}

	public static void main(String[] args) {
		System.out.println(Methods_Demo.subOfTwo(12, 13));
		Methods_Demo obj = new Methods_Demo();
		obj.addOfTwo(12, 12);
		System.out.println(obj.returnMsg());
		obj.displayMsg();
	}

}
