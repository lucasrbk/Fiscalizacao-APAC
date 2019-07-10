package sistema.entidades;

import java.sql.Date;

public class Penalidade {
	private int idPenalidade;
	private String status;
	private String jaCobrada;
	private String descricao;
	private String valorMulta;
	private String tipo;
	private Date dataAdiamento;
	private Date dataEmissa;
	private Date dataRecebimento;
	private String penalidadeCol;
	private int autoCodigo;
	
	public Penalidade(int idPenalidade, String status, String jaCobrada, String descricao, String valorMulta,
			String tipo, Date dataAdiamento, Date dataEmissa, Date dataRecebimento, String penalidadeCol,
			int autoCodigo) {
		super();
		this.idPenalidade = idPenalidade;
		this.status = status;
		this.jaCobrada = jaCobrada;
		this.descricao = descricao;
		this.valorMulta = valorMulta;
		this.tipo = tipo;
		this.dataAdiamento = dataAdiamento;
		this.dataEmissa = dataEmissa;
		this.dataRecebimento = dataRecebimento;
		this.penalidadeCol = penalidadeCol;
		this.autoCodigo = autoCodigo;
	}

	public int getIdPenalidade() {
		return idPenalidade;
	}

	public void setIdPenalidade(int idPenalidade) {
		this.idPenalidade = idPenalidade;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getJaCobrada() {
		return jaCobrada;
	}

	public void setJaCobrada(String jaCobrada) {
		this.jaCobrada = jaCobrada;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getValorMulta() {
		return valorMulta;
	}

	public void setValorMulta(String valorMulta) {
		this.valorMulta = valorMulta;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Date getDataAdiamento() {
		return dataAdiamento;
	}

	public void setDataAdiamento(Date dataAdiamento) {
		this.dataAdiamento = dataAdiamento;
	}

	public Date getDataEmissa() {
		return dataEmissa;
	}

	public void setDataEmissa(Date dataEmissa) {
		this.dataEmissa = dataEmissa;
	}

	public Date getDataRecebimento() {
		return dataRecebimento;
	}

	public void setDataRecebimento(Date dataRecebimento) {
		this.dataRecebimento = dataRecebimento;
	}

	public String getPenalidadeCol() {
		return penalidadeCol;
	}

	public void setPenalidadeCol(String penalidadeCol) {
		this.penalidadeCol = penalidadeCol;
	}

	public int getAutoCodigo() {
		return autoCodigo;
	}

	public void setAutoCodigo(int autoCodigo) {
		this.autoCodigo = autoCodigo;
	}
	
	
	
}
