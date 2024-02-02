package com.astra.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class JdbcLoginApp {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		String username;
		String password;
		PreparedStatement pstmt;
		// 1.LOADING THE DRIVER CLASS
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2.CREATEING THE CONNECTION
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/astrazeneca", "root",
				"rpsconsulting");

		Scanner scan = new Scanner(System.in);
		while (true) {
			System.out.println("1.LOGIN");
			System.out.println("2.REGISTRATION");
			int option = scan.nextInt();
			switch (option) {
			case 1:
				System.out.println("Enter Your Username :");
				username = scan.next();
				System.out.println("Enter Your Password :");
				password = scan.next();
				pstmt = conn.prepareStatement("select * from gmail where username=? and password=?");
				pstmt.setString(1, username);
				pstmt.setString(2, password);
				ResultSet result = pstmt.executeQuery();
				if (result.next()) {
					System.out.println("LOGIN SUCCESS");
				} else {
					System.out.println("LOGIN FAILED");
				}
				break;
			case 2:
				System.out.println("Enter Your Username :");
				username = scan.next();
				System.out.println("Enter Your Password :");
				password = scan.next();
				System.out.println("Enter Your FirstName :");
				String firstName = scan.next();
				System.out.println("Enter Your LastName :");
				String lastName = scan.next();
				pstmt = conn.prepareStatement("insert into gmail values (?,?,?,?)");
				pstmt.setString(1, username);
				pstmt.setString(2, password);
				pstmt.setString(3, firstName);
				pstmt.setString(4, lastName);
				int result1 = pstmt.executeUpdate();
				if (result1 != 0) {
					System.out.println("Registration completed please login");
				}
				break;
			default:
				System.out.println("Thank you !!!");
				break;
			}

		}
	}

}
