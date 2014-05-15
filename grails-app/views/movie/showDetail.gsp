
<%@ page import="multiplexonline.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mo_main">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body id="page1">
	      
<!--==============================header=================================-->
	<g:render template="header"/>
<!--==============================content================================-->
    <g:render template="content"/>
    
	</body>
</html>
