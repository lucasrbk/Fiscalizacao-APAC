package sistema.dao;

import java.sql.Date;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import sistema.connection.Conexao;
import sistema.entidades.PedidoRenovacao;
import sistema.entidades.TermoOutorga;

public class TermoOutorgaDAO {
	private static final String INSERIR_PEDIDO = "INSERT INTO fiscalizaco.pedido_renovacao (data,motivo,observacao,outorga_num_proc_apac)";
	
	public static TermoOutorgaDAO instance;
	
	public TermoOutorgaDAO() {}
	
	public static TermoOutorgaDAO getInstance(){
		if(instance == null){
			instance = new TermoOutorgaDAO();
			return instance;
		}
		return instance;
	}
	
	public void buscar_termo() {}
	public void buscar_termo(TermoOutorga termo) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");  
		   LocalDateTime now = LocalDateTime.now();  
		   
		
		if(now.isAfter(termo.getDataValidade()) ) {
		
			String buscar = "SELECT * FROM PENALIDADE WHERE "+termo.getOutorga_num_proc_apac()+"";
		
		String comando = buscar;
		
		try {
			Statement stm = (Statement) Conexao.getConnection();
			int res = stm.executeUpdate(comando);
			if (res > 0) {
				System.out.println("Inserido!");
			} else {
				System.err.println("Erro!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
		}else {
			System.out.println("Ainda na validade");
		}
	}
}
