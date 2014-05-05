<%@ page import="org.schema.CreativeWork" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
<body>
   <g:render template="invite"></g:render>
</body>
</html>