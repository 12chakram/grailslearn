
<%@ page import="org.schema.Offer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'offer.label', default: 'Offer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-offer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-offer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list offer">
			
				<g:if test="${offerInstance?.ppvUSD}">
				<li class="fieldcontain">
					<span id="ppvUSD-label" class="property-label"><g:message code="offer.ppvUSD.label" default="Ppv USD" /></span>
					
						<span class="property-value" aria-labelledby="ppvUSD-label"><g:fieldValue bean="${offerInstance}" field="ppvUSD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.ppvINR}">
				<li class="fieldcontain">
					<span id="ppvINR-label" class="property-label"><g:message code="offer.ppvINR.label" default="Ppv INR" /></span>
					
						<span class="property-value" aria-labelledby="ppvINR-label"><g:fieldValue bean="${offerInstance}" field="ppvINR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.momPoints}">
				<li class="fieldcontain">
					<span id="momPoints-label" class="property-label"><g:message code="offer.momPoints.label" default="Mom Points" /></span>
					
						<span class="property-value" aria-labelledby="momPoints-label"><g:fieldValue bean="${offerInstance}" field="momPoints"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="offer.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${offerInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.isAdSupported}">
				<li class="fieldcontain">
					<span id="isAdSupported-label" class="property-label"><g:message code="offer.isAdSupported.label" default="Is Ad Supported" /></span>
					
						<span class="property-value" aria-labelledby="isAdSupported-label"><g:formatBoolean boolean="${offerInstance?.isAdSupported}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.isFree}">
				<li class="fieldcontain">
					<span id="isFree-label" class="property-label"><g:message code="offer.isFree.label" default="Is Free" /></span>
					
						<span class="property-value" aria-labelledby="isFree-label"><g:formatBoolean boolean="${offerInstance?.isFree}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.isMoMoney}">
				<li class="fieldcontain">
					<span id="isMoMoney-label" class="property-label"><g:message code="offer.isMoMoney.label" default="Is Mo Money" /></span>
					
						<span class="property-value" aria-labelledby="isMoMoney-label"><g:formatBoolean boolean="${offerInstance?.isMoMoney}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${offerInstance?.isPPV}">
				<li class="fieldcontain">
					<span id="isPPV-label" class="property-label"><g:message code="offer.isPPV.label" default="Is PPV" /></span>
					
						<span class="property-value" aria-labelledby="isPPV-label"><g:formatBoolean boolean="${offerInstance?.isPPV}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:offerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${offerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
