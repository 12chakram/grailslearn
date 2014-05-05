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
	</head>
	<calendar:resources lang="en" theme="tiger" theme="blue2"/>
	<fbg:resources locale="${Locale.getDefault()}" />
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
	<style type="text/css">
	div.calendar {
		width: auto !important;
	}
	
	#dob_value {
		border-color: #D9D9D9;
		border-radius: 2px;
		background-color: #FFFFFF;
		background-image: none;
		border: 1px solid #CCCCCC;
		color: #555555;
		font-size: 14px;
		height: 34px;
		line-height: 1.42857;
		transition: border-color 0.15s ease-in-out 0s, box-shadow 0.15s
			ease-in-out 0s;
		vertical-align: middle;
		width: 82%;
	}
	
	#dob-trigger {
		background-image:;
		width: 22px;
	}
	
	.form-group {
		margin-bottom: 2px !important;
	}
	
	.btn-twitter {
		background-color: #00C7F7 !important;
		border-color: #00C7F7 !important;
		color: #FFFFFF !important !important;
		height: 24px !important;
		text-align: -moz-right !important;
	}
	
	.btn-sm,.btn-xs {
		border-radius: 3px !important;
		font-size: 12px !important;
		line-height: 1.5 !important;
		padding: 2px 10px !important;
	}
	
	.checkbox {
		display: block !important;
		margin-bottom: 10px !important;
		margin-top: 4px !important;
		min-height: 9px !important;
		vertical-align: middle !important;
	}
	
	.col-lg-4 {
		width: auto !important;
	}
	
	.m-t-lg {
		margin-top: 0px !important;
	}
	</style>
</head>
<body class="" id="signinbody">
<section id="content">
          <a class="navbar-brand block" href="index.html">Grails Learn</a>
		<div class="main padder">
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4 m-t-large">
					<section class="panel panel-default bg-white m-t-lg">
						<header class="panel-heading text-center"> Sign up </header>
						   <g:form action="register" controller="signup"
						    method='POST' id='loginForm' class="panel-body wrapper-lg" autocomplete='off' data-validate="parsley">
						    <g:hiddenField name="roles" value="${command?.roles}"/>
							<div class="form-group">
								<label class="control-label">User Name</label> 
								   <input type="text" name="username" value="${command?.username}" class="form-control" placeholder="eg. Your name or company" data-required="true" />
							</div>
							<div class="form-group">
								<label class="control-label">Your email address</label>
								   <input type="email" name="email" value="${command?.email}" class="form-control"  placeholder="test@example.com" data-type="email" data-required="true">
							</div>
							<div class="form-group pull-in clearfix">
							     <div class="col-sm-6">
								<label class="control-label">Enter password</label> 
								<input id="inputPassword" name="password"  placeholder="Password" value="${command?.password}" class="form-control" type="password" data-required="true">
							</div>
							  <div class="col-sm-6">
								<label class="control-label">Confirm password</label>
								<input id="inputPassword2" name="password2"  placeholder="Password" value="${command?.password2}" class="form-control" type="password" data-required="true"> 
							</div>
							</div>
							<div class="form-group pull-in clearfix">
							   <div class="col-sm-6">
								<label class="control-label">Mobile</label> 
								  <g:textField name="mobile" value="${command?.mobile}" class="form-control" placeholder="Eg:+91999999999" data-required="true"/>
							</div>
							 <div class="col-sm-6">
								<label class="control-label">Date of Birth</label> 
								 <calendar:datePicker name="dob" id="dob" value="${command?.dob}" oSelection="['':'-Choose-']" 
								 precision="day" years="1970,2008" data-required="true" />
							</div>
							</div>
							<div class="form-group pull-in clearfix">
							    <div class="col-sm-6">
								<label class="control-label">Please enter below Text</label> 
								 <g:textField name="captcha"  placeholder="Password" class="form-control" data-required="true"/>
							</div>
							 <div class="col-sm-6">
								<br/>
								<img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}" style="width: 40%;"/>
									
							</div>
							</div>
							  <div class="form-group">
			                      <label class="col-sm-2 control-label" style="margin-left: -19px;margin-top: 2px;text-align: center;">Gender</label>
			                      <div class="col-sm-12" style="margin-top: 10px;">
			                            <!-- radio -->
			                              <label class="radio-custom">
			                                <input type="radio"  name="gender" value="male">
			                                Male
			                              </label>
			                               <label class="radio-custom">
			                                <input type="radio" name="gender" value="female" >
			                                Female
			                              </label>
			                              <label class="radio-custom">
			                                <input type="radio" name="gender" checked="checked" value="notspec">
			                                Not to specify
			                              </label>
								</div>
                           </div>
							<div class="checkbox">
								<label style="margin-left: 4px;"> 
								 <g:checkBox name="toc" checked="checked" value="${command?.toc}" id="signup_TermsOfService" class="checkbox" data-required="true"
								 />Agree the <a href="#">terms and policy</a>
								</label>
							</div>
							<button type="submit" class="btn btn-info">Sign up</button>
							<div class="line line-dashed"></div>
							<div class="row">
								<div class="col-sm-6 text-center">
									<i class="">
							           <fb:login-button scope="email,publish_stream" onlogin="facebookLogin();" size="large" style="height:30px;">
							              <g:message code="Sign up with"/>
							            </fb:login-button>
							          </i>
								</div>
								<div class="col-sm-6 text-center">
									<a href="#" class="btn btn-twitter btn-circle btn-sm"><i
										class="fa fa-twitter"></i>Sign up with Twitter</a>
								</div>
							</div>
							<div class="line line-dashed"></div>
							<p class="text-muted text-center">
								<small>Already have an account?</small>
							</p>
							<g:link action="auth" controller="login"
								class="btn btn-default btn-block">Sign in</g:link>
						</g:form>
					</section>
				</div>
			</div>
		</div>
	</section>
</body>
</html>