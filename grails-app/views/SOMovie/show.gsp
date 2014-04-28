
<%@ page import="org.schema.SOMovie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'SOMovie.label', default: 'SOMovie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-SOMovie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-SOMovie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list SOMovie">
			
				<g:if test="${SOMovieInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="SOMovie.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${SOMovieInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="SOMovie.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${SOMovieInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="SOMovie.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${SOMovieInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="SOMovie.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${SOMovieInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="SOMovie.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${SOMovieInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="SOMovie.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${SOMovieInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="SOMovie.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${SOMovieInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.contentRating}">
				<li class="fieldcontain">
					<span id="contentRating-label" class="property-label"><g:message code="SOMovie.contentRating.label" default="Content Rating" /></span>
					
						<span class="property-value" aria-labelledby="contentRating-label"><g:fieldValue bean="${SOMovieInstance}" field="contentRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.datePublished}">
				<li class="fieldcontain">
					<span id="datePublished-label" class="property-label"><g:message code="SOMovie.datePublished.label" default="Date Published" /></span>
					
						<span class="property-value" aria-labelledby="datePublished-label"><g:formatDate date="${SOMovieInstance?.datePublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.headline}">
				<li class="fieldcontain">
					<span id="headline-label" class="property-label"><g:message code="SOMovie.headline.label" default="Headline" /></span>
					
						<span class="property-value" aria-labelledby="headline-label"><g:fieldValue bean="${SOMovieInstance}" field="headline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.thumbnailUrl}">
				<li class="fieldcontain">
					<span id="thumbnailUrl-label" class="property-label"><g:message code="SOMovie.thumbnailUrl.label" default="Thumbnail Url" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${SOMovieInstance}" field="thumbnailUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.creativeRoles}">
				<li class="fieldcontain">
					<span id="creativeRoles-label" class="property-label"><g:message code="SOMovie.creativeRoles.label" default="Creative Roles" /></span>
					
						<g:each in="${SOMovieInstance.creativeRoles}" var="c">
						<span class="property-value" aria-labelledby="creativeRoles-label"><g:link controller="creativeRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="SOMovie.genres.label" default="Genres" /></span>
					
						<g:each in="${SOMovieInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="SOGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.inLanguage}">
				<li class="fieldcontain">
					<span id="inLanguage-label" class="property-label"><g:message code="SOMovie.inLanguage.label" default="In Language" /></span>
					
						<span class="property-value" aria-labelledby="inLanguage-label"><g:fieldValue bean="${SOMovieInstance}" field="inLanguage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.interactionCount}">
				<li class="fieldcontain">
					<span id="interactionCount-label" class="property-label"><g:message code="SOMovie.interactionCount.label" default="Interaction Count" /></span>
					
						<span class="property-value" aria-labelledby="interactionCount-label"><g:fieldValue bean="${SOMovieInstance}" field="interactionCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.isFamilyFriendly}">
				<li class="fieldcontain">
					<span id="isFamilyFriendly-label" class="property-label"><g:message code="SOMovie.isFamilyFriendly.label" default="Is Family Friendly" /></span>
					
						<span class="property-value" aria-labelledby="isFamilyFriendly-label"><g:formatBoolean boolean="${SOMovieInstance?.isFamilyFriendly}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.isPublished}">
				<li class="fieldcontain">
					<span id="isPublished-label" class="property-label"><g:message code="SOMovie.isPublished.label" default="Is Published" /></span>
					
						<span class="property-value" aria-labelledby="isPublished-label"><g:formatBoolean boolean="${SOMovieInstance?.isPublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.movieClips}">
				<li class="fieldcontain">
					<span id="movieClips-label" class="property-label"><g:message code="SOMovie.movieClips.label" default="Movie Clips" /></span>
					
						<g:each in="${SOMovieInstance.movieClips}" var="m">
						<span class="property-value" aria-labelledby="movieClips-label"><g:link controller="clip" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="SOMovie.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${SOMovieInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.releaseYear}">
				<li class="fieldcontain">
					<span id="releaseYear-label" class="property-label"><g:message code="SOMovie.releaseYear.label" default="Release Year" /></span>
					
						<span class="property-value" aria-labelledby="releaseYear-label"><g:fieldValue bean="${SOMovieInstance}" field="releaseYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.songs}">
				<li class="fieldcontain">
					<span id="songs-label" class="property-label"><g:message code="SOMovie.songs.label" default="Songs" /></span>
					
						<g:each in="${SOMovieInstance.songs}" var="s">
						<span class="property-value" aria-labelledby="songs-label"><g:link controller="MOSong" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.timeRequired}">
				<li class="fieldcontain">
					<span id="timeRequired-label" class="property-label"><g:message code="SOMovie.timeRequired.label" default="Time Required" /></span>
					
						<span class="property-value" aria-labelledby="timeRequired-label"><g:fieldValue bean="${SOMovieInstance}" field="timeRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${SOMovieInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="SOMovie.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${SOMovieInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:SOMovieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${SOMovieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
