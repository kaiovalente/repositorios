<body>
    
    <div class="row" ng-controller="listagemController" style="padding-top: 20px;">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Listagem de repositórios
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="table-responsive">
                        <div role="grid" class="dataTables_wrapper form-inline" id="dataTables-example_wrapper">
                        <div class="row">
	                   		<div class="col-sm-6">
		                        <div id="dataTables-example_filter" class="dataTables_filter">
		                        	<label>Projeto: <input type="search" class="form-control input-sm" ng-model='filtro' aria-controls="dataTables-example"></label>
		                        	<button class="btn btn-default" ng-click="buscar()">Buscar</button>
		                       	</div>
	                       	</div>
                     	</div>
                        
                        <table ng-table="tableParams" class="table table-bordered dataTable no-footer">
						    <tbody ng-repeat="group in $groups">
						        <tr class="ng-table-group">
						            <td colspan="{{$columns.length}}" style="background-color: #f9f9f9;">
						                <a href="" ng-click="group.$hideRows = !group.$hideRows">
						                    <span class="glyphicon" ng-class="{ 'glyphicon-chevron-right': group.$hideRows, 'glyphicon-chevron-down': !group.$hideRows }"></span>
						                    <strong>{{ group.value }}</strong>
						                </a>
						            </td>
						        </tr>
						        <tr ng-hide="group.$hideRows" class="gradeA odd" ng-repeat="diretorio in group.data">
						            <td sortable="nome" data-title="'Nome'">
						                <a ng-href="${pageContext.request.contextPath}/repositorio/{{diretorio.id}}">{{diretorio.nome}}</a>
						            </td>
						            <td sortable="tipo" data-title="'Tipo'">
						                {{diretorio.tipo}}
						            </td>
						            <td sortable="ambiente" data-title="'Ambiente'">
						                {{diretorio.ambiente.nome}}
						            </td>
						            <td sortable="responsavel" data-title="'Responsável'">
						                {{diretorio.responsavel}}
						            </td>
						            <td sortable="status" data-title="'Status'">
						                {{diretorio.status}}
						            </td>
						        </tr>
						    </tbody>
					    </table>
                        
<!--                         <table id="dataTables-example" class="table table-striped table-bordered table-hover dataTable no-footer" aria-describedby="dataTables-example_info"> -->
<!--                             <thead> -->
<!--                                 <tr role="row"> -->
<!--                                 	<th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" style="width: 185px;" aria-sort="ascending" aria-label="Rendering engine: activate to sort column ascending">Projeto</th> -->
<!--                                 	<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" style="width: 242px;" aria-label="Browser: activate to sort column ascending">Tipo</th> -->
<!--                                 	<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" style="width: 222px;" aria-label="Platform(s): activate to sort column ascending">Nome</th> -->
<!--                                 	<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" style="width: 159px;" aria-label="Engine version: activate to sort column ascending">Ambiente</th> -->
<!--                                 	<th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1" style="width: 113px;" aria-label="CSS grade: activate to sort column ascending">Responsável</th> -->
<!--                                 </tr> -->
<!--                             </thead> -->
<!--                             <tbody> -->
<!--                             <tr class="gradeA odd" ng-repeat="diretorio in diretorios"> -->
<!--                                     <td class="sorting_1">{{diretorio.nome}}</td> -->
<!--                                     <td class=" ">{{diretorio.nome}}</td> -->
<!--                                     <td class=" ">{{diretorio.nome}}</td> -->
<!--                                     <td class="center ">{{diretorio.nome}}</td> -->
<!--                                     <td class="center ">{{diretorio.nome}}</td> -->
<!--                             </tr> -->
<!--                             <tr class="gradeA even"> -->
<!--                                     <td class="sorting_1">Gecko</td> -->
<!--                                     <td class=" ">Firefox 1.5</td> -->
<!--                                     <td class=" ">Win 98+ / OSX.2+</td> -->
<!--                                     <td class="center ">1.8</td> -->
<!--                                     <td class="center ">A</td> -->
<!--                            </tr> -->
<!--                            </tbody> -->
<!--                         </table> -->
                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</body>
