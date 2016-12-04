package ru.mail.dimapilot;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ReadFlats {

	static final String DB_CONNECTION = "jdbc:mysql://localhost:3306/flats";
	static final String DB_USER = "root";
	static final String DB_PASSWORD = "1111";

	static Connection conn;

	public static void main(String[] args) throws SQLException {

		try {
			// connection to databese (flats);
			conn = DriverManager.getConnection(DB_CONNECTION, DB_USER, DB_PASSWORD);

			// create a statement;
			Statement myStmt = conn.createStatement();

			// execute SQL query;
			ResultSet myRs = myStmt.executeQuery("select*from flat_table");

			// process the result set;
			System.out.println("All data:");
			while (myRs.next()) {

				System.out.println(myRs.getString("flat_id") + " - " + myRs.getString("flat_region") + ", "
						+ myRs.getString("flat_adress") + ", " + myRs.getString("flat_area") + ", "
						+ myRs.getString("flat_rooms") + ", " + myRs.getString("flat_price"));

			}
			System.out.println("");
		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			View.viewAdress(DB_CONNECTION, DB_USER, DB_PASSWORD, "120000");
			View.viewRegAndRoom(DB_CONNECTION, DB_USER, DB_PASSWORD, "90");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
