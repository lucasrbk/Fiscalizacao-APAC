package sistema.entidades;

public class PedidoRenovacao {
	private int data;
	private String motivo;
	private String observacao;
	private int outorga_num_proc_apac;
	
	public PedidoRenovacao(int data, String motivo, String observacao, int outorga_num_proc_apac) {
		super();
		this.data = data;
		this.motivo = motivo;
		this.observacao = observacao;
		this.outorga_num_proc_apac = outorga_num_proc_apac;
	}
	
	public int getOutorga_num_proc_apac() {
		return outorga_num_proc_apac;
	}

	public void setOutorga_num_proc_apac(int outorga_num_proc_apac) {
		this.outorga_num_proc_apac = outorga_num_proc_apac;
	}

	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}
	
	public String getMotivo() {
		return motivo;
	}
	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	
}
