package com.checkout;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/pharmacy";
	private static String username = "root";
	private static String password = "Password@1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			//create driver
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		}
		catch(Exception e) {
			System.out.println("Database connection failed!!");
		}
		return con;
		
		
	}
}
