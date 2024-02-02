package com.astra.jdbc;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

public class DRLTest {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		// 1.LOADING THE DRIVER CLASS
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 2.CREATEING THE CONNECTION
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/astrazeneca", "root",
				"rpsconsulting");
		
		DatabaseMetaData dbmd=conn.getMetaData();  
		  
		System.out.println("Driver Name: "+dbmd.getDriverName());  
		System.out.println("Driver Version: "+dbmd.getDriverVersion());  
		System.out.println("UserName: "+dbmd.getUserName());  
		System.out.println("Database Product Name: "+dbmd.getDatabaseProductName());  
		System.out.println("Database Product Version: "+dbmd.getDatabaseProductVersion());  
		  
	
		
		
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
	
		ResultSetMetaData rsmd=result.getMetaData();  
		  
		System.out.println("Total columns: "+rsmd.getColumnCount());  
		System.out.println("Column Name of 1st column: "+rsmd.getColumnName(1));  
		System.out.println("Column Type Name of 1st column: "+rsmd.getColumnTypeName(1));
		
		conn.close();
	}

}
