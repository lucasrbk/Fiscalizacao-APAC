package sistema.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import sistema.connection.Conexao;
import sistema.entidades.Outorga;
import sistema.entidades.PedidoRenovacao;
import sistema.entidades.TermoOutorga;

public class Testes {

	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub
	/*	teste parte 8.2 funções e 8.3
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		Date data = formato.parse("23/11/2015");
		Date data2 = formato.parse("23/11/2019");
		Date dataatual = formato.parse("10/12/2019");
		Outorga o1 = new Outorga(231, "ajngi2", "superficial");
		PedidoRenovacao p1 = new PedidoRenovacao(12032019, "nenhum", "nenhuma", o1);
		TermoOutorga t1 = new TermoOutorga(124, "fwai", data, data2, 1, o1);
		
		
		if(t1.getStatusTermo() == 1 && t1.getOutorga().equals(p1.getOutorga())) {
			
			System.out.println("termo com irregularidade");
			System.out.println(p1.getData());
		}
		if(dataatual.after(t1.getDataValidade())) {
			System.out.println("termo de outorga passou da validade");
		}else {
			System.out.println("termo de outorga na validade");
		}
		*/
try {
			
			Connection connection = Conexao.getConnection();

			 Statement simpleStatement = connection.createStatement();
			 /*
			simpleStatement.execute(
					"insert into auto values " +
							"('1', '2013-04-23', 'testeLucas', 'TesteLucas','2147483647','1645652973')"
					);

			System.out.println("Comando de inserção realizado com sucesso.");
			*/
			Statement s = connection.createStatement();
		
			ResultSet rs = s.executeQuery("select * from auto;");

			System.out.println("Listando todos os autos do BD");
			
			
			System.out.printf("%15s %25s %15s %40s\n", "codigo", "data_emissao", "obs", "matricula","IRREGULARIDADE_codigo","TIPO_AUTO_codigo");

			while (rs.next()) {
				String codigo = rs.getString("codigo");
				String data = rs.getString("data_emissao");
				String obs = rs.getString("obs");
				String matricula = rs.getString("matricula");
				String irregularidade = rs.getString("IRREGULARIDADE_codigo");
				String tipo = rs.getString("TIPO_AUTO_codigo");
				System.out.printf("%15s %25s %15s %40s\n", codigo, data, obs,
						matricula,irregularidade,tipo);
			}

			simpleStatement.close();  // fechando os comandos SQL
			s.close();
			
			connection.close();  // fechando a conexão
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
	}

}
