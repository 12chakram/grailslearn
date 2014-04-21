<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<g:render template="/layouts/select2Scripts"/>
	</head>
	<body>
		<g:form>
			<div class="fieldcontain">
				<label for="videoType">
					<g:message code="video.videoType.label" default="VideoType" />
					
				</label>
				<g:select name="videoType" from="['Movie', 'Song', 'Movie Clip', 'Movie Promotion']"  value="${videoType}"/>
			</div>
			<div class="fieldcontain ${hasErrors(bean: movie, field: 'title', 'error')} ">
				<label for="media">
					<g:message code="movie.label" default="Movie" />
				</label>
				<g:textField name="media"  value="${movie?.uniqueTitle}" placeholder="Select Movie"/>
			</div>
		    <!-- Other fields -->
		    <g:submitButton name="Continue" value="Continue"></g:submitButton>
		</g:form>
	</body>
</html>