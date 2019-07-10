package sistema.entidades;

import java.sql.Date;

public class RelatorioVistoria {
	private int sequencia;
	private Date dataCriacao;
	private String titulo;
	private String arquivo;
	private String formato;
	private String numVersao;
	private int vistoriCodigo;
	private String relatorioVistoriaCol;
	
	public RelatorioVistoria(int sequencia, Date dataCriacao, String titulo, String arquivo, String formato,
			String numVersao, int vistoriCodigo, String relatorioVistoriaCol) {
		super();
		this.sequencia = sequencia;
		this.dataCriacao = dataCriacao;
		this.titulo = titulo;
		this.arquivo = arquivo;
		this.formato = formato;
		this.numVersao = numVersao;
		this.vistoriCodigo = vistoriCodigo;
		this.relatorioVistoriaCol = relatorioVistoriaCol;
	}
	public int getSequencia() {
		return sequencia;
	}
	public void setSequencia(int sequencia) {
		this.sequencia = sequencia;
	}
	public Date getDataCriacao() {
		return dataCriacao;
	}
	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getArquivo() {
		return arquivo;
	}
	public void setArquivo(String arquivo) {
		this.arquivo = arquivo;
	}
	public String getFormato() {
		return formato;
	}
	public void setFormato(String formato) {
		this.formato = formato;
	}
	public String getNumVersao() {
		return numVersao;
	}
	public void setNumVersao(String numVersao) {
		this.numVersao = numVersao;
	}
	public int getVistoriCodigo() {
		return vistoriCodigo;
	}
	public void setVistoriCodigo(int vistoriCodigo) {
		this.vistoriCodigo = vistoriCodigo;
	}
	public String getRelatorioVistoriaCol() {
		return relatorioVistoriaCol;
	}
	public void setRelatorioVistoriaCol(String relatorioVistoriaCol) {
		this.relatorioVistoriaCol = relatorioVistoriaCol;
	}
		
	
	
}
