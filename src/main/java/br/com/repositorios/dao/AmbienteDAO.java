package br.com.repositorios.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.repositorios.model.Ambiente;
import br.com.repositorios.model.Projeto;
import br.com.repositorios.repository.AmbienteRepository;

@RequestScoped
@Named("ambientes")
public class AmbienteDAO implements AmbienteRepository {

	@Inject
	private EntityManager entityManager;

    protected AmbienteDAO() {
    }

    public AmbienteDAO(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
    @Override
	public void save(Ambiente objeto) {
		entityManager.persist(objeto);
	}

	@Override
	public void update(Ambiente objeto) {
		entityManager.merge(objeto);
	}

	@Override
	public void delete(Ambiente projeto) {
		entityManager.remove(projeto);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Ambiente> list() {
		Query query = entityManager.createQuery("SELECT a FROM Ambiente a");
	    return (List<Ambiente>) query.getResultList();
	}

}
