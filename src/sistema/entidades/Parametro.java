package sistema.entidades;

public class Parametro {
	private int codigo;
	private String descricao;
	private int irregularidadeCodigo;
	
	
	public Parametro(int codigo, String descricao, int irregularidadeCodigo) {
		super();
		this.codigo = codigo;
		this.descricao = descricao;
		this.irregularidadeCodigo = irregularidadeCodigo;
	}


	public int getCodigo() {
		return codigo;
	}


	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}


	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public int getIrregularidadeCodigo() {
		return irregularidadeCodigo;
	}


	public void setIrregularidadeCodigo(int irregularidadeCodigo) {
		this.irregularidadeCodigo = irregularidadeCodigo;
	}
	
	
}
