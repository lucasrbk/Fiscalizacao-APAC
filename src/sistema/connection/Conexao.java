package sistema.connection;
import java.sql.*;
public class Conexao {

	static String status="";
	
	public static Connection getConnection() {
		Connection conn=null;
		
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
	 
	        conn = DriverManager.getConnection(url, username, password);
	 
			status = "conexao aberta";
			}catch (SQLException e) {
				status = e.getMessage();
		
		}catch (ClassNotFoundException e) {
				status = e.getMessage();
		}catch (Exception e) {
				status = e.getLocalizedMessage();
		}
		return conn;
	}

}
