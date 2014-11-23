function diretorioController($scope, $window, $http, $routeParams) {

	$scope.diretorio = {tipo: 'BRANCH', status: 'ATIVO', projeto: ''};
	$scope.origemDisabled = true;
	$scope.inserindo = true;
	
    var init = function () {
    	
		$http.get('/repositorios/projetos').success(function(data){
			$scope.projetos = data;
		});
		
		$http.get('/repositorios/ambientes').success(function(data){
			$scope.ambientes = data;
		});
		
    }();
    
    $scope.loadUser = function(id) {
    	
    	if (id != '') {
    		$http.get('/repositorios/diretorio/'+id).success(function(data){
    			$scope.diretorio = data;
    			$scope.carregarDiretorios();
    			$scope.origemDisabled = false;
    			$scope.inserindo = false;
    		});
    	}
    	
    }

    $scope.salvar = function () {
    	
    	if ($scope.diretorioForm.$invalid) {
    		return false;
    	}
    	
    	var diretorio = angular.toJson({diretorio : $scope.diretorio});
    	$http.post('/repositorios/diretorio/novo', diretorio).success(function(data){
    		listagem();
    	});
    };

    $scope.atualizar = function () {
    	var url = '/repositorios/diretorio/atualizar',
       	    diretorio = angular.toJson({diretorio : $scope.diretorio});
    	
    	$http.put(url, diretorio).success(function(data){
    		listagem();
		});
    };
    
    $scope.exibeOrigem = function() {
    	return $scope.diretorio.tipo == 'BRANCH' || $scope.diretorio.tipo == 'TAG';
    };
    
    $scope.setTipo = function($event) {
    	
    	if ($scope.diretorio.tipo == 'TRUNK') {
    		$scope.diretorio.origem = null;
    	}
    };
    
    $scope.setProjeto = function($event) {
    	
    	if ($scope.diretorio.projeto == null) {
    		$scope.origemDisabled = true;
    		return;
//    		$event.preventDefault();
//    	    $event.stopPropagation();
    	}
    	
    	if ($scope.diretorio.projeto != '') {
    		$scope.origemDisabled = false;
    	}
    	
    	$scope.carregarDiretorios();
    };
    
    $scope.carregarDiretorios = function() {
    	
    	$http.get('/repositorios/diretorios/'+$scope.diretorio.projeto.id).success(function(data){
			$scope.diretorios = data;
		});
    	
    }
    
    listagem = function() {
    	$window.location = '/repositorios/listagem';
    }
    
    /*
     * Definições do datePicker
     */
    $scope.open = function($event) {
	    $event.preventDefault();
	    $event.stopPropagation();
	
	    $scope.opened = true;
	};
	  
    $scope.dateOptions = {
	    showWeeks: false,
	};
}
