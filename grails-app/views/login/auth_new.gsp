<!DOCTYPE html>
<html lang="en" class="bg-dark" id="singInPage">
<head>

        <%--<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'font.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'js/select2', file: 'select2.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'js/select2', file: 'theme.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'js/calendar/', file: 'bootstrap_calendar.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.Jcrop.css')}" type="text/css" />
<link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">

--%><link rel="stylesheet" href="${resource(dir: 'css/bucket', file: 'bootstrap-reset.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/bucket', file: 'bootstrap.css')}" type="text/css">

<link rel="stylesheet" href="${resource(dir: 'css/bucket', file: 'bucket-ico-fonts.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/bucket', file: 'font-awesome.css')}" type="text/css">

<link rel="stylesheet" href="${resource(dir: 'css/bucket', file: 'style-responsive.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css/bucket', file: 'style.css')}" type="text/css">

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
  
   <body class="login-body">

    <div class="container">

      <form class="form-signin" action="index.html">
        <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <div class="user-login-info">
                <input class="form-control" placeholder="User ID" autofocus="" type="text">
                <input class="form-control" placeholder="Password" type="password">
            </div>
            <label class="checkbox">
                <input value="remember-me" type="checkbox"> Remember me
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Forgot Password?</a>

                </span>
            </label>
            <button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>

            <div class="registration">
                Don't have an account yet?
                <a class="" href="http://bucketadmin.themebucket.net/registration.html">
                    Create an account
                </a>
            </div>

        </div>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                          <h4 class="modal-title">Forgot Password ?</h4>
                      </div>
                      <div class="modal-body">
                          <p>Enter your e-mail address below to reset your password.</p>
                          <input name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix" type="text">

                      </div>
                      <div class="modal-footer">
                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                          <button class="btn btn-success" type="button">Submit</button>
                      </div>
                  </div>
              </div>
          </div>
          <!-- modal -->

      </form>

    </div>

</html>