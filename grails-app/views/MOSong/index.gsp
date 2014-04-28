
<%@ page import="org.schema.MOSong" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MOSong.label', default: 'MOSong')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MOSong" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MOSong" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'MOSong.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="sanitizedName" title="${message(code: 'MOSong.sanitizedName.label', default: 'Sanitized Name')}" />
					
						<g:sortableColumn property="alternateName" title="${message(code: 'MOSong.alternateName.label', default: 'Alternate Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'MOSong.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'MOSong.image.label', default: 'Image')}" />
					
						<g:sortableColumn property="sameAs" title="${message(code: 'MOSong.sameAs.label', default: 'Same As')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MOSongInstanceList}" status="i" var="MOSongInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MOSongInstance.id}">${fieldValue(bean: MOSongInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: MOSongInstance, field: "sanitizedName")}</td>
					
						<td>${fieldValue(bean: MOSongInstance, field: "alternateName")}</td>
					
						<td>${fieldValue(bean: MOSongInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: MOSongInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: MOSongInstance, field: "sameAs")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MOSongInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
