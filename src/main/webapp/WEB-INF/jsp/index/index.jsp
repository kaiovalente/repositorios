<body>
	<div class="row">
	    <div class="col-lg-12">
	        <h1 class="page-header">Dashboard</h1>
	    </div>
	    <!-- /.col-lg-12 -->
    </div>
    
    <div class="row">
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${producao}</div>
                            <div>Produção</div>
                        </div>
                    </div>
                </div>
                <a href="${linkTo[DiretorioController].listagem}">
                    <div class="panel-footer">
                        <span class="pull-left">Detalhes</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${homologacao}</div>
                            <div>Homologação</div>
                        </div>
                    </div>
                </div>
                <a href="${linkTo[DiretorioController].listagem}">
                    <div class="panel-footer">
                        <span class="pull-left">Detalhes</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${desenvolvimento}</div>
                            <div>Desenvolvimento</div>
                        </div>
                    </div>
                </div>
                <a href="${linkTo[DiretorioController].listagem}">
                    <div class="panel-footer">
                        <span class="pull-left">Detalhes</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-6">
            <div class="panel panel-red">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-tasks fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">${ativos}</div>
                            <div>Repositórios Ativos</div>
                        </div>
                    </div>
                </div>
                <a href="${linkTo[DiretorioController].listagem}">
                    <div class="panel-footer">
                        <span class="pull-left">Detalhes</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</body>
