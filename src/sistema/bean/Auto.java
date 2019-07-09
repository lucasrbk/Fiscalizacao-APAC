package sistema.bean;

import java.util.Date;

public class Auto {
	private int codigo;
	private Date data_emissao;
	private String obs;
	private String matricula;
	private int codIrregularidade;
	private int tipoAuto;
	
	
	public Auto(int codigo, Date data_emissao, String obs, String matricula, int codIrregularidade, int tipoAuto) {
		super();
		this.codigo = codigo;
		this.data_emissao = data_emissao;
		this.obs = obs;
		this.matricula = matricula;
		this.codIrregularidade = codIrregularidade;
		this.tipoAuto = tipoAuto;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public Date getData_emissao() {
		return data_emissao;
	}
	public void setData_emissao(Date data_emissao) {
		this.data_emissao = data_emissao;
	}
	public String getObs() {
		return obs;
	}
	public void setObs(String obs) {
		this.obs = obs;
	}
	public String getMatricula() {
		return matricula;
	}
	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
	public int getCodIrregularidade() {
		return codIrregularidade;
	}
	public void setCodIrregularidade(int codIrregularidade) {
		this.codIrregularidade = codIrregularidade;
	}
	public int getTipoAuto() {
		return tipoAuto;
	}
	public void setTipoAuto(int tipoAuto) {
		this.tipoAuto = tipoAuto;
	}
	
	
}
