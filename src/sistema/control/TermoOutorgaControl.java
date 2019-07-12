package sistema.control;

import sistema.dao.PedidoRenovacaoDAO;
import sistema.dao.TermoOutorgaDAO;

public class TermoOutorgaControl {
	private TermoOutorgaDAO repositorio;
	private static TermoOutorgaDAO instance;
	
	public TermoOutorgaControl() {
		repositorio= new TermoOutorgaDAO();
	}
	
	public static TermoOutorgaDAO getInstance() {
		if ( instance == null )
			instance= TermoOutorgaDAO.getInstance();
		return instance;
	}
	
	public void buscar_termo() {
		System.out.println("Inserir Controlador");
		repositorio.buscar_termo();
	}
}
