package br.com.repositorios.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.repositorios.model.Ambiente;
import br.com.repositorios.repository.DiretorioRepository;

@Controller
public class IndexController {

	private final Result result;
	private DiretorioRepository diretorios;

	/**
	 * @deprecated CDI eyes only
	 */
	protected IndexController() {
		this(null, null);
	}
	
	@Inject
	public IndexController(Result result,  DiretorioRepository diretorios) {
		this.result = result;
		this.diretorios = diretorios;
	}

	@Get
	@Path("/")
	public void index() {
		
		Integer producao = diretorios.getQuantidadeDeRepositoriosNoAmbiente(new Ambiente().producao());
		Integer homologacao = diretorios.getQuantidadeDeRepositoriosNoAmbiente(new Ambiente().homologacao());
		Integer desenvolvimento = diretorios.getQuantidadeDeRepositoriosNoAmbiente(new Ambiente().desenvolvimento());
		Integer ativos = diretorios.getQuantidadeDeRepositoriosAtivos();
		
		result.include("producao", producao);
		result.include("homologacao", homologacao);
		result.include("desenvolvimento", desenvolvimento);
		result.include("ativos", ativos);
		
	}
}