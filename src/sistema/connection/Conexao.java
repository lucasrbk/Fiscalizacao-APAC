package sistema.connection;
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Conexao {

	static String status="";
	protected static Connection con;
	
	public static Connection getConnection() {
		Connection connection=null;
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
		
			//String url = "jdbc:mysql://localhost/fiscalizacao?"
			//		+ "useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=GMT-3?"
			//		+ "user=root&password=root";
			//conn = DriverManager.getConnection(url);
			
			String serverName = "localhost";    //caminho do servidor do BD
			 
	        String mydatabase ="mysql";        //nome do seu banco de dados
	 
	        String url = "jdbc:mysql://localhost/fiscalizacao?useTimezone=true&serverTimezone=UTC";
	 
	        String username = "root";        //nome de um usuário de seu BD      
	 
	        String password = "root";      //sua senha de acesso
	 
	        connection = DriverManager.getConnection(url, username, password);
	 
			status = "conexao aberta";
			
			
			
			if(connection != null ) {
				status = ("conectado com sucesso");
			}else {
				status = ("não conectado");
			}
			}catch (SQLException e) {
				status = e.getMessage();
		
		}catch (ClassNotFoundException e) {
				status = e.getMessage();
		}catch (Exception e) {
				status = e.getLocalizedMessage();
		}
		return connection;
	}
	
	public void closeConection() {
		try{
			Conexao.con.close();
		} catch(Exception e) {
			System.err.println("Erro ao fechar conexão");
		}
	}

}
