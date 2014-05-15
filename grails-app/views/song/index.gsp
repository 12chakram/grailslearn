
<%@ page import="multiplexonline.Song" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-song" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-song" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'song.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="iinName" title="${message(code: 'song.iinName.label', default: 'Iin Name')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'song.language.label', default: 'Language')}" />
					
						<g:sortableColumn property="lpHires" title="${message(code: 'song.lpHires.label', default: 'Lp Hires')}" />
					
						<g:sortableColumn property="lpMedres" title="${message(code: 'song.lpMedres.label', default: 'Lp Medres')}" />
					
						<g:sortableColumn property="mediaKind" title="${message(code: 'song.mediaKind.label', default: 'Media Kind')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${songInstanceList}" status="i" var="songInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${songInstance.id}">${fieldValue(bean: songInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: songInstance, field: "iinName")}</td>
					
						<td>${fieldValue(bean: songInstance, field: "language")}</td>
					
						<td>${fieldValue(bean: songInstance, field: "lpHires")}</td>
					
						<td>${fieldValue(bean: songInstance, field: "lpMedres")}</td>
					
						<td>${fieldValue(bean: songInstance, field: "mediaKind")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${songInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
