package com.db;

import java.sql.DriverManager;
import com.mysql.jdbc.Connection;


public class DBConnect {

	private static 	java.sql.Connection conn;

	public static java.sql.Connection getConn() {
	 conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_2", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	

}