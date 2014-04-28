
<%@ page import="org.schema.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-organization" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list organization">
			
				<g:if test="${organizationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="organization.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${organizationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.sanitizedName}">
				<li class="fieldcontain">
					<span id="sanitizedName-label" class="property-label"><g:message code="organization.sanitizedName.label" default="Sanitized Name" /></span>
					
						<span class="property-value" aria-labelledby="sanitizedName-label"><g:fieldValue bean="${organizationInstance}" field="sanitizedName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.alternateName}">
				<li class="fieldcontain">
					<span id="alternateName-label" class="property-label"><g:message code="organization.alternateName.label" default="Alternate Name" /></span>
					
						<span class="property-value" aria-labelledby="alternateName-label"><g:fieldValue bean="${organizationInstance}" field="alternateName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="organization.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${organizationInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="organization.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${organizationInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.sameAs}">
				<li class="fieldcontain">
					<span id="sameAs-label" class="property-label"><g:message code="organization.sameAs.label" default="Same As" /></span>
					
						<span class="property-value" aria-labelledby="sameAs-label"><g:fieldValue bean="${organizationInstance}" field="sameAs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="organization.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${organizationInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="organization.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${organizationInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.legalName}">
				<li class="fieldcontain">
					<span id="legalName-label" class="property-label"><g:message code="organization.legalName.label" default="Legal Name" /></span>
					
						<span class="property-value" aria-labelledby="legalName-label"><g:fieldValue bean="${organizationInstance}" field="legalName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.domainName}">
				<li class="fieldcontain">
					<span id="domainName-label" class="property-label"><g:message code="organization.domainName.label" default="Domain Name" /></span>
					
						<span class="property-value" aria-labelledby="domainName-label"><g:fieldValue bean="${organizationInstance}" field="domainName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.isMediaPublisher}">
				<li class="fieldcontain">
					<span id="isMediaPublisher-label" class="property-label"><g:message code="organization.isMediaPublisher.label" default="Is Media Publisher" /></span>
					
						<span class="property-value" aria-labelledby="isMediaPublisher-label"><g:formatBoolean boolean="${organizationInstance?.isMediaPublisher}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.otherUniqueQualifier}">
				<li class="fieldcontain">
					<span id="otherUniqueQualifier-label" class="property-label"><g:message code="organization.otherUniqueQualifier.label" default="Other Unique Qualifier" /></span>
					
						<span class="property-value" aria-labelledby="otherUniqueQualifier-label"><g:fieldValue bean="${organizationInstance}" field="otherUniqueQualifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="organization.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${organizationInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:organizationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${organizationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
