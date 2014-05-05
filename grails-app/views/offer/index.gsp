
<%@ page import="org.schema.Offer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'offer.label', default: 'Offer')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-offer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-offer" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ppvUSD" title="${message(code: 'offer.ppvUSD.label', default: 'Ppv USD')}" />
					
						<g:sortableColumn property="ppvINR" title="${message(code: 'offer.ppvINR.label', default: 'Ppv INR')}" />
					
						<g:sortableColumn property="momPoints" title="${message(code: 'offer.momPoints.label', default: 'Mom Points')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'offer.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="isAdSupported" title="${message(code: 'offer.isAdSupported.label', default: 'Is Ad Supported')}" />
					
						<g:sortableColumn property="isFree" title="${message(code: 'offer.isFree.label', default: 'Is Free')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${offerInstanceList}" status="i" var="offerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${offerInstance.id}">${fieldValue(bean: offerInstance, field: "ppvUSD")}</g:link></td>
					
						<td>${fieldValue(bean: offerInstance, field: "ppvINR")}</td>
					
						<td>${fieldValue(bean: offerInstance, field: "momPoints")}</td>
					
						<td>${fieldValue(bean: offerInstance, field: "description")}</td>
					
						<td><g:formatBoolean boolean="${offerInstance.isAdSupported}" /></td>
					
						<td><g:formatBoolean boolean="${offerInstance.isFree}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${offerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
