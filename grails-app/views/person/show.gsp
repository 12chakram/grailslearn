
<%@ page import="multiplexonline.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-person" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-person" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list person">
			
				<g:if test="${personInstance?.fullName}">
				<li class="fieldcontain">
					<span id="fullName-label" class="property-label"><g:message code="person.fullName.label" default="Full Name" /></span>
					
						<span class="property-value" aria-labelledby="fullName-label"><g:fieldValue bean="${personInstance}" field="fullName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="person.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${personInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.imdbName}">
				<li class="fieldcontain">
					<span id="imdbName-label" class="property-label"><g:message code="person.imdbName.label" default="Imdb Name" /></span>
					
						<span class="property-value" aria-labelledby="imdbName-label"><g:fieldValue bean="${personInstance}" field="imdbName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="person.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="person.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${personInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="person.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.mediaName}">
				<li class="fieldcontain">
					<span id="mediaName-label" class="property-label"><g:message code="person.mediaName.label" default="Media Name" /></span>
					
						<span class="property-value" aria-labelledby="mediaName-label"><g:fieldValue bean="${personInstance}" field="mediaName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="person.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${personInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.avtarUrl}">
				<li class="fieldcontain">
					<span id="avtarUrl-label" class="property-label"><g:message code="person.avtarUrl.label" default="Avtar Url" /></span>
					
						<span class="property-value" aria-labelledby="avtarUrl-label"><g:fieldValue bean="${personInstance}" field="avtarUrl"/></span>
					
				</li>
				</g:if>
				<g:if test="${personInstance?.avtarUrl}">
				<li class="fieldcontain">
					<span id="avtar-label" class="property-label"><g:message code="person.Avtar.label" default="Avtar" /></span>
					
						<span class="property-value" aria-labelledby="avtar-label"><ii:imageTag indirect-imagename="${personInstance.avtarImageName}"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="person.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${personInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
