
<%@ page import="multiplexonline.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-video" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list video">
			
			
				<g:if test="${videoInstance?.streamSource}">
				<li class="fieldcontain">
					<span id="streamSource-label" class="property-label"><g:message code="video.streamSource.label" default="Stream Source" /></span>
					
						<span class="property-value" aria-labelledby="streamSource-label"><g:fieldValue bean="${videoInstance}" field="streamSource"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.streamUrl}">
				<li class="fieldcontain">
					<span id="streamUrl-label" class="property-label"><g:message code="video.streamUrl.label" default="Stream Url" /></span>
					
						<span class="property-value" aria-labelledby="streamUrl-label"><g:fieldValue bean="${videoInstance}" field="streamUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.subTitleLanguage}">
				<li class="fieldcontain">
					<span id="subTitleLanguage-label" class="property-label"><g:message code="video.subTitleLanguage.label" default="ST Language" /></span>
					
						<span class="property-value" aria-labelledby="subTitleLanguage-label"><g:fieldValue boolean="${videoInstance?.subTitleLanguage}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.runningTime}">
				<li class="fieldcontain">
					<span id="runningTime-label" class="property-label"><g:message code="video.runningTime.label" default="Running Time" /></span>
					
						<span class="property-value" aria-labelledby="runningTime-label"><g:fieldValue bean="${videoInstance}" field="runningTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoInstance?.sourceStreamId}">
				<li class="fieldcontain">
					<span id="sourceStreamId-label" class="property-label"><g:message code="video.sourceStreamId.label" default="Source Stream Id" /></span>
					
						<span class="property-value" aria-labelledby="sourceStreamId-label"><g:fieldValue bean="${videoInstance}" field="sourceStreamId"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
