<!DOCTYPE html>
<html lang="en" class="app">
<head>
  <meta charset="utf-8" />
  <meta name="layout" content="user">
  <title>Notebook | Web Application</title>
  <meta name="description" content="app, web app, responsive, admin dashboard, admin, flat, flat ui, ui kit, off screen nav" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
  
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
        <g:javascript src="/timout/timeout-dialog.js"/>
</head>
<body class="">
  <section class="vbox">
     <g:render template="header"></g:render>
    <section>
      <section class="hbox stretch">
        <!-- .leftmenu -->
            <g:render template="leftmenu"></g:render>
        <!-- /.leftmenu -->
        
         <!-- .Content -->
                 <g:render template="userdetails"></g:render>
         <!-- /.Content -->
          <!--
        <aside class="bg-light lter b-l aside-md hide" id="notes">
          <div class="wrapper">Notification</div>
        </aside>
        -->
      </section>
    </section>
  </section>
</body>
</html>