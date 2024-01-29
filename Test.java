package pack3;

import pack2.Sample;//ctrl+shift+o

public class Test extends Sample {

	public static void main(String[] args) {
		Test test = new Test();
		test.m1();// different package sub-class

	}
}

class TestSample {
	public void m4() {
		Sample obj = new Sample();
		obj.m1();//different package non-subclass
	}

}