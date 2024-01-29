package pack2;

public class Sample {

	public void m1() {
		System.out.println("am from m1 method...");
	}

	public static void main(String[] args) {
		Sample obj = new Sample();
		obj.m1();// same class

	}
}

class Client extends Sample {

	public void m2() {
		m1();// same package sub class
	}
}

class SampleTest {

	public void m3() {
		Sample obj = new Sample();
		obj.m1(); // same package non-subclass
	}

}
