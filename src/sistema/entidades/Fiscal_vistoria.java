package sistema.entidades;

public class Fiscal_vistoria {
	private int fiscalCpf;
	private int vistoriaCodigo;
	
	
	public Fiscal_vistoria(int fiscalCpf, int vistoriaCodigo) {
		super();
		this.fiscalCpf = fiscalCpf;
		this.vistoriaCodigo = vistoriaCodigo;
	}
	public int getFiscalCpf() {
		return fiscalCpf;
	}
	public void setFiscalCpf(int fiscalCpf) {
		this.fiscalCpf = fiscalCpf;
	}
	public int getVistoriaCodigo() {
		return vistoriaCodigo;
	}
	public void setVistoriaCodigo(int vistoriaCodigo) {
		this.vistoriaCodigo = vistoriaCodigo;
	}
	
	
	
}
