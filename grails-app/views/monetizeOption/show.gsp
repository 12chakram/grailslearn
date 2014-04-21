
<%@ page import="multiplexonline.MonetizeOption" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'monetizeOption.label', default: 'MonetizeOption')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-monetizeOption" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-monetizeOption" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list monetizeOption">
			
				<g:if test="${monetizeOptionInstance?.ppvUSD}">
				<li class="fieldcontain">
					<span id="ppvUSD-label" class="property-label"><g:message code="monetizeOption.ppvUSD.label" default="Ppv USD" /></span>
					
						<span class="property-value" aria-labelledby="ppvUSD-label"><g:fieldValue bean="${monetizeOptionInstance}" field="ppvUSD"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.ppvINR}">
				<li class="fieldcontain">
					<span id="ppvINR-label" class="property-label"><g:message code="monetizeOption.ppvINR.label" default="Ppv INR" /></span>
					
						<span class="property-value" aria-labelledby="ppvINR-label"><g:fieldValue bean="${monetizeOptionInstance}" field="ppvINR"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.momPoints}">
				<li class="fieldcontain">
					<span id="momPoints-label" class="property-label"><g:message code="monetizeOption.momPoints.label" default="Mom Points" /></span>
					
						<span class="property-value" aria-labelledby="momPoints-label"><g:fieldValue bean="${monetizeOptionInstance}" field="momPoints"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="monetizeOption.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${monetizeOptionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.isAdSupported}">
				<li class="fieldcontain">
					<span id="isAdSupported-label" class="property-label"><g:message code="monetizeOption.isAdSupported.label" default="Is Ad Supported" /></span>
					
						<span class="property-value" aria-labelledby="isAdSupported-label"><g:formatBoolean boolean="${monetizeOptionInstance?.isAdSupported}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.isFree}">
				<li class="fieldcontain">
					<span id="isFree-label" class="property-label"><g:message code="monetizeOption.isFree.label" default="Is Free" /></span>
					
						<span class="property-value" aria-labelledby="isFree-label"><g:formatBoolean boolean="${monetizeOptionInstance?.isFree}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.isMoMoney}">
				<li class="fieldcontain">
					<span id="isMoMoney-label" class="property-label"><g:message code="monetizeOption.isMoMoney.label" default="Is Mo Money" /></span>
					
						<span class="property-value" aria-labelledby="isMoMoney-label"><g:formatBoolean boolean="${monetizeOptionInstance?.isMoMoney}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${monetizeOptionInstance?.isPPV}">
				<li class="fieldcontain">
					<span id="isPPV-label" class="property-label"><g:message code="monetizeOption.isPPV.label" default="Is PPV" /></span>
					
						<span class="property-value" aria-labelledby="isPPV-label"><g:formatBoolean boolean="${monetizeOptionInstance?.isPPV}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:monetizeOptionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${monetizeOptionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
