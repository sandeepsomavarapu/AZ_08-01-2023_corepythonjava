package com.astra.threads;

public class ThreadEx1 implements Runnable {

	@Override
	public void run() {//running
		for (int i = 0; i < 10; i++) {
				try {
					Thread.sleep(3000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			System.out.println("child thread");
		}
		//dead

	}

	public static void main(String[] args) {
		ThreadEx1 x1 = new ThreadEx1();
		Thread thread = new Thread(x1);//new
		thread.start();//runnable state
		

	}

}
