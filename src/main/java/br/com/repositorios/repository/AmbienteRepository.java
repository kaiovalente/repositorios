package br.com.repositorios.repository;

import java.util.List;

import br.com.repositorios.model.Ambiente;

public interface AmbienteRepository {

	public void save(Ambiente objeto);

	public void update(Ambiente objeto);

	public void delete(Ambiente objeto);

	public List<Ambiente> list();

}
