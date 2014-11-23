package br.com.repositorios.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.repositorios.model.Projeto;
import br.com.repositorios.repository.ProjetoRepository;

@RequestScoped
@Named("projetos")
public class ProjetoDAO implements ProjetoRepository {

	@Inject
	private EntityManager entityManager;

    protected ProjetoDAO() {
    }

    public ProjetoDAO(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
    @Override
	public void save(Projeto objeto) {
		entityManager.persist(objeto);
	}

	@Override
	public void update(Projeto objeto) {
		entityManager.merge(objeto);
	}

	@Override
	public void delete(Projeto projeto) {
		entityManager.remove(projeto);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Projeto> list() {
		Query query = entityManager.createQuery("SELECT p FROM Projeto p");
	    return (List<Projeto>) query.getResultList();
	}
	
	@Override
	public Projeto getProjetoPorNome(Projeto projeto) {
		
		Query query = entityManager.createQuery("SELECT p FROM Projeto p where p.nome like :nome");
		query.setParameter("nome", "%"+projeto.getNome()+"%");
		
		Projeto retorno = null;
		
		try {
			retorno = (Projeto) query.getSingleResult();
		} catch(NoResultException e) {
			return retorno;
		}
		
	    return retorno;
	}
	
	@Override
	public List<Projeto> getProjetosPorNome(String projeto) {
		
		Query query = entityManager.createQuery("SELECT p FROM Projeto p where p.nome like :nome");
		query.setParameter("nome", "%"+projeto+"%");
		
	    return (List<Projeto>) query.getResultList();
	}

}
