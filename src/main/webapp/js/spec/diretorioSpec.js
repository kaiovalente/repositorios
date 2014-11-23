var scope;
var ctrl;

beforeEach(module('Repositorios'));
	
describe('Controller: diretorioController', function () {
	
	beforeEach(inject(function($rootScope, $controller) {
	    scope = $rootScope.$new();
	    successCallback = jasmine.createSpy();
        errorCallback = jasmine.createSpy();
	    ctrl = $controller('diretorioController', {
	        $scope: scope
	    });
	}));
	
    
    it('deve iniciar o diretorio padrao', function() {
    	expect(scope.diretorio.tipo).toBe('BRANCH');
    	expect(scope.diretorio.status).toBe('ATIVO');
    	expect(scope.diretorio.projeto).toBe('');
	});
    
    it('deve exibir a origem quando diretorio for BRANCH', function() {
    	scope.diretorio.tipo = 'BRANCH';
    	expect(scope.exibeOrigem()).toBe(true);
	});
    
    it('deve exibir a origem quando diretorio for TAG', function() {
    	scope.diretorio.tipo = 'TAG';
    	expect(scope.exibeOrigem()).toBe(true);
	});
    
    it('deve limpar a Origem quando Tipo for Trunk', function() {
    	scope.diretorio.tipo = 'TRUNK';
    	scope.setTipo();
    	expect(scope.diretorio.origem).toBe(null);
	});
    
    it('deve desabilitar a origem quando nao houver projeto selecionado', function() {
    	
    	var event = {
                type: 'click',
                preventDefault: function () {},
                stopPropagation: function () {}
            };
    	
    	scope.diretorio.projeto = null;
    	scope.setProjeto(event);
    	
    	expect(scope.origemDisabled).toBe(true);
	});
    
    it('deve habilitar a origem quando houver projeto selecionado', function() {
    	
    	var event = {
                type: 'click',
                preventDefault: function () {},
                stopPropagation: function () {}
            };
    	
    	var carregarDiretoriosSpy = spyOn(scope, 'carregarDiretorios');
    	
    	scope.diretorio.projeto = 'teste';
    	scope.setProjeto(event);
    	
    	expect(carregarDiretoriosSpy).toHaveBeenCalledWith();
    	
    	expect(scope.origemDisabled).toBe(false);
	});
    
});
