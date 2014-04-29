<!DOCTYPE html>
<html lang="en">
	<head>
	
	<script type="text/javascript">
    if (window.location.hash && window.location.hash == '#_=_') {
        window.location.hash = '';
    }
   </script>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
         <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
  
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'js/calendar/', file: 'bootstrap_calendar.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
         
  
	  <!--[if lt IE 9]>
	    <script src="js/ie/html5shiv.js"></script>
	    <script src="js/ie/respond.min.js"></script>
	    <script src="js/ie/excanvas.js"></script>
	  <![endif]-->


		<g:javascript src="jquery.min.js" />
		<!-- Bootstrap -->
		<g:javascript src="bootstrap.js" />
		<!-- App -->
		<g:javascript src="app.js" />
		<g:javascript src="app.plugin.js" />

		<g:javascript src="/slimscroll/jquery.slimscroll.min.js"/>
     
		<g:javascript src="/charts/easypiechart/jquery.easy-pie-chart.js"/>
		<g:javascript src="/charts/sparkline/jquery.sparkline.min.js"/>
		<g:javascript src="/charts/flot/jquery.flot.min.js"/>
		<g:javascript src="/charts/flot/jquery.flot.tooltip.min.js"/>
		<g:javascript src="/charts/flot/jquery.flot.resize.js"/>
		<g:javascript src="/charts/flot/jquery.flot.grow.js"/>
		<g:javascript src="/charts/flot/demo.js"/>
		<g:javascript src="/calendar/bootstrap_calendar.js"/>
		<g:javascript src="/calendar/demo.js"/>
		<g:javascript src="/sortable/jquery.sortable.js"/>
		
		<g:javascript src="/parsley/parsley.min.js"/>
        <g:javascript src="/parsley/parsley.extend.js"/>
        <g:javascript src="/slimscroll/jquery.slimscroll.min.js"/>
		
		<r:layoutResources />
		<fbg:resources locale="${Locale.getDefault()}" />
	</head>
	<body class="">
		<g:layoutBody/>
		<r:layoutResources />
	</body>
</html>
