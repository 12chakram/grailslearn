
<%@ page import="multiplexonline.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div>
			<g:form >
				<table>
					<tr>
						<td>
							<label for="title">
								<g:message code="movie.title.label" default="Title" />
			
							</label>
							<g:textField id="title" name="title"  maxlength="15" value="${title}"/>
						</td>
						<td>
							<label for="language">
								<g:message code="movie.language.label" default="Language" />
			
							</label>
							<g:textField id="language" name="language"  maxlength="15" value="${language}"/>
						</td>
						<td>
							<label for="releaseYear">
								<g:message code="movie.language.label" default="Release Year" />
							</label>
							<g:textField id="releaseYear" name="releaseYear" type="number" maxlength="4" value="${releaseYear}"/>
						</td>
						<td>
							<g:submitButton name="filter" class="save" value="${message(code: 'default.button.create.label', default: 'Filter')}" />

						</td>
					</tr>
				</table>
				
			</g:form>
			
		</div>
		<div id="list-movie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="titile" title="${message(code: 'movie.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="iinName" title="${message(code: 'movie.iinName.label', default: 'Iin Name')}" />
					
						<g:sortableColumn property="language" title="${message(code: 'movie.language.label', default: 'Language')}" />
					
						<g:sortableColumn property="lpHires" title="${message(code: 'movie.lpHires.label', default: 'Lp Hires')}" />
					
						<g:sortableColumn property="mediaKind" title="${message(code: 'movie.mediaKind.label', default: 'Media Kind')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${movieInstanceList}" status="i" var="movieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${movieInstance.id}">${fieldValue(bean: movieInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: movieInstance, field: "iinName")}</td>
						
						<td>${fieldValue(bean: movieInstance, field: "language")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "lpHires")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "mediaKind")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<% 
					def parameters = new HashMap();
					parameters.putAt("language", pageScope.getProperty('language'))
					parameters.putAt("releaseYear", pageScope.getProperty('releaseYear'))
					parameters.putAt("title", pageScope.getProperty('title'))
				 %>
				<g:paginate params="${parameters}" total="${movieInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
