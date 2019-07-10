package sistema.entidades;

public class RecursoAdm {
	private int sequencia;
	private String descricao;
	private String destino;
	private String status;
	private String numDocumentoFiscal;
	private int tipoRecursoCodigo;
	
	
	public RecursoAdm(int sequencia, String descricao, String destino, String status, String numDocumentoFiscal,
			int tipoRecursoCodigo) {
		super();
		this.sequencia = sequencia;
		this.descricao = descricao;
		this.destino = destino;
		this.status = status;
		this.numDocumentoFiscal = numDocumentoFiscal;
		this.tipoRecursoCodigo = tipoRecursoCodigo;
	}


	public int getSequencia() {
		return sequencia;
	}


	public void setSequencia(int sequencia) {
		this.sequencia = sequencia;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public String getDestino() {
		return destino;
	}


	public void setDestino(String destino) {
		this.destino = destino;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getNumDocumentoFiscal() {
		return numDocumentoFiscal;
	}


	public void setNumDocumentoFiscal(String numDocumentoFiscal) {
		this.numDocumentoFiscal = numDocumentoFiscal;
	}


	public int getTipoRecursoCodigo() {
		return tipoRecursoCodigo;
	}


	public void setTipoRecursoCodigo(int tipoRecursoCodigo) {
		this.tipoRecursoCodigo = tipoRecursoCodigo;
	}
	
	
}
