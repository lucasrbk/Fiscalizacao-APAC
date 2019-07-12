package sistema.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sistema.connection.Conexao;
import sistema.connection.SystemException;
import sistema.entidades.Penalidade;

public class PenalidadeDAO {
		
	
private static final String INSERIR_PENALIDADE = "INSERT INTO fiscalizaco.penalidade (idPENALIDADE, status, ja_cobrado, descricao, valor_multa, tipo, data_adiamento, data_emissao, data_recebimento, PENALIDADEcol,AUTO_codigo)";
	
	public static PenalidadeDAO instance;
	
	public PenalidadeDAO() {}
	
	public static PenalidadeDAO getInstance(){
		if(instance == null){
			instance = new PenalidadeDAO();
			return instance;
		}
		return instance;
	}
	public void inserir_penalidade() {}
	public void inserir_penalidade(Penalidade penalidade) {
			
		String valores = "VALUES (" +penalidade.getIdPenalidade()+"," 
									+penalidade.getStatus()+","
									+penalidade.getJaCobrada() +","
									+penalidade.getDescricao()+","
									+penalidade.getValorMulta()+","
									+penalidade.getTipo()+","
									+penalidade.getDataAdiamento()+","
									+penalidade.getDataEmissa()+","
									+penalidade.getDataRecebimento()+","
									+penalidade.getPenalidadeCol()+","
									+penalidade.getAutoCodigo()+","				
									+")";
		
		String comando = INSERIR_PENALIDADE + valores;

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
	public void remover_penalidade(Penalidade penalidade) {
		String delete = "DELETE FROM PENALIDADE WHERE "+penalidade.getIdPenalidade()+"";
		
		String comando = delete;

		try {
			Statement stm = (Statement) Conexao.getConnection();
			int res = stm.executeUpdate(comando);
			if (res > 0) {
				System.out.println("Removido!");
			} else {
				System.err.println("Erro!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
	}
	public void buscar_penalidade(Penalidade penalidade) {
		String buscar = "SELECT * FROM PENALIDADE WHERE "+penalidade.getIdPenalidade()+"";
		
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
