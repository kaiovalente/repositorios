<body>
    
    <div class="row" style="padding-top: 20px;">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Novo Diretório
                </div>
                <div class="panel-body">
                    <div class="row">
                         <form name="diretorioForm" role="form" ng-controller="diretorioController" data-ng-init="loadUser('${diretorio.id}')">
                         	<input type="hidden" name="hiddenId" ng-model="diretorio.id" value="${diretorio.id}" />
                        	<div class="col-lg-6">
                            	<div class="form-group">
	                                <label>Nome</label>
	                                <input class="form-control" ng-model="diretorio.nome" ng-required="true"> 
	                            </div>
                            
                                
                                <div class="form-group">
                                
                                    <label>Ambiente</label>
                                	<select class="form-control" ng-model="diretorio.ambiente" ng-required="true" ng-options="ambiente.nome for ambiente in ambientes track by ambiente.id">
								      <option value="">Selecione</option>
								    </select>
                                </div>
                                
                                <div class="form-group">
                                    <label>Tipo</label>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" ng-model="diretorio.tipo" ng-required="true" ng-disabled="!inserindo" ng-checked="true" value="BRANCH" name="radioTipo">Branch
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" ng-model="diretorio.tipo" ng-required="true" ng-disabled="!inserindo" value="TAG" name="radioTipo">Tag
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" ng-model="diretorio.tipo" ng-required="true" ng-disabled="!inserindo" ng-change="setTipo()" value="TRUNK" name="radioTipo">Trunk
                                        </label>
                                    </div>
                                </div>
                                
                                <div class="form-group"  ng-show="exibeOrigem();">
                                    <label>Criada a partir de:</label>
                                    
                                    <select class="form-control" ng-disabled="origemDisabled || !inserindo" ng-model="diretorio.origem" ng-options="diretorio.nome for diretorio in diretorios track by diretorio.id">
								      <option value="">Selecione</option>
								    </select>
                                </div>
                                
                            	<div class="form-group">
                                    <label>Descrição</label>
                                    <textarea rows="3" class="form-control" ng-model="diretorio.descricao" ng-required="true"></textarea>
                                </div>
                                
                               <button class="btn btn-default" ng-click="salvar()" ng-show="inserindo">Salvar</button>
                               <button class="btn btn-default" ng-click="atualizar()" ng-show="!inserindo">Atualizar</button>
                            
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                        <div class="col-lg-6">
                        
                        	<div class="form-group">
                                <label>Projeto</label>
                                
                                <select class="form-control" ng-change="setProjeto($event)" ng-model="diretorio.projeto" ng-required="true" ng-options="projeto.nome for projeto in projetos track by projeto.id">
							      <option value="" >Selecione</option>
							    </select>
                                
                            </div>
                        
                            <div class="form-group">
                                <label>Responsável</label>
                                <input class="form-control" ng-model="diretorio.responsavel" ng-required="true">
                            </div>
                            
                            <div class="form-group" style="min-height: 105px">
                                <label>Status</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" ng-model="diretorio.status" ng-required="true" checked="" value="ATIVO" id="optionsRadios1" name="radioStatus">Ativo
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" ng-model="diretorio.status" ng-required="true" value="INATIVO" id="optionsRadios2" name="radioStatus">Inativo
                                    </label>
                                </div>
                            </div>
                            
                            <div class="form-group">
                               <div class="col-md-6" style="padding-left: 0px;">
	                               <label>Data de criação</label>
	                               <p class="input-group">
	                               		<input type="text" is-open="opened" ng-click="opened = true" datepicker-popup="dd/MM/yyyy" ng-model="diretorio.dataCriacao" ng-required="true" class="form-control" datepicker-options="dateOptions" current-text="Hoje" close-text="Fechar" clear-text="Limpar"/>
	                               		<span class="input-group-btn">
							                <button type="button" class="btn btn-default" ng-click="open($event)"><i class="glyphicon glyphicon-calendar"></i></button>
							            </span>
							       </p>
						       </div>
                            </div>
                            
<!--                             <div class="row" ng-controller="datePickerController"> -->
                            
<!-- 						        <div class="col-md-6"> -->
<!-- 						        	<label>Data de criação</label> -->
<!-- 						            <p class="input-group"> -->
<!-- 						              <input type="text" class="form-control" datepicker-popup="{{format}}" ng-model="diretorio.dataCriacao" is-open="opened" min-date="minDate" datepicker-options="dateOptions" date-disabled="disabled(date, mode)" ng-required="true" current-text="Hoje" close-text="Fechar" clear-text="Limpar" /> -->
<!-- 						              <span class="input-group-btn"> -->
<!-- 						                <button type="button" class="btn btn-default" ng-click="open($event)"><i class="glyphicon glyphicon-calendar"></i></button> -->
<!-- 						              </span> -->
<!-- 						            </p> -->
<!-- 						        </div> -->
<!-- 						    </div> -->
                            
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                      </form>
                    </div>
                    
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</body>
