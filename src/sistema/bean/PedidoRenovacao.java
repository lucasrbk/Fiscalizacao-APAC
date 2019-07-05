package sistema.bean;

public class PedidoRenovacao {
	private int data;
	private String motivo;
	private String observacao;
	private Outorga outorga;
	
	public PedidoRenovacao(int data, String motivo, String observacao, Outorga outorga) {
		super();
		this.data = data;
		this.motivo = motivo;
		this.observacao = observacao;
		this.outorga = outorga;
	}
	
	public Outorga getOutorga() {
		return outorga;
	}

	public void setOutorga(Outorga outorga) {
		this.outorga = outorga;
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
