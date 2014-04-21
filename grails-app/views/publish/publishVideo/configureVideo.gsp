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
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="Save" value="Save"></g:submitButton>
		    		<g:submitButton name="Back" value="Back"></g:submitButton>
				</fieldset>
			</g:form>
	</body>
</html>