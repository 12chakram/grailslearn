<!DOCTYPE html>
<html lang="en" class="bg-dark">
<head>
  <meta charset="utf-8" />
	<title>Multiplex Online Portal</title>
	<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'font.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'js/select2', file: 'select2.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'js/select2', file: 'theme.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'js/calendar/', file: 'bootstrap_calendar.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.Jcrop.css')}" type="text/css" />
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
	
	    <g:javascript src="jquery.min.js" />
		<!-- Bootstrap -->
		<g:javascript src="bootstrap.js" />
		<!-- App -->
		<g:javascript src="app.js" />
		<g:javascript src="app.plugin.js" />
		<g:javascript src="/slimscroll/jquery.slimscroll.min.js"/>
		<g:javascript src="/parsley/parsley.min.js"/>
        <g:javascript src="/parsley/parsley.extend.js"/>
        <fbg:resources locale="${Locale.getDefault()}" />
		<g:javascript src="calendar/bootstrap_calendar.js"></g:javascript>
 		<g:javascript src="calendar/demo.js"></g:javascript>
	
	<!--[if lt IE 9]>
	  <script src="js/ie/html5shiv.js"></script>
	  <script src="js/ie/respond.min.js"></script>
	  <script src="js/ie/excanvas.js"></script>
	<![endif]-->
	<g:layoutHead/>	
	<r:layoutResources />
</head>
<body class=" ">
   <g:layoutBody/>   
</body>
</html>