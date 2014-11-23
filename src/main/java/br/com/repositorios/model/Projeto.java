package br.com.repositorios.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Projeto implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1707020749367221475L;

	@Id
	@GeneratedValue
	@Column(name="id_projeto")
	private Long id;

	@NotEmpty
	private String nome;
	
	public Projeto() {
		super();
	}

	public Projeto(Long id, String nome) {
		super();
		this.id = id;
		this.nome = nome;
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
	
	

}
