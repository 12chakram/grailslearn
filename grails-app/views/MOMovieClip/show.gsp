
<%@ page import="org.schema.MOMovieClip" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MOMovieClip.label', default: 'MOMovieClip')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MOMovieClip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MOMovieClip" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MOMovieClip">
			
				<g:if test="${MOMovieClipInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="MOMovieClip.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MOMovieClipInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="MOMovieClip.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${MOMovieClipInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="MOMovieClip.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${MOMovieClipInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="MOMovieClip.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${MOMovieClipInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="MOMovieClip.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${MOMovieClipInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="MOMovieClip.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${MOMovieClipInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="MOMovieClip.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${MOMovieClipInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.contentRating}">
				<li class="fieldcontain">
					<span id="contentRating-label" class="property-label"><g:message code="MOMovieClip.contentRating.label" default="Content Rating" /></span>
					
						<span class="property-value" aria-labelledby="contentRating-label"><g:fieldValue bean="${MOMovieClipInstance}" field="contentRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.datePublished}">
				<li class="fieldcontain">
					<span id="datePublished-label" class="property-label"><g:message code="MOMovieClip.datePublished.label" default="Date Published" /></span>
					
						<span class="property-value" aria-labelledby="datePublished-label"><g:formatDate date="${MOMovieClipInstance?.datePublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.headline}">
				<li class="fieldcontain">
					<span id="headline-label" class="property-label"><g:message code="MOMovieClip.headline.label" default="Headline" /></span>
					
						<span class="property-value" aria-labelledby="headline-label"><g:fieldValue bean="${MOMovieClipInstance}" field="headline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.thumbnailUrl}">
				<li class="fieldcontain">
					<span id="thumbnailUrl-label" class="property-label"><g:message code="MOMovieClip.thumbnailUrl.label" default="Thumbnail Url" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${MOMovieClipInstance}" field="thumbnailUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.creativeRoles}">
				<li class="fieldcontain">
					<span id="creativeRoles-label" class="property-label"><g:message code="MOMovieClip.creativeRoles.label" default="Creative Roles" /></span>
					
						<g:each in="${MOMovieClipInstance.creativeRoles}" var="c">
						<span class="property-value" aria-labelledby="creativeRoles-label"><g:link controller="creativeRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="MOMovieClip.genres.label" default="Genres" /></span>
					
						<g:each in="${MOMovieClipInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="SOGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.inLanguage}">
				<li class="fieldcontain">
					<span id="inLanguage-label" class="property-label"><g:message code="MOMovieClip.inLanguage.label" default="In Language" /></span>
					
						<span class="property-value" aria-labelledby="inLanguage-label"><g:fieldValue bean="${MOMovieClipInstance}" field="inLanguage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.interactionCount}">
				<li class="fieldcontain">
					<span id="interactionCount-label" class="property-label"><g:message code="MOMovieClip.interactionCount.label" default="Interaction Count" /></span>
					
						<span class="property-value" aria-labelledby="interactionCount-label"><g:fieldValue bean="${MOMovieClipInstance}" field="interactionCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.isFamilyFriendly}">
				<li class="fieldcontain">
					<span id="isFamilyFriendly-label" class="property-label"><g:message code="MOMovieClip.isFamilyFriendly.label" default="Is Family Friendly" /></span>
					
						<span class="property-value" aria-labelledby="isFamilyFriendly-label"><g:formatBoolean boolean="${MOMovieClipInstance?.isFamilyFriendly}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.isPublished}">
				<li class="fieldcontain">
					<span id="isPublished-label" class="property-label"><g:message code="MOMovieClip.isPublished.label" default="Is Published" /></span>
					
						<span class="property-value" aria-labelledby="isPublished-label"><g:formatBoolean boolean="${MOMovieClipInstance?.isPublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.movie}">
				<li class="fieldcontain">
					<span id="movie-label" class="property-label"><g:message code="MOMovieClip.movie.label" default="Movie" /></span>
					
						<span class="property-value" aria-labelledby="movie-label"><g:link controller="SOMovie" action="show" id="${MOMovieClipInstance?.movie?.id}">${MOMovieClipInstance?.movie?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="MOMovieClip.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${MOMovieClipInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.timeRequired}">
				<li class="fieldcontain">
					<span id="timeRequired-label" class="property-label"><g:message code="MOMovieClip.timeRequired.label" default="Time Required" /></span>
					
						<span class="property-value" aria-labelledby="timeRequired-label"><g:fieldValue bean="${MOMovieClipInstance}" field="timeRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMovieClipInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="MOMovieClip.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${MOMovieClipInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:MOMovieClipInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${MOMovieClipInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
