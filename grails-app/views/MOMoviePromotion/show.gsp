
<%@ page import="org.schema.MOMoviePromotion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'MOMoviePromotion.label', default: 'MOMoviePromotion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-MOMoviePromotion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-MOMoviePromotion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list MOMoviePromotion">
			
				<g:if test="${MOMoviePromotionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="MOMoviePromotion.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="MOMoviePromotion.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="MOMoviePromotion.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="MOMoviePromotion.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="MOMoviePromotion.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="MOMoviePromotion.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="MOMoviePromotion.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.contentRating}">
				<li class="fieldcontain">
					<span id="contentRating-label" class="property-label"><g:message code="MOMoviePromotion.contentRating.label" default="Content Rating" /></span>
					
						<span class="property-value" aria-labelledby="contentRating-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="contentRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.datePublished}">
				<li class="fieldcontain">
					<span id="datePublished-label" class="property-label"><g:message code="MOMoviePromotion.datePublished.label" default="Date Published" /></span>
					
						<span class="property-value" aria-labelledby="datePublished-label"><g:formatDate date="${MOMoviePromotionInstance?.datePublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.headline}">
				<li class="fieldcontain">
					<span id="headline-label" class="property-label"><g:message code="MOMoviePromotion.headline.label" default="Headline" /></span>
					
						<span class="property-value" aria-labelledby="headline-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="headline"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.thumbnailUrl}">
				<li class="fieldcontain">
					<span id="thumbnailUrl-label" class="property-label"><g:message code="MOMoviePromotion.thumbnailUrl.label" default="Thumbnail Url" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="thumbnailUrl"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.creativeRoles}">
				<li class="fieldcontain">
					<span id="creativeRoles-label" class="property-label"><g:message code="MOMoviePromotion.creativeRoles.label" default="Creative Roles" /></span>
					
						<g:each in="${MOMoviePromotionInstance.creativeRoles}" var="c">
						<span class="property-value" aria-labelledby="creativeRoles-label"><g:link controller="creativeRole" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="MOMoviePromotion.genres.label" default="Genres" /></span>
					
						<g:each in="${MOMoviePromotionInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="SOGenre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.inLanguage}">
				<li class="fieldcontain">
					<span id="inLanguage-label" class="property-label"><g:message code="MOMoviePromotion.inLanguage.label" default="In Language" /></span>
					
						<span class="property-value" aria-labelledby="inLanguage-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="inLanguage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.interactionCount}">
				<li class="fieldcontain">
					<span id="interactionCount-label" class="property-label"><g:message code="MOMoviePromotion.interactionCount.label" default="Interaction Count" /></span>
					
						<span class="property-value" aria-labelledby="interactionCount-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="interactionCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.isFamilyFriendly}">
				<li class="fieldcontain">
					<span id="isFamilyFriendly-label" class="property-label"><g:message code="MOMoviePromotion.isFamilyFriendly.label" default="Is Family Friendly" /></span>
					
						<span class="property-value" aria-labelledby="isFamilyFriendly-label"><g:formatBoolean boolean="${MOMoviePromotionInstance?.isFamilyFriendly}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.isPublished}">
				<li class="fieldcontain">
					<span id="isPublished-label" class="property-label"><g:message code="MOMoviePromotion.isPublished.label" default="Is Published" /></span>
					
						<span class="property-value" aria-labelledby="isPublished-label"><g:formatBoolean boolean="${MOMoviePromotionInstance?.isPublished}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.movie}">
				<li class="fieldcontain">
					<span id="movie-label" class="property-label"><g:message code="MOMoviePromotion.movie.label" default="Movie" /></span>
					
						<span class="property-value" aria-labelledby="movie-label"><g:link controller="SOMovie" action="show" id="${MOMoviePromotionInstance?.movie?.id}">${MOMoviePromotionInstance?.movie?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="MOMoviePromotion.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.timeRequired}">
				<li class="fieldcontain">
					<span id="timeRequired-label" class="property-label"><g:message code="MOMoviePromotion.timeRequired.label" default="Time Required" /></span>
					
						<span class="property-value" aria-labelledby="timeRequired-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="timeRequired"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${MOMoviePromotionInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="MOMoviePromotion.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${MOMoviePromotionInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:MOMoviePromotionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${MOMoviePromotionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
