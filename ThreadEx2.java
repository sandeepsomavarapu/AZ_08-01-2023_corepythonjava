package com.astra.threads;

public class ThreadEx2 extends Thread {
	@Override
	public void run() {
		System.out.println(Thread.currentThread().getName());
		Thread.currentThread().setName("alcazar");
		Thread.currentThread().setPriority(10);
		System.out.println(Thread.currentThread());// thread-0 1-10
		for (int i = 0; i < 10; i++) {
			System.out.println("child thread");
		}
	}

	public static void main(String[] args) {
		System.out.println(Thread.currentThread());//
		Thread.currentThread().setName("astra");
		Thread.currentThread().setPriority(1);
		System.out.println(Thread.currentThread());//
		ThreadEx2 x1 = new ThreadEx2();
		x1.start();
		for (int i = 0; i < 10; i++) {
			System.out.println("main thread");
		}
	}

}
