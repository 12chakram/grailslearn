<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<%--<g:render template="/layouts/select2Scripts"/>--%>
		<g:render template="select2Scripts"/>
	</head>
	<body>
		<g:form >
				<fieldset class="form">
					<g:render template="selectedMovieFields"/>
					<div class="fieldcontain">
						<label for="song">
							<g:message code="song.mediaRoles.label" default="Select Song" />
						</label>
						<g:select name="song" from="${movie?.songs}" optionKey="id" optionValue="title" size="5" value="${songInstance}"/>
					</div>
					<g:render template="/media/form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="Select" value="Select"></g:submitButton>
					<g:submitButton name="Create" value="Create"></g:submitButton>
		    		<g:submitButton name="Back" value="Back"></g:submitButton>
				</fieldset>
			</g:form>
	</body>
</html>