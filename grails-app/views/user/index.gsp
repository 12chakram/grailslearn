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
					margin: 84px auto 0;
					margin-left: 64%;
					margin-top: -29px;
					padding: 10px 20px;
					width: 310px;
				}
				
				.ie6 #status {
					display: inline;
					/* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
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
					min-height: 210px;
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
			
				.btn.blueLight {
					background-color: #E7EDEF;
					background-image: -moz-linear-gradient(center top, #E9EEF0, #E5EBED);
					background-repeat: repeat-x;
					border-color: #C4CCCE;
					box-shadow: 0 1px 0 rgba(255, 255, 255, 0.5) inset;
					color: #373D40;
					font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
					text-shadow: 0 1px 0 rgba(255, 255, 255, 0.8);
				}
			
				.btn:first-child {
					
				}
				
				.btn:first-child {
					
				}
				
				input[type="button"],input[type="reset"],input[type="submit"] {
					height: auto;
					width: auto;
				}
				
				button,input[type="button"],input[type="reset"],input[type="submit"] {
					cursor: pointer;
				}
			
				.btn {
					background-color: #3B4145;
					background-image: -moz-linear-gradient(center top, #41484C, #31373A);
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
			
				.footer {
					background: none repeat scroll 0 0 #ABBF78;
					clear: both;
					color: #000000;
					font-size: 0.8em;
					margin-top: 30.6em;
					min-height: 1em;
					padding: 1em;
				}
				.errors ul, .message {
    			   margin-left: 71%;
   				   margin-top: 4px;
                   padding: 8px;
                   width: 332px;
                   font-size: 0.6em;
                }
                
textarea:focus, input[type="text"]:focus, input[type="password"]:focus, input[type="datetime"]:focus, input[type="datetime-local"]:focus, input[type="date"]:focus, input[type="month"]:focus, input[type="time"]:focus, input[type="week"]:focus, input[type="number"]:focus, input[type="email"]:focus, input[type="url"]:focus, input[type="search"]:focus, input[type="tel"]:focus, input[type="color"]:focus, .uneditable-input:focus {
    border-color: #81A74C;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px #92C65F;
    outline: 0 none;
}

input[type="text"], input[type="password"] {
    border-color: #DBDBDB #EAEAEA #EAEAEA #DBDBDB;
    border-style: solid;
    border-width: 1px;
    font-size: 16px;
    height: 30px;
    margin-bottom: 16px;
    width: 65%;
}
			</style>
		
		  <g:javascript library="jquery"/>
		  
		  <g:javascript>
		     $( "#login" ).click(function() {
                 $("#content").show();
              });
		  </g:javascript>
		
	</head>
	<body>
	<div class="nav" role="navigation">
			<ul>
			   <li><a class="home" href="${createLink(action:'getUsers',controller:'home')}"><g:message code="Users"/></a></li>
				<li><g:link url="[action:'register',controller:'user']" style="margin-left:85.8%;">Create an account</g:link></li>
				<li><a href="#" id="login">Login</a> </li>
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
		 <div id="content" class="content-form-small" role="main">
		<g:form action="login">
		 <p>
         <%--<label for="login_field">
            UserName or Email:
         </label>
               --%>
               <g:textField  id="login_field" tabindex="1" name="userName" placeHolder="Username or Email" />
           </p><%--
         <p>
           <label for="password_field">
            Password:
         </label>
         </p>
		    --%><g:passwordField name="password" id="password_field" tabindex="2" placeHolder="Password" />
		  <p>
				<input class="btn blueLight" type="submit" value="Log in" tabindex="3">
				<g:link url="[action:'register',controller:'user']" class="btn blueLight">Create an account</g:link>
			</p>
          </g:form>	
		  </div>
		</div>
		
		</g:else>
	</body>
</html>
