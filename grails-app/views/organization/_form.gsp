<%@ page import="org.schema.Organization" %>



<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="organization.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${organizationInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="organization.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${organizationInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="organization.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${organizationInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="organization.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${organizationInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="organization.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${organizationInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="organization.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${organizationInstance?.sameAs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="organization.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${organizationInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="organization.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${organizationInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'legalName', 'error')} ">
	<label for="legalName">
		<g:message code="organization.legalName.label" default="Legal Name" />
		
	</label>
	<g:textField name="legalName" value="${organizationInstance?.legalName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'domainName', 'error')} ">
	<label for="domainName">
		<g:message code="organization.domainName.label" default="Domain Name" />
		
	</label>
	<g:textField name="domainName" value="${organizationInstance?.domainName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'isMediaPublisher', 'error')} ">
	<label for="isMediaPublisher">
		<g:message code="organization.isMediaPublisher.label" default="Is Media Publisher" />
		
	</label>
	<g:checkBox name="isMediaPublisher" value="${organizationInstance?.isMediaPublisher}" />

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'otherUniqueQualifier', 'error')} ">
	<label for="otherUniqueQualifier">
		<g:message code="organization.otherUniqueQualifier.label" default="Other Unique Qualifier" />
		
	</label>
	<g:textField name="otherUniqueQualifier" value="${organizationInstance?.otherUniqueQualifier}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="organization.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${organizationInstance?.type}"/>

</div>

