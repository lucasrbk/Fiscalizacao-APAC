package sistema.bean;

public class Outorga {
	private int numProcessoApac;
	private String processoCPRH;
	private String tipo;
	
	
	public Outorga(int numProcessoApac, String processoCPRH, String tipo) {
		super();
		this.numProcessoApac = numProcessoApac;
		this.processoCPRH = processoCPRH;
		this.tipo = tipo;
	}


	public int getNumProcessoApac() {
		return numProcessoApac;
	}


	public void setNumProcessoApac(int numProcessoApac) {
		this.numProcessoApac = numProcessoApac;
	}


	public String getProcessoCPRH() {
		return processoCPRH;
	}


	public void setProcessoCPRH(String processoCPRH) {
		this.processoCPRH = processoCPRH;
	}


	public String getTipo() {
		return tipo;
	}


	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
}
