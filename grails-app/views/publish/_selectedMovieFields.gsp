<div class="fieldcontain">
	<label for="videoType">
		<g:message code="video.videoType.label" default="VideoType" />
		
	</label>
	<g:textField name="videoType"  readonly="readonly" value="${videoType}" placeholder="Video Type"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'title', 'error')}">
	<label for="movieInstance">
		<g:message code="movie.label" default="Movie" />
	</label>
	<g:textField name="movieTitle"  readonly="readonly" value="${movieInstance?.title}" placeholder="Selected Movie"/>
</div>
