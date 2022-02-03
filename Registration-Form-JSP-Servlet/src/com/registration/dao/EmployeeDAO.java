package com.registration.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.registration.model.Employee;

public class EmployeeDAO {

	public int registerEmployee(Employee employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO employee"
				+ "  (first_name, last_name, username, password, address, contact) VALUES "
				+ " (?, ?, ?, ?,?,?);";

		int result = 0;

		Class.forName("com.mysql.jdbc.Driver");

		// Established the connection with database
		try (Connection connection = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/mydb", "root", "root");

		// Create a statement using connection object
		PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getUsername());
			preparedStatement.setString(4, employee.getPassword());
			preparedStatement.setString(5, employee.getAddress());
			preparedStatement.setString(6, employee.getContactNo());

			// Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			System.out.println(e);
		}
		return result;
	}

}