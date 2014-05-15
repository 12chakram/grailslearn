<%@ page import="multiplexonline.Song" %>



<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="song.title.label" default="Title" />
		
	</label>
	<g:textField name="title" maxlength="250" value="${songInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'iinName', 'error')} ">
	<label for="iinName">
		<g:message code="song.iinName.label" default="Iin Name" />
		
	</label>
	<g:textField name="iinName" maxlength="100" value="${songInstance?.iinName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'language', 'error')} ">
	<label for="language">
		<g:message code="song.language.label" default="Language" />
		
	</label>
	<g:textField name="language" maxlength="15" value="${songInstance?.language}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'lpHires', 'error')} ">
	<label for="lpHires">
		<g:message code="song.lpHires.label" default="Lp Hires" />
		
	</label>
	<g:textField name="lpHires" value="${songInstance?.lpHires}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="song.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${multiplexonline.Genre.list()}" multiple="multiple" optionKey="id" optionValue="genre" size="5" value="${songInstance?.genres*.id}" class="many-to-many"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'mediaRights', 'error')} ">
	<label for="mediaRights">
		<g:message code="song.mediaRights.label" default="Media Rights" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${songInstance?.mediaRights?}" var="m">
    <li><g:link controller="mediaRight" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mediaRight" action="create" params="['song.id': songInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mediaRight.label', default: 'MediaRight')])}</g:link>
</li>
</ul>


</div>

--%><div class="fieldcontain ${hasErrors(bean: songInstance, field: 'mediaRoles', 'error')} ">
	<label for="mediaRoles">
		<g:message code="song.mediaRoles.label" default="Media Roles" />
		
	</label>
	<g:select name="mediaRoles" from="${movie?.mediaRoles}" multiple="multiple" optionKey="id" size="5" value="${songInstance?.mediaRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="song.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${songInstance?.published}" />

</div>

<div class="fieldcontain ${hasErrors(bean: songInstance, field: 'runningTime', 'error')} required">
	<label for="runningTime">
		<g:message code="song.runningTime.label" default="Running Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="runningTime" type="number" value="${songInstance.runningTime}" required=""/>

</div>

