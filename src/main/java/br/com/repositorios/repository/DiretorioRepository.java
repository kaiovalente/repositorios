package br.com.repositorios.repository;

import java.util.List;

import br.com.repositorios.model.Ambiente;
import br.com.repositorios.model.Diretorio;
import br.com.repositorios.model.Projeto;

public interface DiretorioRepository {

	public void save(Diretorio objeto);

	public void update(Diretorio objeto);

	public void delete(Diretorio objeto);

	public List<Diretorio> list();

	public List<Diretorio> list(Projeto projeto);

	public Diretorio getDiretorioById(Diretorio diretorio);

	public Integer getQuantidadeDeRepositoriosNoAmbiente(Ambiente ambiente);

	public Integer getQuantidadeDeRepositoriosAtivos();

}
