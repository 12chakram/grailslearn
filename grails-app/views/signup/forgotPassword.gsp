<!DOCTYPE html>
<html lang="en" class="bg-dark">
<head>

        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'js/calendar/', file: 'bootstrap_calendar.css')}" type="text/css">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'app.css')}" type="text/css">

</head>
<body>
  <g:if test='${emailSent}'>
   <div style="height:50px !important;">
	  <p style="text-align: center;color: green;margin-top:25px;" id="sucessmsg">
		 <g:message code='spring.security.ui.forgotPassword.sent'/>
      </p>		
   </div>
   <div class="modal-footer"><%--
       <g:remoteLink class="btn btn-success" action="auth" controller="login" update="singInPage">OK</g:remoteLink>
       -<button data-dismiss="modal" class="btn btn-success" type="button" onclick="resetForm();">OK</button>
   --%>
    <button data-dismiss="modal" class="btn btn-success" type="button" onclick="resetForm();">OK</button>
   </div>
  </g:if>	
	<g:elseif test='${notFound}'>
	<p style="text-align: center;color: red;">
	<g:message code = 'spring.security.ui.forgotPassword.user.notFound'/>
	 </p>
	   <p id="enteremail">Enter your e-mail address below to reset yourpassword.</p>
		<p id="emailrequired" style="color: red; display: none;">Enteryour e-mail</p>
		<input name="username" placeholder="Email" autocomplete="off"id="name" class="form-control placeholder-no-fix" type="text">
	</g:elseif>
</body>
</html>