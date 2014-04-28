
<%@ page import="org.schema.VideoObject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'videoObject.label', default: 'VideoObject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-videoObject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-videoObject" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list videoObject">
			
				<g:if test="${videoObjectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="videoObject.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${videoObjectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="videoObject.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${videoObjectInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="videoObject.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${videoObjectInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="videoObject.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${videoObjectInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="videoObject.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${videoObjectInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="videoObject.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${videoObjectInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="videoObject.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${videoObjectInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.embedUrl}">
				<li class="fieldcontain">
					<span id="embedUrl-label" class="property-label"><g:message code="videoObject.embedUrl.label" default="Embed Url" /></span>
					
						<span class="property-value" aria-labelledby="embedUrl-label"><g:fieldValue bean="${videoObjectInstance}" field="embedUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.encodingFormat}">
				<li class="fieldcontain">
					<span id="encodingFormat-label" class="property-label"><g:message code="videoObject.encodingFormat.label" default="Encoding Format" /></span>
					
						<span class="property-value" aria-labelledby="encodingFormat-label"><g:fieldValue bean="${videoObjectInstance}" field="encodingFormat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="videoObject.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${videoObjectInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.expires}">
				<li class="fieldcontain">
					<span id="expires-label" class="property-label"><g:message code="videoObject.expires.label" default="Expires" /></span>
					
						<span class="property-value" aria-labelledby="expires-label"><g:formatDate date="${videoObjectInstance?.expires}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.regionsAllowed}">
				<li class="fieldcontain">
					<span id="regionsAllowed-label" class="property-label"><g:message code="videoObject.regionsAllowed.label" default="Regions Allowed" /></span>
					
						<span class="property-value" aria-labelledby="regionsAllowed-label"><g:fieldValue bean="${videoObjectInstance}" field="regionsAllowed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.uploadDate}">
				<li class="fieldcontain">
					<span id="uploadDate-label" class="property-label"><g:message code="videoObject.uploadDate.label" default="Upload Date" /></span>
					
						<span class="property-value" aria-labelledby="uploadDate-label"><g:formatDate date="${videoObjectInstance?.uploadDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.caption}">
				<li class="fieldcontain">
					<span id="caption-label" class="property-label"><g:message code="videoObject.caption.label" default="Caption" /></span>
					
						<span class="property-value" aria-labelledby="caption-label"><g:fieldValue bean="${videoObjectInstance}" field="caption"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.creativeWork}">
				<li class="fieldcontain">
					<span id="creativeWork-label" class="property-label"><g:message code="videoObject.creativeWork.label" default="Creative Work" /></span>
					
						<span class="property-value" aria-labelledby="creativeWork-label"><g:link controller="creativeWork" action="show" id="${videoObjectInstance?.creativeWork?.id}">${videoObjectInstance?.creativeWork?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.interactionCount}">
				<li class="fieldcontain">
					<span id="interactionCount-label" class="property-label"><g:message code="videoObject.interactionCount.label" default="Interaction Count" /></span>
					
						<span class="property-value" aria-labelledby="interactionCount-label"><g:fieldValue bean="${videoObjectInstance}" field="interactionCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.offer}">
				<li class="fieldcontain">
					<span id="offer-label" class="property-label"><g:message code="videoObject.offer.label" default="Offer" /></span>
					
						<span class="property-value" aria-labelledby="offer-label"><g:link controller="offer" action="show" id="${videoObjectInstance?.offer?.id}">${videoObjectInstance?.offer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="videoObject.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${videoObjectInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="videoObject.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:link controller="organization" action="show" id="${videoObjectInstance?.publisher?.id}">${videoObjectInstance?.publisher?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.requiresSubscription}">
				<li class="fieldcontain">
					<span id="requiresSubscription-label" class="property-label"><g:message code="videoObject.requiresSubscription.label" default="Requires Subscription" /></span>
					
						<span class="property-value" aria-labelledby="requiresSubscription-label"><g:formatBoolean boolean="${videoObjectInstance?.requiresSubscription}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.sourceStreamId}">
				<li class="fieldcontain">
					<span id="sourceStreamId-label" class="property-label"><g:message code="videoObject.sourceStreamId.label" default="Source Stream Id" /></span>
					
						<span class="property-value" aria-labelledby="sourceStreamId-label"><g:fieldValue bean="${videoObjectInstance}" field="sourceStreamId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.streamSource}">
				<li class="fieldcontain">
					<span id="streamSource-label" class="property-label"><g:message code="videoObject.streamSource.label" default="Stream Source" /></span>
					
						<span class="property-value" aria-labelledby="streamSource-label"><g:fieldValue bean="${videoObjectInstance}" field="streamSource"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="videoObject.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${videoObjectInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.videoFrameSize}">
				<li class="fieldcontain">
					<span id="videoFrameSize-label" class="property-label"><g:message code="videoObject.videoFrameSize.label" default="Video Frame Size" /></span>
					
						<span class="property-value" aria-labelledby="videoFrameSize-label"><g:fieldValue bean="${videoObjectInstance}" field="videoFrameSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${videoObjectInstance?.videoQuality}">
				<li class="fieldcontain">
					<span id="videoQuality-label" class="property-label"><g:message code="videoObject.videoQuality.label" default="Video Quality" /></span>
					
						<span class="property-value" aria-labelledby="videoQuality-label"><g:fieldValue bean="${videoObjectInstance}" field="videoQuality"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:videoObjectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${videoObjectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
