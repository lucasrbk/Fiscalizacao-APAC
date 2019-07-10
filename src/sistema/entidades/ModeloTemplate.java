package sistema.entidades;

public class ModeloTemplate {
	private int idModeloTemplate;
	private String nome;
	private String cabecalho1;
	private String cabecalho2;
	private String cabecalho3;
	private int tipoAutoCodigo;
	
	
	public ModeloTemplate(int idModeloTemplate, String nome, String cabecalho1, String cabecalho2, String cabecalho3,
			int tipoAutoCodigo) {
		super();
		this.idModeloTemplate = idModeloTemplate;
		this.nome = nome;
		this.cabecalho1 = cabecalho1;
		this.cabecalho2 = cabecalho2;
		this.cabecalho3 = cabecalho3;
		this.tipoAutoCodigo = tipoAutoCodigo;
	}


	public int getIdModeloTemplate() {
		return idModeloTemplate;
	}


	public void setIdModeloTemplate(int idModeloTemplate) {
		this.idModeloTemplate = idModeloTemplate;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCabecalho1() {
		return cabecalho1;
	}


	public void setCabecalho1(String cabecalho1) {
		this.cabecalho1 = cabecalho1;
	}


	public String getCabecalho2() {
		return cabecalho2;
	}


	public void setCabecalho2(String cabecalho2) {
		this.cabecalho2 = cabecalho2;
	}


	public String getCabecalho3() {
		return cabecalho3;
	}


	public void setCabecalho3(String cabecalho3) {
		this.cabecalho3 = cabecalho3;
	}


	public int getTipoAutoCodigo() {
		return tipoAutoCodigo;
	}


	public void setTipoAutoCodigo(int tipoAutoCodigo) {
		this.tipoAutoCodigo = tipoAutoCodigo;
	}
	
	
	
}
