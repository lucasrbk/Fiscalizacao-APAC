package sistema.control;


import sistema.dao.PenalidadeDAO;

public class PenalidadeControl {
	private PenalidadeDAO repositorio;
	private static PenalidadeDAO instance;
	
	public PenalidadeControl() {
		repositorio= new PenalidadeDAO();
	}
	
	public static PenalidadeDAO getInstance() {
		if ( instance == null )
			instance= PenalidadeDAO.getInstance();
		return instance;
	}
	
	public void inserir_penalidade() {
		System.out.println("Inserir Controlador");
		repositorio.inserir_penalidade();
	}
	
	public void remover_penalidade() {
		System.out.println("Remover Controlador");
	}
}
