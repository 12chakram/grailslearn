
<%@ page import="org.schema.CreativeWork" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'creativeWork.label', default: 'CreativeWork')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-creativeWork" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-creativeWork" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list creativeWork">
			
				<g:if test="${creativeWorkInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="creativeWork.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${creativeWorkInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="creativeWork.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${creativeWorkInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="creativeWork.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${creativeWorkInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="creativeWork.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${creativeWorkInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="creativeWork.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${creativeWorkInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="creativeWork.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${creativeWorkInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="creativeWork.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${creativeWorkInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.contentRating}">
				<li class="fieldcontain">
					<span id="contentRating-label" class="property-label"><g:message code="creativeWork.contentRating.label" default="Content Rating" /></span>
					
						<span class="property-value" aria-labelledby="contentRating-label"><g:fieldValue bean="${creativeWorkInstance}" field="contentRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.datePublished}">
				<li class="fieldcontain">
					<span id="datePublished-label" class="property-label"><g:message code="creativeWork.datePublished.label" default="Date Published" /></span>
					
						<span class="property-value" aria-labelledby="datePublished-label"><g:formatDate date="${creativeWorkInstance?.datePublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.headline}">
				<li class="fieldcontain">
					<span id="headline-label" class="property-label"><g:message code="creativeWork.headline.label" default="Headline" /></span>
					
						<span class="property-value" aria-labelledby="headline-label"><g:fieldValue bean="${creativeWorkInstance}" field="headline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.thumbnailUrl}">
				<li class="fieldcontain">
					<span id="thumbnailUrl-label" class="property-label"><g:message code="creativeWork.thumbnailUrl.label" default="Thumbnail Url" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${creativeWorkInstance}" field="thumbnailUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.creativeRoles}">
				<li class="fieldcontain">
					<span id="creativeRoles-label" class="property-label"><g:message code="creativeWork.creativeRoles.label" default="Creative Roles" /></span>
					
						<g:each in="${creativeWorkInstance.creativeRoles}" var="c">
						<span class="property-value" aria-labelledby="creativeRoles-label"><g:link controller="creativeRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="creativeWork.genres.label" default="Genres" /></span>
					
						<g:each in="${creativeWorkInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="SOGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.inLanguage}">
				<li class="fieldcontain">
					<span id="inLanguage-label" class="property-label"><g:message code="creativeWork.inLanguage.label" default="In Language" /></span>
					
						<span class="property-value" aria-labelledby="inLanguage-label"><g:fieldValue bean="${creativeWorkInstance}" field="inLanguage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.interactionCount}">
				<li class="fieldcontain">
					<span id="interactionCount-label" class="property-label"><g:message code="creativeWork.interactionCount.label" default="Interaction Count" /></span>
					
						<span class="property-value" aria-labelledby="interactionCount-label"><g:fieldValue bean="${creativeWorkInstance}" field="interactionCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.isFamilyFriendly}">
				<li class="fieldcontain">
					<span id="isFamilyFriendly-label" class="property-label"><g:message code="creativeWork.isFamilyFriendly.label" default="Is Family Friendly" /></span>
					
						<span class="property-value" aria-labelledby="isFamilyFriendly-label"><g:formatBoolean boolean="${creativeWorkInstance?.isFamilyFriendly}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.isPublished}">
				<li class="fieldcontain">
					<span id="isPublished-label" class="property-label"><g:message code="creativeWork.isPublished.label" default="Is Published" /></span>
					
						<span class="property-value" aria-labelledby="isPublished-label"><g:formatBoolean boolean="${creativeWorkInstance?.isPublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="creativeWork.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${creativeWorkInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.timeRequired}">
				<li class="fieldcontain">
					<span id="timeRequired-label" class="property-label"><g:message code="creativeWork.timeRequired.label" default="Time Required" /></span>
					
						<span class="property-value" aria-labelledby="timeRequired-label"><g:fieldValue bean="${creativeWorkInstance}" field="timeRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${creativeWorkInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="creativeWork.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${creativeWorkInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:creativeWorkInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${creativeWorkInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
