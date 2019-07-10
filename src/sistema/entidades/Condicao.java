package sistema.entidades;

public class Condicao {
	private int idCondicao;
	private String descricao;
	
	public Condicao(int idCondicao, String descricao) {
		super();
		this.idCondicao = idCondicao;
		this.descricao = descricao;
	}

	public int getIdCondicao() {
		return idCondicao;
	}

	public void setIdCondicao(int idCondicao) {
		this.idCondicao = idCondicao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
}
