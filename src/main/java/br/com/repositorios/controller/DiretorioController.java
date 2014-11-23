package br.com.repositorios.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import br.com.caelum.vraptor.Consumes;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.jpa.extra.Load;
import br.com.caelum.vraptor.view.Results;
import br.com.repositorios.model.Diretorio;
import br.com.repositorios.model.Projeto;
import br.com.repositorios.repository.AmbienteRepository;
import br.com.repositorios.repository.DiretorioRepository;
import br.com.repositorios.repository.ProjetoRepository;

@Controller
public class DiretorioController {

	private final Result result;
	private DiretorioRepository diretorios;
	private ProjetoRepository projetos;
	private AmbienteRepository ambientes;

	/**
	 * @deprecated CDI eyes only
	 */
	protected DiretorioController() {
		this(null, null, null, null);
	}
	
	@Inject
	public DiretorioController(Result result, DiretorioRepository diretorios, ProjetoRepository projetos, AmbienteRepository ambientes) {
		this.result = result;
		this.diretorios = diretorios;
		this.projetos = projetos;
		this.ambientes = ambientes;
	}
	
	@Get
	@Path("/novo")
	public void novo() {
	}
	
	@Get
	@Path("/exibir")
	@Consumes("application/json")
	public void exibir(Diretorio diretorio) {
		result.redirectTo(this).novo();
	}
	
	@Get
	@Path("/repositorio/{diretorio.id}")
	public void visualizar(@Load Diretorio diretorio) {
		result.include(diretorios.getDiretorioById(diretorio));
		result.forwardTo(this).novo();
	}
	
	@Get("/diretorio/{diretorio.id}")
	public void diretorio(@Load Diretorio diretorio) {
		result.use(Results.json())
				.withoutRoot()
				.from(diretorios.getDiretorioById(diretorio))
				.recursive()
				.serialize();
	}
	
	@Get("/diretorios/{projeto.id}")
	public void diretorios(@Load Projeto projeto) {
		result.use(Results.json())
				.withoutRoot()
				.from(diretorios.list(projeto))
				.serialize();
	}
	
	@Get("/projetos")
	public void projetos() {
		result.use(Results.json())
				.withoutRoot()
				.from(projetos.list())
				.serialize();
	}
	
	@Get("/ambientes")
	public void ambientes() {
		result.use(Results.json())
				.withoutRoot()
				.from(ambientes.list())
				.serialize();
	}

	@Post("/diretorio/novo")
	@Consumes("application/json")
	public void save(Diretorio diretorio) {
		diretorios.save(diretorio);
		result.use(Results.json()).withoutRoot().from(diretorio).serialize();
	}
	
	@Put("/diretorio/atualizar")
	@Consumes("application/json")
	public void update(Diretorio diretorio) {
		diretorios.update(diretorio);
		result.nothing();
	}
	
	@Get("/listagem")
	public void listagem() {
	}
	
	@Get("/diretorios")
	public void diretorios() {
		result.use(Results.json())
				.withoutRoot()
				.from(diretorios.list())
				.recursive()
				.serialize();
	}
	
	@Get("/diretorios/projeto/{nome}")
	public void diretoriosPorProjeto(String nome) {
		
		List<Projeto> lista = projetos.getProjetosPorNome(nome);
		
		List<Diretorio> retorno = new ArrayList<>();
		
		for (Projeto projeto : lista) {
			retorno.addAll(diretorios.list(projeto));
		}
		
		result.use(Results.json())
				.withoutRoot()
				.from(retorno)
				.recursive()
				.serialize();
	}
	
}