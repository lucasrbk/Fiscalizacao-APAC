package sistema.entidades;

import java.sql.Date;

public class TipoAuto {
	private int sequencial;
	private Date dataEmissao;
	private String observacao;
	private int termoOutorgaSequencial;
	private int termoOutorgaNumProcApac;
	
	
	public TipoAuto(int sequencial, Date dataEmissao, String observacao, int termoOutorgaSequencial,
			int termoOutorgaNumProcApac) {
		super();
		this.sequencial = sequencial;
		this.dataEmissao = dataEmissao;
		this.observacao = observacao;
		this.termoOutorgaSequencial = termoOutorgaSequencial;
		this.termoOutorgaNumProcApac = termoOutorgaNumProcApac;
	}


	public int getSequencial() {
		return sequencial;
	}


	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}


	public Date getDataEmissao() {
		return dataEmissao;
	}


	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}


	public String getObservacao() {
		return observacao;
	}


	public void setObservacao(String observacao) {
		this.observacao = observacao;
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
