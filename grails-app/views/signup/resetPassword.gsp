<!DOCTYPE html>
<html lang="en" class="bg-dark" id="passwordreset">
<head>

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'js/select2', file: 'select2.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'js/select2', file: 'theme.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'js/calendar/', file: 'bootstrap_calendar.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.Jcrop.css')}" type="text/css" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">
	<g:set var="entityName" value="${message(code: 'SOMovie.label', default: 'Sign In')}" />
	<title><g:message code='spring.security.ui.resetPassword.title'/></title>
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
 		<g:javascript src="/mpo/auth.js" />
	</head>

<body class="">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">    
    <div class="container aside-xxl">
      <a class="navbar-brand block" href="index.html">Multiplex Online</a>
      <section class="panel panel-default bg-white m-t-lg">
        <header class="panel-heading text-center">
          <strong><g:message code='spring.security.ui.resetPassword.title'/></strong>
        </header>
		<g:form action='resetPassword' name='resetPasswordForm' autocomplete='off' data-validate="parsley" class="panel-body wrapper-lg">
	         <g:hiddenField name='t' value='${token}'/>
         <div class="form-group">
            <label class="control-label">Password</label>
            <input type="password" id="password" name="password" placeholder="Password" class="form-control input-lg" 
            data-required="true" value="${command?.password}">
          </div>
          <div class="form-group">
            <label class="control-label">Password</label>
            <input type="password" id="password2" placeholder="Password" class="form-control input-lg" name="password2"  data-required="true" 
            value="${command?.password}" >
          </div>
           <button type="submit" class="btn btn-primary"><g:message code='spring.security.ui.resetPassword.submit'/></button>
          <div class="line line-dashed"></div>
       </g:form>
      </section>
    </div>
  </section>
  <!-- footer -->
  <footer id="footer">
    <div class="text-center padder">
      <p>
        <small>Web app framework base on Bootstrap<br>&copy; 2013</small>
      </p>
    </div>
  </footer>
</body>
</html>