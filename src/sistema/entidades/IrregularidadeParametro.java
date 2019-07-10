package sistema.entidades;

public class IrregularidadeParametro {
	private float valorInformado;
	private float valorReferencia;
	private int parametroCodigo;
	private int irregularidadeCodigo;
	
	public IrregularidadeParametro(float valorInformado, float valorReferencia, int parametroCodigo,
			int irregularidadeCodigo) {
		super();
		this.valorInformado = valorInformado;
		this.valorReferencia = valorReferencia;
		this.parametroCodigo = parametroCodigo;
		this.irregularidadeCodigo = irregularidadeCodigo;
	}

	public float getValorInformado() {
		return valorInformado;
	}

	public void setValorInformado(float valorInformado) {
		this.valorInformado = valorInformado;
	}

	public float getValorReferencia() {
		return valorReferencia;
	}

	public void setValorReferencia(float valorReferencia) {
		this.valorReferencia = valorReferencia;
	}

	public int getParametroCodigo() {
		return parametroCodigo;
	}

	public void setParametroCodigo(int parametroCodigo) {
		this.parametroCodigo = parametroCodigo;
	}

	public int getIrregularidadeCodigo() {
		return irregularidadeCodigo;
	}

	public void setIrregularidadeCodigo(int irregularidadeCodigo) {
		this.irregularidadeCodigo = irregularidadeCodigo;
	}
	
	
	
}
