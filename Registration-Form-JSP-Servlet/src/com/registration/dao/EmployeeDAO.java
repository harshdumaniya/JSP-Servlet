package com.registration.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.registration.model.Employee;
import com.registration.util.DatabaseConnection;

public class EmployeeDAO {

	public int registerEmployee(Employee employee) throws ClassNotFoundException {
		Connection connection;
		PreparedStatement preparedStatement;

		try {
			connection = DatabaseConnection.connection();
		String INSERT_USERS_SQL = "INSERT INTO employee"
				+ "  (first_name, last_name, username, password, address, contact) VALUES "
				+ " (?, ?, ?, ?,?,?);";

				preparedStatement = connection.prepareStatement(INSERT_USERS_SQL);
				preparedStatement.setString(1, employee.getFirstName());
				preparedStatement.setString(2, employee.getLastName());
				preparedStatement.setString(3, employee.getUsername());
				preparedStatement.setString(4, employee.getPassword());
				preparedStatement.setString(5, employee.getAddress());
				preparedStatement.setString(6, employee.getContactNo());
				preparedStatement.executeUpdate();
		} catch (SQLException e) {
			  e.printStackTrace();
		}
		return 0;
	}

}