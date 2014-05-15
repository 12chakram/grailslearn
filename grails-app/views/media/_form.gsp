<%@ page import="multiplexonline.Media" %>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="media.title.label" default="Title" />
		
	</label>
	<g:textField name="title" maxlength="200" value="${mediaInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'iinName', 'error')} ">
	<label for="iinName">
		<g:message code="media.iinName.label" default="Iin Name" />
		
	</label>
	<g:textField name="iinName" maxlength="200" value="${mediaInstance?.iinName}"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'lpHires', 'error')} ">
	<label for="lpHires">
		<g:message code="media.lpHires.label" default="Lp Hires" />
		
	</label>
	<g:textField name="lpHires" value="${mediaInstance?.lpHires}"/>

</div>

--%>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="media.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${multiplexonline.Genre.list()}" multiple="multiple" optionKey="id" optionValue="genre" size="5" value="${mediaInstance?.genres*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'mediaRoles', 'error')} ">
	<label for="mediaRoles">
		<g:message code="media.mediaRoles.label" default="Media Roles" />
		
	</label>
	<g:select name="mediaRoles" from="${movieInstance?.mediaRoles}" multiple="multiple" optionKey="id" size="5" value="${mediaInstance?.mediaRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="media.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${mediaInstance?.published}" />

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'runningTime', 'error')} required">
	<label for="runningTime">
		<g:message code="media.runningTime.label" default="Running Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="runningTime" type="number" value="${mediaInstance.runningTime}" required=""/>

</div>

