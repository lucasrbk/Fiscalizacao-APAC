package sistema.bean;

import java.util.Date;

public class TermoOutorga {
	private int sequencial;
	private String numTermo;
	private Date dataCriacao;
	private Date dataValidade;
	private int statusTermo;
	private Outorga outorga;
	
	public TermoOutorga(int sequencial, String numTermo, Date dataCriacao, Date dataValidade, int statusTermo,
			Outorga outorga) {
		super();
		this.sequencial = sequencial;
		this.numTermo = numTermo;
		this.dataCriacao = dataCriacao;
		this.dataValidade = dataValidade;
		this.statusTermo = statusTermo;
		this.outorga = outorga;
	}
	
	public Outorga getOutorga() {
		return outorga;
	}

	public void setOutorga(Outorga outorga) {
		this.outorga = outorga;
	}

	public int getSequencial() {
		return sequencial;
	}
	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}
	public String getNumTermo() {
		return numTermo;
	}
	public void setNumTermo(String numTermo) {
		this.numTermo = numTermo;
	}
	public Date getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public Date getDataValidade() {
		return dataValidade;
	}
	public void setDataValidade(Date dataValidade) {
		this.dataValidade = dataValidade;
	}
	public int getStatusTermo() {
		return statusTermo;
	}
	public void setStatusTermo(int statusTermo) {
		this.statusTermo = statusTermo;
	}
	
	
	
}
