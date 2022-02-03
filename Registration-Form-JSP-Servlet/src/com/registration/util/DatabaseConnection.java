package com.registration.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

	public static Connection connection() throws SQLException {

		String url = "jdbc:mysql://localhost:3306/mydb";
		String username = "root";
		String password = "root";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch(Exception e) {
			e.printStackTrace();
		}
		Connection connection = DriverManager.getConnection(url, username, password);
		return connection;
		
	}

}