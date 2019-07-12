package sistema.control;

import sistema.dao.PedidoRenovacaoDAO;
import sistema.dao.PenalidadeDAO;

public class PedidoRenovacaoControl {
	private PedidoRenovacaoDAO repositorio;
	private static PedidoRenovacaoDAO instance;
	
	public PedidoRenovacaoControl() {
		repositorio= new PedidoRenovacaoDAO();
	}
	
	public static PedidoRenovacaoDAO getInstance() {
		if ( instance == null )
			instance= PedidoRenovacaoDAO.getInstance();
		return instance;
	}
	
	public void inserir_pedido() {
		System.out.println("Inserir Controlador");
		repositorio.inserir_pedido();
	}
}
