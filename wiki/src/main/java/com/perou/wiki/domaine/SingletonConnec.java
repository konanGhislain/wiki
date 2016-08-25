package com.perou.wiki.domaine;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingletonConnec {

private static Connection connection;
	
	// Bloque static est un bloque qui s'execute au moment de chargement de la classe en memoire
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/wiki","root","root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return connection;
	}
}
