package br.com.repositorios.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Ambiente {

	public static final String PRODUCAO = "Produção";
	public static final String HOMOLOGACAO = "Homologação";
	public static final String DESENVOLVIMENTO = "Desenvolvimento";
	
	@Id
	@GeneratedValue
	@Column(name="id_ambiente")
	private Long id;

	@NotEmpty
	private String nome;
	
	public Ambiente() {
		
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Ambiente producao() {
		this.nome = PRODUCAO;
		return this;
	}
	
	public Ambiente homologacao() {
		this.nome = HOMOLOGACAO;
		return this;
	}
	
	public Ambiente desenvolvimento() {
		this.nome = DESENVOLVIMENTO;
		return this;
	}
	
}
