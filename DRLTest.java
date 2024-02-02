package com.astra.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DRLTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		// 1.LOADING THE DRIVER CLASS
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2.CREATEING THE CONNECTION
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/astrazeneca", "root",
				"rpsconsulting");
		// 3.CREATING THE STATEMENT
		Statement stmt = conn.createStatement();
		// 4.EXECUTING THE QUERY
		// DDl-->execute(),DML-->executeUpdate(),DRL-->executeQuery()
		ResultSet result = stmt.executeQuery("select * from students");

		while (result.next()) {
			System.out.println(result.getInt(1) + " " + result.getString("stuname") + " " + result.getInt(3) + " "
					+ result.getString("stuadd"));
		}

		// 5.CLOSING THE CONNECTION
		conn.close();
		System.out.println("Table Created");

	}

}
