package com.astra.exceptions;//our class should extends exception

//parameterized constructor
class AgeNotValidException extends Exception {
	private int age;

	public AgeNotValidException(String message) {
		super(message);
	}
}

public class Exception6 {
	static void validation(int age) throws AgeNotValidException {
		if (age < 18)
			throw new AgeNotValidException("You are not eligible to vote ");
		else
			System.out.println("you are eligable to vote");
	}

	public static void main(String args[]) {
		try {
			Exception6.validation(19);
		} catch (AgeNotValidException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		} finally {
			System.out.println("executes every time");
		}
		System.out.println("rest of the code...");
	}
}