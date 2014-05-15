
<%@ page import="multiplexonline.MonetizeOption" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monetizeOption.label', default: 'MonetizeOption')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-monetizeOption" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-monetizeOption" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'monetizeOption.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="ppvUSD" title="${message(code: 'monetizeOption.ppvUSD.label', default: 'Ppv USD')}" />
					
						<g:sortableColumn property="ppvINR" title="${message(code: 'monetizeOption.ppvINR.label', default: 'Ppv INR')}" />
					
						<g:sortableColumn property="momPoints" title="${message(code: 'monetizeOption.momPoints.label', default: 'Mom Points')}" />
					
						<g:sortableColumn property="isAdSupported" title="${message(code: 'monetizeOption.isAdSupported.label', default: 'Is Ad Supported')}" />
					
						<g:sortableColumn property="isFree" title="${message(code: 'monetizeOption.isFree.label', default: 'Is Free')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${monetizeOptionInstanceList}" status="i" var="monetizeOptionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${monetizeOptionInstance.id}">${fieldValue(bean: monetizeOptionInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: monetizeOptionInstance, field: "ppvUSD")}</td>
					
						<td>${fieldValue(bean: monetizeOptionInstance, field: "ppvINR")}</td>
					
						<td>${fieldValue(bean: monetizeOptionInstance, field: "momPoints")}</td>
					
						<td><g:formatBoolean boolean="${monetizeOptionInstance.isAdSupported}" /></td>
					
						<td><g:formatBoolean boolean="${monetizeOptionInstance.isFree}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${monetizeOptionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
