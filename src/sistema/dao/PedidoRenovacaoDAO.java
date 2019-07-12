package sistema.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sistema.connection.Conexao;
import sistema.connection.SystemException;
import sistema.entidades.PedidoRenovacao;

public class PedidoRenovacaoDAO {
	
	
			
		
	private static final String INSERIR_PEDIDO = "INSERT INTO fiscalizaco.pedido_renovacao (data,motivo,observacao,outorga_num_proc_apac)";
		
		public static PedidoRenovacaoDAO instance;
		
		public PedidoRenovacaoDAO() {}
		
		public static PedidoRenovacaoDAO getInstance(){
			if(instance == null){
				instance = new PedidoRenovacaoDAO();
				return instance;
			}
			return instance;
		}
		public void inserir_pedido() {}
		public void inserir_pedido(PedidoRenovacao pedido) {
				
			String valores = "VALUES (" +pedido.getData()+"," 
										+pedido.getMotivo()+","
										+pedido.getObservacao() +","
										+pedido.getOutorga_num_proc_apac()+","
													
										+")";
			
			String comando = INSERIR_PEDIDO + valores;

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
			

		}
		
		public void buscar_pedido(PedidoRenovacao pedido) {
			String buscar = "SELECT * FROM PENALIDADE WHERE "+pedido.getOutorga_num_proc_apac()+"";
			
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
		}
	}

