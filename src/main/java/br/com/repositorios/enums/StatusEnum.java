package br.com.repositorios.enums;

public enum StatusEnum {

	ATIVO("Ativo"),
	INATIVO("Inativo");
	
	private String rotulo;

	private StatusEnum(String rotulo) {
		this.rotulo = rotulo;
	}

	public String getRotulo() {
		return rotulo;
	}
	
}
