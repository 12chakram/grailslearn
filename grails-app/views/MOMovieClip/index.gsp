
<%@ page import="org.schema.MOMovieClip" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MOMovieClip.label', default: 'MOMovieClip')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MOMovieClip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MOMovieClip" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'MOMovieClip.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="sanitizedName" title="${message(code: 'MOMovieClip.sanitizedName.label', default: 'Sanitized Name')}" />
					
						<g:sortableColumn property="alternateName" title="${message(code: 'MOMovieClip.alternateName.label', default: 'Alternate Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'MOMovieClip.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'MOMovieClip.image.label', default: 'Image')}" />
					
						<g:sortableColumn property="sameAs" title="${message(code: 'MOMovieClip.sameAs.label', default: 'Same As')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MOMovieClipInstanceList}" status="i" var="MOMovieClipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MOMovieClipInstance.id}">${fieldValue(bean: MOMovieClipInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: MOMovieClipInstance, field: "sanitizedName")}</td>
					
						<td>${fieldValue(bean: MOMovieClipInstance, field: "alternateName")}</td>
					
						<td>${fieldValue(bean: MOMovieClipInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: MOMovieClipInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: MOMovieClipInstance, field: "sameAs")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MOMovieClipInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
