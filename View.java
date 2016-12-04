package ru.mail.dimapilot;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class View {

	protected static void viewAdress(String base, String user, String password, String price) {

		try {
			// connect to base
			Connection conn = DriverManager.getConnection(base, user, password);

			// prepare and make query
			PreparedStatement stmt = conn.prepareStatement("SELECT flat_adress FROM flat_table WHERE flat_price <?");
			stmt.setString(1, price);
			ResultSet rs = stmt.executeQuery();

			// output data
			int columns = rs.getMetaData().getColumnCount();

			System.out.print("SELECT flat_adress FROM flat_table WHERE flat_price <" + price + "\n");
			while (rs.next()) {
				for (int i = 1; i <= columns; ++i) {
					System.out.print(rs.getString(i) + "\t");
				}
				System.out.println("");
			}

		} catch (Exception ex) {
			System.out.println("Got error: " + ex.getMessage());
		}

	}

	protected static void viewRegAndRoom(String base, String user, String password, String area) {

		try {
			// connect to base
			Connection conn = DriverManager.getConnection(base, user, password);

			// prepare and make query
			PreparedStatement stmt = conn
					.prepareStatement("SELECT flat_region,flat_rooms FROM flat_table WHERE flat_area >?");
			stmt.setString(1, area);
			ResultSet rs = stmt.executeQuery();

			// output data
			int columns = rs.getMetaData().getColumnCount();
			
			System.out.print("SELECT flat_region,flat_rooms FROM flat_table WHERE flat_area >" + area + "\n");
			while (rs.next()) {
				for (int i = 1; i <= columns; ++i) {
					System.out.print(rs.getString(i) + "\t");
				}
				System.out.println("");
			}

		} catch (Exception ex) {
			System.out.println("Got error: " + ex.getMessage());
		}

	}

}
