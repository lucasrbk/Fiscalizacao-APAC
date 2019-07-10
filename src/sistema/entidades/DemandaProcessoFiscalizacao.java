package sistema.entidades;

public class DemandaProcessoFiscalizacao {
	private int codigo;
	private String vistoria;
	private int autoCodigo;
	
	
	public DemandaProcessoFiscalizacao(int codigo, String vistoria, int autoCodigo) {
		super();
		this.codigo = codigo;
		this.vistoria = vistoria;
		this.autoCodigo = autoCodigo;
	}


	public int getCodigo() {
		return codigo;
	}


	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


	public String getVistoria() {
		return vistoria;
	}


	public void setVistoria(String vistoria) {
		this.vistoria = vistoria;
	}


	public int getAutoCodigo() {
		return autoCodigo;
	}


	public void setAutoCodigo(int autoCodigo) {
		this.autoCodigo = autoCodigo;
	}
	
	
}
