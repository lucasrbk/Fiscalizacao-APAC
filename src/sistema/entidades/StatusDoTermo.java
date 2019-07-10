package sistema.entidades;

import java.sql.Date;

public class StatusDoTermo {
	private int idStatusDoTermo;
	private Date dataStatusDoTermo;
	private String observacao;
	private String descricao;
	
	
	public StatusDoTermo(int idStatusDoTermo, Date dataStatusDoTermo, String observacao, String descricao) {
		super();
		this.idStatusDoTermo = idStatusDoTermo;
		this.dataStatusDoTermo = dataStatusDoTermo;
		this.observacao = observacao;
		this.descricao = descricao;
	}


	public int getIdStatusDoTermo() {
		return idStatusDoTermo;
	}


	public void setIdStatusDoTermo(int idStatusDoTermo) {
		this.idStatusDoTermo = idStatusDoTermo;
	}


	public Date getDataStatusDoTermo() {
		return dataStatusDoTermo;
	}


	public void setDataStatusDoTermo(Date dataStatusDoTermo) {
		this.dataStatusDoTermo = dataStatusDoTermo;
	}


	public String getObservacao() {
		return observacao;
	}


	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	
}
