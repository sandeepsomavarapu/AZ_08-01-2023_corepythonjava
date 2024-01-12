package com.astra.demo;

import java.util.Date;

class SuperParent {//object
	public void m1() {
		System.out.println("am from m1 method");
	}

	public void m2() {
		System.out.println("am from m2 method");
	}
}

class ParentEx extends SuperParent {
	public void displayAge() {
		int age = 12;
		System.out.println("Age is  :" + age);
	}

	public String displayMessage() {
		return "Hello Good Afternoon";
	}
}

public class InheritanceEx extends SuperParent {

	public void displayDate() {
		Date date = new Date();
		System.out.println("Today's Date : " + date);
	}

	public static void main(String[] args) {
		InheritanceEx obj = new InheritanceEx();
		obj.displayDate();
//		System.out.println(obj.displayMessage());
//		obj.displayAge();
		obj.m1();
		obj.m2();
	
	}

}
