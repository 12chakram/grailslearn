
<%@ page import="org.schema.MOSong" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MOSong.label', default: 'MOSong')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MOSong" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MOSong" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MOSong">
				<g:if test="${MOSongInstance?.movie?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="SOMovie.name.label" default="Movie" /></span>
					<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MOSongInstance?.movie}" field="name"/></span>
				</li>
				</g:if>
				<g:if test="${MOSongInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="MOSong.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MOSongInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="MOSong.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${MOSongInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="MOSong.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${MOSongInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="MOSong.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${MOSongInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="MOSong.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${MOSongInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="MOSong.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${MOSongInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="MOSong.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${MOSongInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.contentRating}">
				<li class="fieldcontain">
					<span id="contentRating-label" class="property-label"><g:message code="MOSong.contentRating.label" default="Content Rating" /></span>
					
						<span class="property-value" aria-labelledby="contentRating-label"><g:fieldValue bean="${MOSongInstance}" field="contentRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.datePublished}">
				<li class="fieldcontain">
					<span id="datePublished-label" class="property-label"><g:message code="MOSong.datePublished.label" default="Date Published" /></span>
					
						<span class="property-value" aria-labelledby="datePublished-label"><g:formatDate date="${MOSongInstance?.datePublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.headline}">
				<li class="fieldcontain">
					<span id="headline-label" class="property-label"><g:message code="MOSong.headline.label" default="Headline" /></span>
					
						<span class="property-value" aria-labelledby="headline-label"><g:fieldValue bean="${MOSongInstance}" field="headline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.thumbnailUrl}">
				<li class="fieldcontain">
					<span id="thumbnailUrl-label" class="property-label"><g:message code="MOSong.thumbnailUrl.label" default="Thumbnail Url" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${MOSongInstance}" field="thumbnailUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.timeRequiredText}">
				<li class="fieldcontain">
					<span id="timeRequiredText-label" class="property-label"><g:message code="MOSong.timeRequiredText.label" default="Time Required Text" /></span>
					
						<span class="property-value" aria-labelledby="timeRequiredText-label"><g:fieldValue bean="${MOSongInstance}" field="timeRequiredText"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.inLanguage}">
				<li class="fieldcontain">
					<span id="inLanguage-label" class="property-label"><g:message code="MOSong.inLanguage.label" default="In Language" /></span>
					
						<span class="property-value" aria-labelledby="inLanguage-label"><g:fieldValue bean="${MOSongInstance}" field="inLanguage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.creativeRoles}">
				<li class="fieldcontain">
					<span id="creativeRoles-label" class="property-label"><g:message code="MOSong.creativeRoles.label" default="Creative Roles" /></span>
					
						<g:each in="${MOSongInstance.creativeRoles}" var="c">
						<span class="property-value" aria-labelledby="creativeRoles-label"><g:link controller="creativeRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="MOSong.genres.label" default="Genres" /></span>
					
						<g:each in="${MOSongInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="SOGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.interactionCount}">
				<li class="fieldcontain">
					<span id="interactionCount-label" class="property-label"><g:message code="MOSong.interactionCount.label" default="Interaction Count" /></span>
					
						<span class="property-value" aria-labelledby="interactionCount-label"><g:fieldValue bean="${MOSongInstance}" field="interactionCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.isFamilyFriendly}">
				<li class="fieldcontain">
					<span id="isFamilyFriendly-label" class="property-label"><g:message code="MOSong.isFamilyFriendly.label" default="Is Family Friendly" /></span>
					
						<span class="property-value" aria-labelledby="isFamilyFriendly-label"><g:formatBoolean boolean="${MOSongInstance?.isFamilyFriendly}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.isPublished}">
				<li class="fieldcontain">
					<span id="isPublished-label" class="property-label"><g:message code="MOSong.isPublished.label" default="Is Published" /></span>
					
						<span class="property-value" aria-labelledby="isPublished-label"><g:formatBoolean boolean="${MOSongInstance?.isPublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.movie}">
				<li class="fieldcontain">
					<span id="movie-label" class="property-label"><g:message code="MOSong.movie.label" default="Movie" /></span>
					
						<span class="property-value" aria-labelledby="movie-label"><g:link controller="SOMovie" action="show" id="${MOSongInstance?.movie?.id}">${MOSongInstance?.movie?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="MOSong.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${MOSongInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.timeRequired}">
				<li class="fieldcontain">
					<span id="timeRequired-label" class="property-label"><g:message code="MOSong.timeRequired.label" default="Time Required" /></span>
					
						<span class="property-value" aria-labelledby="timeRequired-label"><g:fieldValue bean="${MOSongInstance}" field="timeRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOSongInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="MOSong.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${MOSongInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:MOSongInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${MOSongInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
