function listagemController($scope, $filter, $http, ngTableParams) {

	var diretorios = [{projeto: 'Petra', ambiente: 'Local', 'objeto': {nome: 'nome'}},
	                {projeto: 'Petra', ambiente: 'Homologacao', 'objeto': {nome: 'nome'}}];
	
    var init = function () {
//		$http.get('/repositorios/diretorios').success(function(data){
//			$scope.diretorios = data;
//		});
    }();
    
    
    $scope.buscar = function () {
    	$scope.tableParams.reload();
    	$scope.tableParams.page(1);
    };
    
    
    $scope.tableParams = new ngTableParams({
        page: 1, 
        count: 10
    }, {
    	counts: [],
    	groupBy: function (item) {
		  return item.projeto.nome;
		},
        getData: function($defer, params) {
        	
        	var uri = '/repositorios/diretorios'
            if ($scope.filtro != null && $scope.filtro != '') {
            	uri = '/repositorios/diretorios/projeto/'+ $scope.filtro;
            }
        	
            $http.get(uri).success(function(data){
            	
            	var orderedData = data;
            	params.total(orderedData.length);
            	
//            	var orderedData = params.filter() ?
//                      $filter('filter')(data, params.filter()) :
//                    	  data;
            	
                $defer.resolve(orderedData.slice((params.page() - 1) * params.count(), params.page() * params.count()));
            	
    		});
            
        }
    });

}
