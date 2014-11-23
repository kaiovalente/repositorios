package br.com.repositorios.repository;

import java.util.List;

import br.com.repositorios.model.Projeto;

public interface ProjetoRepository {

	public void save(Projeto objeto);

	public void update(Projeto objeto);

	public void delete(Projeto objeto);

	public List<Projeto> list();

	public Projeto getProjetoPorNome(Projeto projeto);

	public List<Projeto> getProjetosPorNome(String projeto);

}
