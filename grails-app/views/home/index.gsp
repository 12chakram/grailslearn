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
			
			.content-form-small {
    			background: none repeat scroll 0 0 #F8F8FF;
   				 border-radius: 3px;
   				 margin: 45px auto;
    			padding: 10px 20px;
    			width: 97%;
			}
			
.footer {
    background: none repeat scroll 0 0 #ABBF78;
    clear: both;
    color: #000000;
    font-size: 0.8em;
    margin-top: 0.6em;
    min-height: 1em;
    padding: 1em;
}
			
		</style>
	</head>
	<body>
	
	<div class="nav" role="navigation">
			<ul>
			   <li><a class="home" href="${createLink(action:'getUsers',controller:'home')}"><g:message code="Users"/></a></li>
			    <li><g:link controller="user" action="editProfile" id="${userId}" style="margin-left:91.3%;">${userName}</g:link></li>
				<li><g:link controller="user" action="logout" style="margin-left:73.3%;">Logout</g:link></li>
			</ul>
		</div>
 <g:if test="${session.allUsers}">
 <div id="list-user" class="content scaffold-list" role="main" style="margin-top:30px; min-height: 500px;">
	      <h3>List of all Users</h3>
    <table border="1">
      <thead>
         <tr>
           <th>UserName</th>
           <th>Role</th>
           <th>FullName</th>
           <th>Email</th>
          </tr>
         </thead>
         <tbody>
         	<g:each in="${userInstanceList}" status="i" var="userInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <td>${userInstance.userName}</td>
            <td>${userInstance.roles}</td>
            <td>${userInstance.fullName}</td>
            <td>${userInstance.email}</td>
          </tr>
          </g:each>
         </tbody>    
     </table>
       <div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
   </div>
	  </g:if>
</body>
</html>
