package sistema.entidades;

public class SecaoTemplate {
	private int idSecaoTemplate;
	private String nomeSecao;
	private String parametro1;
	private String parametro3;
	private String parametro2;
	private String conteudoSecao;
	private int idModeloTemplate;
	
	
	public SecaoTemplate(int idSecaoTemplate, String nomeSecao, String parametro1, String parametro3, String parametro2,
			String conteudoSecao, int idModeloTemplate) {
		super();
		this.idSecaoTemplate = idSecaoTemplate;
		this.nomeSecao = nomeSecao;
		this.parametro1 = parametro1;
		this.parametro3 = parametro3;
		this.parametro2 = parametro2;
		this.conteudoSecao = conteudoSecao;
		this.idModeloTemplate = idModeloTemplate;
	}


	public int getIdSecaoTemplate() {
		return idSecaoTemplate;
	}


	public void setIdSecaoTemplate(int idSecaoTemplate) {
		this.idSecaoTemplate = idSecaoTemplate;
	}


	public String getNomeSecao() {
		return nomeSecao;
	}


	public void setNomeSecao(String nomeSecao) {
		this.nomeSecao = nomeSecao;
	}


	public String getParametro1() {
		return parametro1;
	}


	public void setParametro1(String parametro1) {
		this.parametro1 = parametro1;
	}


	public String getParametro3() {
		return parametro3;
	}


	public void setParametro3(String parametro3) {
		this.parametro3 = parametro3;
	}


	public String getParametro2() {
		return parametro2;
	}


	public void setParametro2(String parametro2) {
		this.parametro2 = parametro2;
	}


	public String getConteudoSecao() {
		return conteudoSecao;
	}


	public void setConteudoSecao(String conteudoSecao) {
		this.conteudoSecao = conteudoSecao;
	}


	public int getIdModeloTemplate() {
		return idModeloTemplate;
	}


	public void setIdModeloTemplate(int idModeloTemplate) {
		this.idModeloTemplate = idModeloTemplate;
	}
	
	
}
