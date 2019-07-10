package sistema.entidades;

public class TermoOutorgaIrregularidade {
	private int sequencial;
	private int termoOutorgaSequencial;
	private int termoOutorgaNumProcApac;
	private int irregularidadeCodigo;
	
	
	public TermoOutorgaIrregularidade(int sequencial, int termoOutorgaSequencial, int termoOutorgaNumProcApac,
			int irregularidadeCodigo) {
		super();
		this.sequencial = sequencial;
		this.termoOutorgaSequencial = termoOutorgaSequencial;
		this.termoOutorgaNumProcApac = termoOutorgaNumProcApac;
		this.irregularidadeCodigo = irregularidadeCodigo;
	}


	public int getSequencial() {
		return sequencial;
	}


	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
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


	public int getIrregularidadeCodigo() {
		return irregularidadeCodigo;
	}


	public void setIrregularidadeCodigo(int irregularidadeCodigo) {
		this.irregularidadeCodigo = irregularidadeCodigo;
	}
	
}
