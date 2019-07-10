package sistema.entidades;

public class Anexo {
	private int sequencial;
	private String descricao;
	private String arquivo;
	private String dataInsercao;
	private int pedidoRenovacaoData;
	private int recursoAdmSequencial;
	
	
	public Anexo(int sequencial, String descricao, String arquivo, String dataInsercao, int pedidoRenovacaoData,
			int recursoAdmSequencial) {
		super();
		this.sequencial = sequencial;
		this.descricao = descricao;
		this.arquivo = arquivo;
		this.dataInsercao = dataInsercao;
		this.pedidoRenovacaoData = pedidoRenovacaoData;
		this.recursoAdmSequencial = recursoAdmSequencial;
	}


	public int getSequencial() {
		return sequencial;
	}


	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public String getArquivo() {
		return arquivo;
	}


	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}


	public String getDataInsercao() {
		return dataInsercao;
	}


	public void setDataInsercao(String dataInsercao) {
		this.dataInsercao = dataInsercao;
	}


	public int getPedidoRenovacaoData() {
		return pedidoRenovacaoData;
	}


	public void setPedidoRenovacaoData(int pedidoRenovacaoData) {
		this.pedidoRenovacaoData = pedidoRenovacaoData;
	}


	public int getRecursoAdmSequencial() {
		return recursoAdmSequencial;
	}


	public void setRecursoAdmSequencial(int recursoAdmSequencial) {
		this.recursoAdmSequencial = recursoAdmSequencial;
	}
	
	
	
}
