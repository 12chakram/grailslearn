<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<g:render template="/layouts/select2Scripts"/>
		<g:render template="select2Scripts"/>
	</head>
	<body>
		<g:form >
				<fieldset class="form">
					<g:render template="selectedMovieFields"/>
					<div class="fieldcontain">
						<label for="mediaSelect">
							<g:message code="media.select.label" default="Select ${videoType}" />
						</label>
						<g:if test="${videoType == 'Song'}">
						<g:select name="mediaSelect" from="${movieInstance?.songs}" optionKey="id" optionValue="name" size="5" value="${creativeWorkInstance}"/>
						</g:if>
						<g:if test="${videoType == 'Movie Clip'}">
						<g:select name="mediaSelect" from="${movieInstance?.movieClips}" optionKey="id" optionValue="name" size="5" value="${creativeWorkInstance}"/>
						</g:if>
						<g:if test="${videoType == 'Movie Promotion'}">
						<g:select name="mediaSelect" from="${movieInstance?.moviePromotions}" optionKey="id" optionValue="name" size="5" value="${creativeWorkInstance}"/>
						</g:if>
					</div>
					<g:if test="${videoType == 'Song'}">
					<g:render template="/MOSong/form"/>
					</g:if>
					<g:if test="${videoType == 'Movie Clip'}">
					<g:render template="/MOMovieClip/form"/>
					</g:if>
					<g:if test="${videoType == 'Movie Promotion'}">
					<g:render template="/MOMoviePromotion/form"/>
					</g:if>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="Select" value="Select"></g:submitButton>
					<g:submitButton name="Create" value="Create"></g:submitButton>
		    		<g:submitButton name="Back" value="Back"></g:submitButton>
				</fieldset>
			</g:form>
	</body>
</html>