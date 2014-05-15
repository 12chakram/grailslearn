<%@ page import="multiplexonline.Publisher" %>



<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'domain', 'error')} ">
	<label for="domain">
		<g:message code="publisher.domain.label" default="Domain" />
		
	</label>
	<g:textField name="domain" value="${publisherInstance?.domain}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: publisherInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="publisher.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${publisherInstance?.name}"/>

</div>

