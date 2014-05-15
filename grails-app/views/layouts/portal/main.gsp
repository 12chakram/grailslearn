<!DOCTYPE html>
<html lang="en" class="app">
<head>
  <meta charset="utf-8" />
		<title>Multiplex Online Portal - ${pageTitle}</title>
		<meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'js/calendar/', file: 'bootstrap_calendar.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
		<!--[if lt IE 9]>
		  <script src="js/ie/html5shiv.js"></script>
		  <script src="js/ie/respond.min.js"></script>
		  <script src="js/ie/excanvas.js"></script>
		<![endif]-->
		<g:layoutHead/>	
		<r:layoutResources />
</head>
<body class="">
  <section class="vbox">
    <g:render template="/layouts/portal/header/main"/>
    <section>
      <section class="hbox stretch">
      	<g:render template="/layouts/portal/leftnav/main"/>
      	<g:render template="/layouts/portal/content"/>
        <g:layoutBody/>
        <aside class="bg-light lter b-l aside-md hide" id="notes">
          <div class="wrapper">Notification</div>
        </aside>
        <r:layoutResources />
      </section>
    </section>
  </section>
  <g:javascript src="jquery.min.js"></g:javascript>
  <!-- Bootstrap -->
  <g:javascript src="bootstrap.js"></g:javascript>
  <!-- App -->
  <g:javascript src="app.js"></g:javascript> 
  <g:javascript src="slimscroll/jquery.slimscroll.min.js"></g:javascript>
    <g:javascript src="charts/easypiechart/jquery.easy-pie-chart.js"></g:javascript>
  <g:javascript src="charts/sparkline/jquery.sparkline.min.js"></g:javascript>
  <g:javascript src="charts/flot/jquery.flot.min.js"></g:javascript>
  <g:javascript src="charts/flot/jquery.flot.tooltip.min.js"></g:javascript>
  <g:javascript src="charts/flot/jquery.flot.resize.js"></g:javascript>
  <g:javascript src="charts/flot/jquery.flot.grow.js"></g:javascript>
  <g:javascript src="charts/flot/demo.js"></g:javascript>

  <g:javascript src="calendar/bootstrap_calendar.js"></g:javascript>
  <g:javascript src="calendar/demo.js"></g:javascript>

  <g:javascript src="sortable/jquery.sortable.js"></g:javascript>
  <r:layoutResources />
  <g:javascript src="app.plugin.js"></g:javascript>
</body>
</html>