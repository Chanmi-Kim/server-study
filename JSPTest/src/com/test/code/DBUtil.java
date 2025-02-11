package com.test.code;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	
	public Connection connect() {
		
		
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@localhost:1522:xe";
		String id = "hr";
		String password = "java1234";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");

			//new Connection()
			conn = DriverManager.getConnection(url, id, password);//DB 접속하기
			
			return conn;
			
			
		} catch (Exception e) {
			System.out.println("Connection : " + e.toString());
		}
		
		return null;
		
	}
	
	public Connection connect(String server, String id, String password) {
		
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@" + server + ":1521:xe";
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, id, password);
			
			return conn;
			
			
		} catch (Exception e) {
			System.out.println("Connection : " + e.toString());
		}
		
		return null;
		
	}

}






















