<%@ page import="multiplexonline.Video" %>

<g:render template="selectedMovieFields"/>
<div class="fieldcontain ${hasErrors(bean: video, field: 'description', 'error')} required">
	<label for="sourceStreamId">
		<g:message code="video.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${video?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaRight, field: 'media', 'error')} ">
	<label for="publisher">
		<g:message code="publisher.label" default="Publisher" />
		
	</label>
	<g:select name="publisher" from="${multiplexonline.Publisher.list()}" optionKey="id" optionValue="name" size="5" value="${mediaRight?.publisher}"  placeholder="Select Publisher"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaRight, field: 'monetizeOption', 'error')} ">
	<label for="monetizeOption">
		<g:message code="monetizeOption.label" default="MonetizeOption" />
		
	</label>
	<g:select name="monetizeOption" from="${multiplexonline.MonetizeOption.list()}" optionKey="id" optionValue="description"  value="${mediaRight?.monetizeOption}"  placeholder="Select MonetizeOption"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mediaRight, field: 'geoFilter', 'error')}">
	<label for="geoFilter">
		<g:message code="mediaRight.geoFilter.label" default="Geo Filter" />
		
	</label>
	<g:select name="geoFilter" from="['Global', 'US Only', 'India Only', 'Exclude US', 'Exclude India']"  value="${mediaRight?.geoFilter}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: video, field: 'streamSource', 'error')} ">
	<label for="streamSource">
		<g:message code="video.streamSource.label" default="Stream Source" />
		
	</label>
	<g:select name="streamSource" from="['Youtube', 'Vibble', 'Metacafe']"  value="${video?.streamSource}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: video, field: 'quality', 'error')} ">
	<label for="quality">
		<g:message code="video.quality.label" default="Quality" />
		
	</label>
	<g:select name="quality" from="['SD', 'HD', 'Full HD']"  value="${video?.quality}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: video, field: 'subTitleLanguage', 'error')} ">
	<label for="streamSource">
		<g:message code="video.subTitleLanguage.label" default="Subtile Langage" />
		
	</label>
	<g:select name="subTitleLanguage" from="['','English', 'Spanish']"  value="${video?.subTitleLanguage}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: video, field: 'runningTime', 'error')} required">
	<label for="runningTime">
		<g:message code="video.runningTime.label" default="Running Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="runningTime" type="number" value="${video?.runningTime}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: video, field: 'sourceStreamId', 'error')} ">
	<label for="sourceStreamId">
		<g:message code="video.sourceStreamId.label" default="Source Stream Id" />
		
	</label>
	<g:textField name="sourceStreamId" value="${video?.sourceStreamId}"/>

</div>
