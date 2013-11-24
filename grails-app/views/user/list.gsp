
<%@ page import="com.grails.learn.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/user')}"><g:message code="Users"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				  <li><g:link controller="user" action="editProfile" id="${userId}" style="margin-left:86.3%;">${userName}</g:link></li>
				<li><g:link action="logout" style="margin-left:10.6%;">Logout</g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						
						<g:sortableColumn property="fullName" title="${message(code: 'user.fullName.label', default: 'Full Name')}" />
						
						<g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" />
						
						<g:sortableColumn property="userName" title="${message(code: 'user.userName.label', default: 'User Name')}" />
						
						<g:sortableColumn property="roles" title="${message(code: 'user.roles.label', default: 'Roles')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "fullName")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
						
						<td>${fieldValue(bean: userInstance, field: "userName")}</td>
						
						<td>${fieldValue(bean: userInstance, field: "roles")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
