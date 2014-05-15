<!DOCTYPE html>
<html lang="en" class="bg-dark" id="singInPage">
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
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
 
  <script type="text/javascript">

  function facebookLogin() {
FB.getLoginStatus(function(response) {
if (response.status === 'connected') {
// logged in and connected user, someone you know
window.location ="${createLink(controller:'facebook', action:'facebookLogin')}";
}
});
         }

  </script>
 
</head>

<body class="" id="signinbody">
  <section id="content" class="m-t-lg wrapper-md animated fadeInUp">
    <div class="container aside-xxl">
      <a class="navbar-brand block" href="index.html">Multiplex Online</a>
      <section class="panel panel-default bg-white m-t-lg">
        <header class="panel-heading text-center">
          <strong>Sign in</strong>
        </header>
        <g:if test='${flash.message}'>
<div style="color: #B94A48;padding: 15px;font-size: 85%;">${flash.message}</div>
</g:if>
        <form action='${postUrl}' method='POST' id='loginForm' class="panel-body wrapper-lg" autocomplete='off' data-validate="parsley">
          <div class="form-group">
            <label class="control-label">Email</label>
            <input type="text" placeholder="test@example.com" class="form-control input-lg" name="j_username" id="username" data-required="true">
          </div>
          <div class="form-group">
            <label class="control-label">Password</label>
            <input type="password" id="inputPassword" placeholder="Password" class="form-control input-lg" name="j_password" id="password" data-required="true">
          </div>
          <div class="checkbox">
            <label>
              <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
               Keep me logged in
            </label>
          </div>
          <a href="#modal-form" class="pull-right m-t-xs" data-toggle="modal"><small>Forgot password?</small></a>
          <button type="submit" class="btn btn-primary">Sign in</button>
          <div class="line line-dashed"></div>
          <i class="">
           <fb:login-button scope="email,publish_stream" onlogin="facebookLogin();" size="large">
              <g:message code="Sign in with Facebook"/>
            </fb:login-button>
          </i>
          <%--
          <a href="#" class="btn btn-facebook btn-block m-b-sm"><i class="fa fa-facebook pull-left"></i>Sign in with Facebook</a>
          <a href="#" class="btn btn-twitter btn-block"><i class="fa fa-twitter pull-left"></i>Sign in with Twitter</a>
          --%>
          <div class="line line-dashed"></div>
          <p class="text-muted text-center"><small>Do not have an account?</small></p>
          <g:link class="btn btn-default btn-block" action="index" controller="signup">Create an account</g:link>
        </form>
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
  
  <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modal-form" class="modal fade">
              <div class="modal-dialog" style="padding-top:154px !important;">
               <g:formRemote url="[controller: 'signup', action:'forgotPassword']" name="forgotPassword" update="forsucessmsg"
               id="forgotPassword">
                  <div class="modal-content" id="modalcontent">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true" onclick="resetForm();">×</button>
                            <a data-toggle="modal" href="#myModal"> Forgot Password?</a>
                      </div>
                      <div id="forsucessmsg">
                      <div class="modal-body" id="modelbodycontent">
<p id="enteremail">Enter your e-mail address below to reset your password.</p>
<p id="emailrequired" style="color: red;display: none;">Enter your e-mail</p>
<input name="username" placeholder="Email" autocomplete="off" id="name"
class="form-control placeholder-no-fix" type="text">
</div>
<div class="modal-footer" id="modelfooter">
<button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
<%--<g:submitToRemote before="if (!validateEmail()) {return false;}"
update="modelbodycontent"
url="[controller:'register', action:'forgotPassword']" value="Submit" class="btn btn-success"/>
                             --%><%--<input type="submit" value="Submit" class="btn btn-success" >--%>
                             <g:submitButton name="forgotPasswordButton" value="Submit" class="btn btn-success" onclick="return validateEmail()"/>
                          </div>
                     </div>
                  </div>
            </g:formRemote>
              </div>
          </div>
          <!-- modal -->
</body>
</html>