package sistema.entidades;

import java.sql.Date;
import java.time.chrono.ChronoLocalDateTime;

public class TermoOutorga {
	private int sequencial;
	private String numTermo;
	private Date dataCriacao;
	private ChronoLocalDateTime<?> dataValidade;
	private int statusTermo;
	private int outorga_num_proc_apac;
	
	public TermoOutorga(int sequencial, String numTermo, Date dataCriacao, ChronoLocalDateTime<?> dataValidade, int statusTermo,
			int outorga_num_proc_apac) {
		super();
		this.sequencial = sequencial;
		this.numTermo = numTermo;
		this.dataCriacao = dataCriacao;
		this.dataValidade = dataValidade;
		this.statusTermo = statusTermo;
		this.outorga_num_proc_apac = outorga_num_proc_apac;
	}
	
	public int getOutorga_num_proc_apac() {
		return outorga_num_proc_apac;
	}

	public void setOutorga_num_proc_apac(int outorga_num_proc_apac) {
		this.outorga_num_proc_apac = outorga_num_proc_apac;
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
	public ChronoLocalDateTime<?> getDataValidade() {
		return dataValidade;
	}
	public void setDataValidade(ChronoLocalDateTime<?> dataValidade) {
		this.dataValidade = dataValidade;
	}
	public int getStatusTermo() {
		return statusTermo;
	}
	public void setStatusTermo(int statusTermo) {
		this.statusTermo = statusTermo;
	}
	
	
	
}
