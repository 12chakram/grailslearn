
<%@ page import="org.schema.SOMovie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'SOMovie.label', default: 'SOMovie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-SOMovie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-SOMovie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'SOMovie.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="sanitizedName" title="${message(code: 'SOMovie.sanitizedName.label', default: 'Sanitized Name')}" />
					
						<g:sortableColumn property="alternateName" title="${message(code: 'SOMovie.alternateName.label', default: 'Alternate Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'SOMovie.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'SOMovie.image.label', default: 'Image')}" />
					
						<g:sortableColumn property="sameAs" title="${message(code: 'SOMovie.sameAs.label', default: 'Same As')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${SOMovieInstanceList}" status="i" var="SOMovieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${SOMovieInstance.id}">${fieldValue(bean: SOMovieInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: SOMovieInstance, field: "sanitizedName")}</td>
					
						<td>${fieldValue(bean: SOMovieInstance, field: "alternateName")}</td>
					
						<td>${fieldValue(bean: SOMovieInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: SOMovieInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: SOMovieInstance, field: "sameAs")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${SOMovieInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
