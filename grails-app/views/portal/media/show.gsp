
<%@ page import="multiplexonline.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movie">
			
				<g:if test="${movieInstance?.iinName}">
				<li class="fieldcontain">
					<span id="iinName-label" class="property-label"><g:message code="movie.iinName.label" default="Iin Name" /></span>
					
						<span class="property-value" aria-labelledby="iinName-label"><g:fieldValue bean="${movieInstance}" field="iinName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.language}">
				<li class="fieldcontain">
					<span id="language-label" class="property-label"><g:message code="movie.language.label" default="Language" /></span>
					
						<span class="property-value" aria-labelledby="language-label"><g:fieldValue bean="${movieInstance}" field="language"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.lpHires}">
				<li class="fieldcontain">
					<span id="lpHires-label" class="property-label"><g:message code="movie.lpHires.label" default="Lp Hires" /></span>
					
						<span class="property-value" aria-labelledby="lpHires-label"><g:fieldValue bean="${movieInstance}" field="lpHires"/></span>
					
				</li>
				<% 
					String extension = movieInstance.lpHires.substring((movieInstance.lpHires.length() -3), movieInstance.lpHires.length());
					String imageName = movieInstance.title + "." + extension; 
				%>
				<li class="fieldcontain">
					<ii:imageTag indirect-imagename="${movieInstance.imageName}"/> 
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.lpMedres}">
				<li class="fieldcontain">
					<span id="lpMedres-label" class="property-label"><g:message code="movie.lpMedres.label" default="Lp Medres" /></span>
					
						<span class="property-value" aria-labelledby="lpMedres-label"><g:fieldValue bean="${movieInstance}" field="lpMedres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.mediaKind}">
				<li class="fieldcontain">
					<span id="mediaKind-label" class="property-label"><g:message code="movie.mediaKind.label" default="Media Kind" /></span>
					
						<span class="property-value" aria-labelledby="mediaKind-label"><g:fieldValue bean="${movieInstance}" field="mediaKind"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.ppHiRes}">
				<li class="fieldcontain">
					<span id="ppHiRes-label" class="property-label"><g:message code="movie.ppHiRes.label" default="Pp Hi Res" /></span>
					
						<span class="property-value" aria-labelledby="ppHiRes-label"><g:fieldValue bean="${movieInstance}" field="ppHiRes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.ppMedRes}">
				<li class="fieldcontain">
					<span id="ppMedRes-label" class="property-label"><g:message code="movie.ppMedRes.label" default="Pp Med Res" /></span>
					
						<span class="property-value" aria-labelledby="ppMedRes-label"><g:fieldValue bean="${movieInstance}" field="ppMedRes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.publishedDate}">
				<li class="fieldcontain">
					<span id="publishedDate-label" class="property-label"><g:message code="movie.publishedDate.label" default="Published Date" /></span>
					
						<span class="property-value" aria-labelledby="publishedDate-label"><g:formatDate date="${movieInstance?.publishedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="movie.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${movieInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.releaseDate}">
				<li class="fieldcontain">
					<span id="releaseDate-label" class="property-label"><g:message code="movie.releaseDate.label" default="Release Date" /></span>
					
						<span class="property-value" aria-labelledby="releaseDate-label"><g:formatDate date="${movieInstance?.releaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.releaseYear}">
				<li class="fieldcontain">
					<span id="releaseYear-label" class="property-label"><g:message code="movie.releaseYear.label" default="Release Year" /></span>
					
						<span class="property-value" aria-labelledby="releaseYear-label"><g:fieldValue bean="${movieInstance}" field="releaseYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.synopsis}">
				<li class="fieldcontain">
					<span id="synopsis-label" class="property-label"><g:message code="movie.synopsis.label" default="Synopsis" /></span>
					
						<span class="property-value" aria-labelledby="synopsis-label"><g:fieldValue bean="${movieInstance}" field="synopsis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.tagLine}">
				<li class="fieldcontain">
					<span id="tagLine-label" class="property-label"><g:message code="movie.tagLine.label" default="Tag Line" /></span>
					
						<span class="property-value" aria-labelledby="tagLine-label"><g:fieldValue bean="${movieInstance}" field="tagLine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.usReleaseDate}">
				<li class="fieldcontain">
					<span id="usReleaseDate-label" class="property-label"><g:message code="movie.usReleaseDate.label" default="Us Release Date" /></span>
					
						<span class="property-value" aria-labelledby="usReleaseDate-label"><g:formatDate date="${movieInstance?.usReleaseDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.genres}">
				<li class="fieldcontain">
					<span id="genres-label" class="property-label"><g:message code="movie.genres.label" default="Genres" /></span>
					
						<g:each in="${movieInstance.genres}" var="g">
						<span class="property-value" aria-labelledby="genres-label"><g:link controller="genre" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.mediaRights}">
				<li class="fieldcontain">
					<span id="mediaRights-label" class="property-label"><g:message code="movie.mediaRights.label" default="Media Rights" /></span>
					
						<g:each in="${movieInstance.mediaRights}" var="m">
						<span class="property-value" aria-labelledby="mediaRights-label"><g:link controller="mediaRight" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.mediaRoles}">
				<li class="fieldcontain">
					<span id="mediaRoles-label" class="property-label"><g:message code="movie.mediaRoles.label" default="Media Roles" /></span>
					
						<g:each in="${movieInstance.mediaRoles}" var="m">
						<span class="property-value" aria-labelledby="mediaRoles-label"><g:link controller="mediaRole" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.mediaType}">
				<li class="fieldcontain">
					<span id="mediaType-label" class="property-label"><g:message code="movie.mediaType.label" default="Media Type" /></span>
					
						<span class="property-value" aria-labelledby="mediaType-label"><g:link controller="mediaType" action="show" id="${movieInstance?.mediaType?.id}">${movieInstance?.mediaType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.movieClips}">
				<li class="fieldcontain">
					<span id="movieClips-label" class="property-label"><g:message code="movie.movieClips.label" default="Movie Clips" /></span>
					
						<g:each in="${movieInstance.movieClips}" var="m">
						<span class="property-value" aria-labelledby="movieClips-label"><g:link controller="movieClip" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.published}">
				<li class="fieldcontain">
					<span id="published-label" class="property-label"><g:message code="movie.published.label" default="Published" /></span>
					
						<span class="property-value" aria-labelledby="published-label"><g:formatBoolean boolean="${movieInstance?.published}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="movie.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${movieInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.ratingCount}">
				<li class="fieldcontain">
					<span id="ratingCount-label" class="property-label"><g:message code="movie.ratingCount.label" default="Rating Count" /></span>
					
						<span class="property-value" aria-labelledby="ratingCount-label"><g:fieldValue bean="${movieInstance}" field="ratingCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.runningTime}">
				<li class="fieldcontain">
					<span id="runningTime-label" class="property-label"><g:message code="movie.runningTime.label" default="Running Time" /></span>
					
						<span class="property-value" aria-labelledby="runningTime-label"><g:fieldValue bean="${movieInstance}" field="runningTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.songs}">
				<li class="fieldcontain">
					<span id="songs-label" class="property-label"><g:message code="movie.songs.label" default="Songs" /></span>
					
						<g:each in="${movieInstance.songs}" var="s">
						<span class="property-value" aria-labelledby="songs-label"><g:link controller="song" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:movieInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${movieInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
