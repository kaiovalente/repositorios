package br.com.repositorios.dao;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.repositorios.enums.StatusEnum;
import br.com.repositorios.model.Ambiente;
import br.com.repositorios.model.Diretorio;
import br.com.repositorios.model.Projeto;
import br.com.repositorios.repository.DiretorioRepository;

@RequestScoped
@Named("diretorios")
public class DiretorioDAO implements DiretorioRepository {

	@Inject
	private EntityManager entityManager;

    protected DiretorioDAO() {
    }

    public DiretorioDAO(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
    
    @Override
	public void save(Diretorio objeto) {
		entityManager.persist(objeto);
	}

	@Override
	public void update(Diretorio objeto) {
		entityManager.merge(objeto);
	}

	@Override
	public void delete(Diretorio objeto) {
		entityManager.remove(objeto);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Diretorio> list() {
		Query query = entityManager.createQuery("SELECT d FROM Diretorio d");
	    return (List<Diretorio>) query.getResultList();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Diretorio> list(Projeto projeto) {
		Query query = entityManager.createQuery("SELECT d FROM Diretorio d where d.projeto = :projeto and d.status = :status");
		query.setParameter("projeto", projeto);
		query.setParameter("status", StatusEnum.ATIVO);
	    return (List<Diretorio>) query.getResultList();
	}
	
	@Override
	public Diretorio getDiretorioById(Diretorio diretorio) {
		
		return entityManager.find(Diretorio.class, diretorio.getId());
		
	}
	
	public Integer getQuantidadeDeRepositoriosNoAmbiente(Ambiente ambiente) {
		Query query = entityManager.createQuery("SELECT d FROM Diretorio d where d.ambiente.nome = :ambiente and d.status = :status");
		
		query.setParameter("ambiente", ambiente.getNome());
		query.setParameter("status", StatusEnum.ATIVO);
		
	    return query.getResultList().size();
	}
	
	public Integer getQuantidadeDeRepositoriosAtivos() {
		Query query = entityManager.createQuery("SELECT d FROM Diretorio d where d.status = :status");
		
		query.setParameter("status", StatusEnum.ATIVO);
		
	    return query.getResultList().size();
	}

}
