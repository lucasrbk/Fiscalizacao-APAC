package sistema.entidades;

public class Fiscal {
	private int cpf;
	private String nome;
	private String cod_apac;
	
	public Fiscal(int cpf, String nome, String cod_apac) {
		super();
		this.cpf = cpf;
		this.nome = nome;
		this.cod_apac = cod_apac;
	}
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCod_apac() {
		return cod_apac;
	}
	public void setCod_apac(String cod_apac) {
		this.cod_apac = cod_apac;
	}
	
	
	
	
}
