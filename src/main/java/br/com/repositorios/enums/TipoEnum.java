package br.com.repositorios.enums;

public enum TipoEnum {

	BRANCH("Branch"),
	TRUNK("Trunk"),
	TAG("Tag");
	
	private String rotulo;

	private TipoEnum(String rotulo) {
		this.rotulo = rotulo;
	}

	public String getRotulo() {
		return rotulo;
	}
	
}
