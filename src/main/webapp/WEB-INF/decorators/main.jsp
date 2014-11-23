<!DOCTYPE html>
<html>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>

<html>
<head>
  
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Dashboard de gerenciamento de configuração">
    <meta name="author" content="Kaio Valente">

    <title>Comprova - Repositórios</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="${pageContext.request.contextPath}/css/plugins/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${pageContext.request.contextPath}/css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
 	<decorator:head />
</head>
<body ng-app="Repositorios" id="ng-app">
    <div id="wrapper">
		<jsp:include page="../../topo-menu.jsp" />
		<div id="page-wrapper" style="min-height: 554px;">
			<div ng-view></div>
			<decorator:body />
		</div>
  	</div>	

</body>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/angular-route.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/diretorioController.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/listagemController.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/datePickerController.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ui-bootstrap-tpls-0.11.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ng-table.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>


</html>