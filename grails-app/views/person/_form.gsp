<%@ page import="multiplexonline.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="person.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${personInstance?.fullName}"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="person.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${personInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'imdbName', 'error')} ">
	<label for="imdbName">
		<g:message code="person.imdbName.label" default="Imdb Name" />
		
	</label>
	<g:textField name="imdbName" value="${personInstance?.imdbName}"/>

</div>

--%><div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${personInstance?.firstName}"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'gender', 'error')} ">
	<label for="gender">
		<g:message code="person.gender.label" default="Gender" />
		
	</label>
	<g:textField name="gender" value="${personInstance?.gender}"/>

</div>

--%><div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${personInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="person.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${personInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'mediaName', 'error')} ">
	<label for="mediaName">
		<g:message code="person.mediaName.label" default="Media Name" />
		
	</label>
	<g:textField name="mediaName" value="${personInstance?.mediaName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'avtarUrl', 'error')} ">
	<label for="avtarUrl">
		<g:message code="person.avtarUrl.label" default="Avtar Url" />
		
	</label>
	<g:textField name="avtarUrl" value="${personInstance?.avtarUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="person.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${personInstance?.dateOfBirth}" default="none" noSelection="['': '']" />

</div>

