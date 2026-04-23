package gerenciador;

public class Produto {
	 
	private int id;
	private String nome;
	private int unidadeCompra;
	private String descricao;
	private int qtdPrevistoMes;
	private double precoMaxComprado;
	
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int unidadeCompra() {
		return unidadeCompra;
	}
	public void unidadeCompra(int uCompra) {
		this.unidadeCompra = uCompra;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getQtdPrevistoMes() {
		return qtdPrevistoMes;
	}
	public void setQtdPrevistoMes(int qtdPrevisto) {
		this.qtdPrevistoMes = qtdPrevisto;
	}
	public double getPrecoMaxComprado() {
		return precoMaxComprado;
	}
	public void setPrecoMaxComprado(double precoMax) {
		this.precoMaxComprado = precoMax;
	} 
}
