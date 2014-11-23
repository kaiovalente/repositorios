<nav style="margin-bottom: 0" role="navigation" class="navbar navbar-default navbar-static-top">
    <div class="navbar-header">
        <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="${linkTo[IndexController].index}" class="navbar-brand">Comprova - Repositórios</a>
    </div>
    <!-- /.navbar-header -->

    <div role="navigation" class="navbar-default sidebar">
        <div class="sidebar-nav navbar-collapse">
            <ul id="side-menu" class="nav">
                <li>
                    <a href="${linkTo[IndexController].index}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                <li>
                    <a href="${linkTo[DiretorioController].novo}"><i class="fa fa-edit fa-fw"></i> Novo repositório</a>
                </li>
                <li>
                    <a href="${linkTo[DiretorioController].listagem}"><i class="fa fa-table fa-fw"></i> Listagem</a>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>