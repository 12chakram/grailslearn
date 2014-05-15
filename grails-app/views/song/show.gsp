
<%@ page import="multiplexonline.Song" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'song.label', default: 'Song')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-song" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-song" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list song">
			
				<g:if test="${songInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="song.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${songInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.iinName}">
				<li class="fieldcontain">
					<span id="iinName-label" class="property-label"><g:message code="song.iinName.label" default="Iin Name" /></span>
					
						<span class="property-value" aria-labelledby="iinName-label"><g:fieldValue bean="${songInstance}" field="iinName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="song.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${songInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.lpHires}">
				<li class="fieldcontain">
					<span id="lpHires-label" class="property-label"><g:message code="song.lpHires.label" default="Lp Hires" /></span>
					
						<span class="property-value" aria-labelledby="lpHires-label"><g:fieldValue bean="${songInstance}" field="lpHires"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.lpMedres}">
				<li class="fieldcontain">
					<span id="lpMedres-label" class="property-label"><g:message code="song.lpMedres.label" default="Lp Medres" /></span>
					
						<span class="property-value" aria-labelledby="lpMedres-label"><g:fieldValue bean="${songInstance}" field="lpMedres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.mediaKind}">
				<li class="fieldcontain">
					<span id="mediaKind-label" class="property-label"><g:message code="song.mediaKind.label" default="Media Kind" /></span>
					
						<span class="property-value" aria-labelledby="mediaKind-label"><g:fieldValue bean="${songInstance}" field="mediaKind"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.mediaType}">
				<li class="fieldcontain">
					<span id="mediaType-label" class="property-label"><g:message code="song.mediaType.label" default="Media Type" /></span>
					
						<span class="property-value" aria-labelledby="mediaType-label"><g:link controller="mediaType" action="show" id="${songInstance?.mediaType?.id}">${songInstance?.mediaType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.ppHiRes}">
				<li class="fieldcontain">
					<span id="ppHiRes-label" class="property-label"><g:message code="song.ppHiRes.label" default="Pp Hi Res" /></span>
					
						<span class="property-value" aria-labelledby="ppHiRes-label"><g:fieldValue bean="${songInstance}" field="ppHiRes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.ppMedRes}">
				<li class="fieldcontain">
					<span id="ppMedRes-label" class="property-label"><g:message code="song.ppMedRes.label" default="Pp Med Res" /></span>
					
						<span class="property-value" aria-labelledby="ppMedRes-label"><g:fieldValue bean="${songInstance}" field="ppMedRes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.publishedDate}">
				<li class="fieldcontain">
					<span id="publishedDate-label" class="property-label"><g:message code="song.publishedDate.label" default="Published Date" /></span>
					
						<span class="property-value" aria-labelledby="publishedDate-label"><g:formatDate date="${songInstance?.publishedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="song.genres.label" default="Genres" /></span>
					
						<g:each in="${songInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="genre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.mediaRights}">
				<li class="fieldcontain">
					<span id="mediaRights-label" class="property-label"><g:message code="song.mediaRights.label" default="Media Rights" /></span>
					
						<g:each in="${songInstance.mediaRights}" var="m">
						<span class="property-value" aria-labelledby="mediaRights-label"><g:link controller="mediaRight" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.mediaRoles}">
				<li class="fieldcontain">
					<span id="mediaRoles-label" class="property-label"><g:message code="song.mediaRoles.label" default="Media Roles" /></span>
					
						<g:each in="${songInstance.mediaRoles}" var="m">
						<span class="property-value" aria-labelledby="mediaRoles-label"><g:link controller="mediaRole" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="song.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:formatBoolean boolean="${songInstance?.published}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="song.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${songInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.ratingCount}">
				<li class="fieldcontain">
					<span id="ratingCount-label" class="property-label"><g:message code="song.ratingCount.label" default="Rating Count" /></span>
					
						<span class="property-value" aria-labelledby="ratingCount-label"><g:fieldValue bean="${songInstance}" field="ratingCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${songInstance?.runningTime}">
				<li class="fieldcontain">
					<span id="runningTime-label" class="property-label"><g:message code="song.runningTime.label" default="Running Time" /></span>
					
						<span class="property-value" aria-labelledby="runningTime-label"><g:fieldValue bean="${songInstance}" field="runningTime"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:songInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${songInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
