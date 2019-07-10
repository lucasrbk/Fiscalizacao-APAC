package sistema.entidades;

import java.util.Date;

public class Vistoria {
	private int codigo;
	private String tipo;
	private String observacao;
	private String descricao;
	private Date dataOcorrencia;
	private String novoEndereco;
	private String motivo;
	private Date dataCorrespondencia;
	private String coordenadaX;
	private String coordenadaY;
	private String flagEnderecoDivergente;
	private int autoCodigo;
	
	
	public Vistoria(int codigo, String tipo, String observacao, String descricao, Date dataOcorrencia,
			String novoEndereco, String motivo, Date dataCorrespondencia, String coordenadaX, String coordenadaY,
			String flagEnderecoDivergente, int autoCodigo) {
		super();
		this.codigo = codigo;
		this.tipo = tipo;
		this.observacao = observacao;
		this.descricao = descricao;
		this.dataOcorrencia = dataOcorrencia;
		this.novoEndereco = novoEndereco;
		this.motivo = motivo;
		this.dataCorrespondencia = dataCorrespondencia;
		this.coordenadaX = coordenadaX;
		this.coordenadaY = coordenadaY;
		this.flagEnderecoDivergente = flagEnderecoDivergente;
		this.autoCodigo = autoCodigo;
	}


	public int getCodigo() {
		return codigo;
	}


	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


	public String getTipo() {
		return tipo;
	}


	public void setTipo(String tipo) {
		this.tipo = tipo;
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


	public Date getDataOcorrencia() {
		return dataOcorrencia;
	}


	public void setDataOcorrencia(Date dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}


	public String getNovoEndereco() {
		return novoEndereco;
	}


	public void setNovoEndereco(String novoEndereco) {
		this.novoEndereco = novoEndereco;
	}


	public String getMotivo() {
		return motivo;
	}


	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}


	public Date getDataCorrespondencia() {
		return dataCorrespondencia;
	}


	public void setDataCorrespondencia(Date dataCorrespondencia) {
		this.dataCorrespondencia = dataCorrespondencia;
	}


	public String getCoordenadaX() {
		return coordenadaX;
	}


	public void setCoordenadaX(String coordenadaX) {
		this.coordenadaX = coordenadaX;
	}


	public String getCoordenadaY() {
		return coordenadaY;
	}


	public void setCoordenadaY(String coordenadaY) {
		this.coordenadaY = coordenadaY;
	}


	public String getFlagEnderecoDivergente() {
		return flagEnderecoDivergente;
	}


	public void setFlagEnderecoDivergente(String flagEnderecoDivergente) {
		this.flagEnderecoDivergente = flagEnderecoDivergente;
	}


	public int getAutoCodigo() {
		return autoCodigo;
	}


	public void setAutoCodigo(int autoCodigo) {
		this.autoCodigo = autoCodigo;
	}
	
	
	
}
