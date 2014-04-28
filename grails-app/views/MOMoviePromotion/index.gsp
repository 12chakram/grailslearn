
<%@ page import="org.schema.MOMoviePromotion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MOMoviePromotion.label', default: 'MOMoviePromotion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-MOMoviePromotion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-MOMoviePromotion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'MOMoviePromotion.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="sanitizedName" title="${message(code: 'MOMoviePromotion.sanitizedName.label', default: 'Sanitized Name')}" />
					
						<g:sortableColumn property="alternateName" title="${message(code: 'MOMoviePromotion.alternateName.label', default: 'Alternate Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'MOMoviePromotion.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="image" title="${message(code: 'MOMoviePromotion.image.label', default: 'Image')}" />
					
						<g:sortableColumn property="sameAs" title="${message(code: 'MOMoviePromotion.sameAs.label', default: 'Same As')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${MOMoviePromotionInstanceList}" status="i" var="MOMoviePromotionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${MOMoviePromotionInstance.id}">${fieldValue(bean: MOMoviePromotionInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: MOMoviePromotionInstance, field: "sanitizedName")}</td>
					
						<td>${fieldValue(bean: MOMoviePromotionInstance, field: "alternateName")}</td>
					
						<td>${fieldValue(bean: MOMoviePromotionInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: MOMoviePromotionInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: MOMoviePromotionInstance, field: "sameAs")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${MOMoviePromotionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
