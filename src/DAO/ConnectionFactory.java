package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
		Connection con = null;
		try {
			final String DRIVER = "com.mysql.cj.jdbc.Driver";
			final String URL = "jdbc:mysql://localhost:3306/bd_atrprocessos?useTimezone=true&serverTimezone=GMT-3";
			final String USER = "root";
			final String PASSWORD = "";
			Class.forName(DRIVER);

			con = DriverManager.getConnection(URL, USER, PASSWORD);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Classe do driver não encontrada");

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Erro ao abrir a conexão");
		}
		return con;
	}
}
