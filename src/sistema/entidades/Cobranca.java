package sistema.entidades;

import java.sql.Date;

public class Cobranca {
	private int sequencial;
	private Date dataCobranca;
	private String observacao;
	private String situacao;
	private int termoOutorgaSequencial;
	private int termoOutorgaNumProcApac;
	
	
	public Cobranca(int sequencial, Date dataCobranca, String observacao, String situacao, int termoOutorgaSequencial,
			int termoOutorgaNumProcApac) {
		super();
		this.sequencial = sequencial;
		this.dataCobranca = dataCobranca;
		this.observacao = observacao;
		this.situacao = situacao;
		this.termoOutorgaSequencial = termoOutorgaSequencial;
		this.termoOutorgaNumProcApac = termoOutorgaNumProcApac;
	}


	public int getSequencial() {
		return sequencial;
	}


	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}


	public Date getDataCobranca() {
		return dataCobranca;
	}


	public void setDataCobranca(Date dataCobranca) {
		this.dataCobranca = dataCobranca;
	}


	public String getObservacao() {
		return observacao;
	}


	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}


	public String getSituacao() {
		return situacao;
	}


	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}


	public int getTermoOutorgaSequencial() {
		return termoOutorgaSequencial;
	}


	public void setTermoOutorgaSequencial(int termoOutorgaSequencial) {
		this.termoOutorgaSequencial = termoOutorgaSequencial;
	}


	public int getTermoOutorgaNumProcApac() {
		return termoOutorgaNumProcApac;
	}


	public void setTermoOutorgaNumProcApac(int termoOutorgaNumProcApac) {
		this.termoOutorgaNumProcApac = termoOutorgaNumProcApac;
	}
	
	
}
