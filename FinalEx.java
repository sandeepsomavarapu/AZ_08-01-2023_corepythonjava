package com.astra.demo;

class Parent_Ex {// final
	int age = 30;// final

	public void printAge() {// final
		++age;
		System.out.println("Age is : " + age);
	}

	public void m1() {
		System.out.println("method from m1....");
	}
}

public class FinalEx extends Parent_Ex {

	public FinalEx() {
		System.out.println("default constructor");
	}

	public FinalEx(String name) {
		System.out.println("parameterized constructor "+name);
	}

	public static void main(String[] args) {
		FinalEx obj = new FinalEx("suresh");
		obj.m1();
		obj.printAge();
	}

	@Override
	public void printAge() {
		--age;
		System.out.println("Age is : " + age);
	}

}
