package sistema.entidades;

public class Advertencia {
	private int sequencial;
	private String obs;
	private String tipo;
	private String descricao;
	private int AUTO_codigo;
	private int idModeloTemplate;
	
	public Advertencia(int sequencial, String obs, String tipo, String descricao, int aUTO_codigo,
			int idModeloTemplate) {
		super();
		this.sequencial = sequencial;
		this.obs = obs;
		this.tipo = tipo;
		this.descricao = descricao;
		AUTO_codigo = aUTO_codigo;
		this.idModeloTemplate = idModeloTemplate;
	}

	public int getSequencial() {
		return sequencial;
	}

	public void setSequencial(int sequencial) {
		this.sequencial = sequencial;
	}

	public String getObs() {
		return obs;
	}

	public void setObs(String obs) {
		this.obs = obs;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getAUTO_codigo() {
		return AUTO_codigo;
	}

	public void setAUTO_codigo(int aUTO_codigo) {
		AUTO_codigo = aUTO_codigo;
	}

	public int getIdModeloTemplate() {
		return idModeloTemplate;
	}

	public void setIdModeloTemplate(int idModeloTemplate) {
		this.idModeloTemplate = idModeloTemplate;
	}
	
}
