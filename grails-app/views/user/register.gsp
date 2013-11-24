<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}
			
			.content-form-small {
    			background: none repeat scroll 0 0 #F8F8FF;
    			border-radius: 3px;
    			margin: -25px auto -25px 64%;
    			padding: 10px 20px;
    			width: 310px;
			}
			
    .content-form-left {
       background: none repeat scroll 0 0 rgb(248, 248, 255);
    border-radius: 3px;
    float: left;
    height: 457px;
    margin: 0 auto 0 -127px;
    padding: 10px 20px;
    width: 642px;
}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}

.btn:first-child {
}
.btn:first-child {
}
input[type="button"], input[type="reset"], input[type="submit"] {
    height: auto;
    width: auto;
}
input.btn {
    margin-bottom: 4px;
}
button, input[type="button"], input[type="reset"], input[type="submit"] {
    cursor: pointer;
}


.btn.blueLight {
    background-color: #E7EDEF;
    background-image: -moz-linear-gradient(center top , #E9EEF0, #E5EBED);
    background-repeat: repeat-x;
    border-color: #C4CCCE;
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
    color: #373D40;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    text-shadow: 0 1px 0 rgba(255, 255, 255, 0.8);
}

.btn {
    background-color: #3B4145;
    background-image: -moz-linear-gradient(center top , #41484C, #31373A);
    background-repeat: repeat-x;
    border: 1px solid #31373A;
    border-radius: 6px;
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset;
    color: #FFFFFF;
    cursor: pointer;
    display: inline-block;
    font-size: 14px;
    line-height: 17px;
    padding: 7px 12px 6px;
    text-align: center;
    text-decoration: none;
    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.2);
    vertical-align: middle;
}

p {
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 22px;
    margin: 0 0 11px;
}

label {
    color: #333333;
    display: block;
    margin-bottom: 5px;
}


.footer {
    background: none repeat scroll 0 0 #ABBF78;
    clear: both;
    color: #000000;
    font-size: 0.8em;
    margin-top: 6.7em;
    min-height: 1em;
    padding: 1em;
}

a:link, a:visited, a:hover {
   
}
			
		</style>
	</head>
	<body>
	<div class="nav" role="navigation">
			<ul>
			   <li><a class="home" href="${createLink(action:'getUsers',controller:'home')}"><g:message code="Users"/></a></li>
				<li><g:link url="[action:'register',controller:'user']" style="margin-left:85.2%;">Create an account</g:link></li>
				<li><g:link url="[action:'index',controller:'user']" style="margin-left:25.3%;" id="loginLink">Log in</g:link></li>
			</ul>
		</div>
	 <g:if test="${flash.message }">
			   <div class="message">
                 <h3>${flash.message }</h3>
               </div>
          </g:if>
		
		<g:if test="${session.user}">
		  <br/>
		  Login as:${session.user} | <g:link action="logout">Logout</g:link>
		</g:if>
		<g:else>
		<div id="page-body">
		 <div id="content_left" class="content-form-left" role="main">
		   <h2>Connect with Facebook</h2>
		   <p class="nova-regular">This way you won’t need to remember yet another password!</p>
		 </div>
		 <div id="content" class="content-form-small" role="main">
			<g:form action="save">
			<h2>Register</h2>
		 <p>
         	<label for="login_field">Login (username)*</label>
         	<g:textField  id="login_field" tabindex="1" name="userName" required=""/>
          </p>
         <p>
           <label for="password_field">Password</label>
            <g:passwordField name="password" id="password_field" tabindex="2" required=""/>
         </p>
         <p>
           <label for="cnfpassword_field">Password (confirm)</label>
            <g:passwordField name="cnfpassword" id="cnfpassword_field" tabindex="3" required=""/>
         </p>
         
         <p>
         	<label for="fullname_field">Full Name</label>
         	<g:textField  id="fullname_field" tabindex="4" name="fullName"/>
          </p>
         
         <p>
         	<label for="emai_field">Email Address</label>
         	<g:textField  id="emai_field" tabindex="5" name="email" tabindex="5" required=""/>
          </p>
          
            <p>
         	<label for="role">UserRole</label>
         	  <g:select id="role" name="roles" from="${['admin','user']}" keys="${['admin','user']}" value="${userInstance?.roles}" noSelection="${['null':'Select One...']}"/>
          </p>
          
		  <p>
		        <input class="btn blueLight" type="submit" value="Create an account" tabindex="3">
		        <g:link url="[action:'index',controller:'user']" class="btn blueLight">Log in</g:link>
			</p>
          </g:form>	
		  </div>
		</div>
		
		</g:else>
	</body>
</html>
