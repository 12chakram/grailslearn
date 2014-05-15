<%@ page import="multiplexonline.Movie" %>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="movie.title.label" default="Title" />
		
	</label>
	<g:textField name="title" maxlength="250" value="${movieInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'iinName', 'error')} ">
	<label for="iinName">
		<g:message code="movie.iinName.label" default="Iin Name" />
		
	</label>
	<g:textField name="iinName" maxlength="100" value="${movieInstance?.iinName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'language', 'error')} ">
	<label for="language">
		<g:message code="movie.language.label" default="Language" />
		
	</label>
	<g:textField id="language" name="language" autocomplete="true" maxlength="15" value="${movieInstance?.language}"/>

</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'runningTime', 'error')} required">
	<label for="runningTime">
		<g:message code="movie.runningTime.label" default="Running Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="runningTime" type="number" value="${movieInstance.runningTime}" required=""/>

</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'synopsis', 'error')} ">
	<label for="synopsis">
		<g:message code="movie.synopsis.label" default="Synopsis" />
		
	</label>
	<g:textField name="synopsis" value="${movieInstance?.synopsis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'tagLine', 'error')} ">
	<label for="tagLine">
		<g:message code="movie.tagLine.label" default="Tag Line" />
		
	</label>
	<g:textArea name="tagLine" cols="40" rows="5" maxlength="1000" value="${movieInstance?.tagLine}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'releaseDate', 'error')} ">
	<label for="releaseDate">
		<g:message code="movie.releaseDate.label" default="Release Date" />
		
	</label>
	<g:datePicker name="releaseDate" precision="day"  value="${movieInstance?.releaseDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'releaseYear', 'error')} ">
	<label for="releaseYear">
		<g:message code="movie.releaseYear.label" default="Release Year" />
		
	</label>
	<g:field name="releaseYear" type="number" value="${movieInstance.releaseYear}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'lpHires', 'error')} ">
	<label for="lpHires">
		<g:message code="movie.lpHires.label" default="Lp Hires" />
		
	</label>
	<g:textField name="lpHires" value="${movieInstance?.lpHires}"/>

</div>

<g:if test="${movieInstance?.lpHires}">
<div class="fieldcontain">
				<li class="fieldcontain">
					<span id="lpHires-label" class="property-label"><g:message code="movie.lpHires.label" default="Lp Hires" /></span>
					
						<span class="property-value" aria-labelledby="lpHires-label"><g:fieldValue bean="${movieInstance}" field="lpHires"/></span>			
				</li>
				<% 
					String extension = movieInstance.lpHires.substring((movieInstance.lpHires.length() -3), movieInstance.lpHires.length());
					String imageName = movieInstance.title + "." + extension; 
				%>
				<li class="fieldcontain">
					<img id="target" src="${movieInstance?.lpHires}" width="800"/> 
				</li>
</div>
</g:if>


<%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'lpMedres', 'error')} ">
	<label for="lpMedres">
		<g:message code="movie.lpMedres.label" default="Lp Medres" />
		
	</label>
	<g:textField name="lpMedres" value="${movieInstance?.lpMedres}"/>

</div>

--%><%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaKind', 'error')} ">
	<label for="mediaKind">
		<g:message code="movie.mediaKind.label" default="Media Kind" />
		
	</label>
	<g:textField name="mediaKind" value="${movieInstance?.mediaKind}"/>

</div>

--%><%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'ppHiRes', 'error')} ">
	<label for="ppHiRes">
		<g:message code="movie.ppHiRes.label" default="Pp Hi Res" />
		
	</label>
	<g:textField name="ppHiRes" value="${movieInstance?.ppHiRes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'ppMedRes', 'error')} ">
	<label for="ppMedRes">
		<g:message code="movie.ppMedRes.label" default="Pp Med Res" />
		
	</label>
	<g:textField name="ppMedRes" value="${movieInstance?.ppMedRes}"/>

</div>

--%><div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'publishedDate', 'error')} ">
	<label for="publishedDate">
		<g:message code="movie.publishedDate.label" default="Published Date" />
		
	</label>
	<g:datePicker name="publishedDate" precision="day"  value="${movieInstance?.publishedDate}" default="none" noSelection="['': '']" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'usReleaseDate', 'error')} ">
	<label for="usReleaseDate">
		<g:message code="movie.usReleaseDate.label" default="Us Release Date" />
		
	</label>
	<g:datePicker name="usReleaseDate" precision="day"  value="${movieInstance?.usReleaseDate}" default="none" noSelection="['': '']" />

</div>

--%><div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="movie.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${multiplexonline.Genre.list()}" multiple="multiple" optionKey="id" optionValue="genre" size="5" value="${movieInstance?.genres*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaRoles', 'error')} ">
	<label for="actors">
		<g:message code="movie.actors.label" default="Actors" />
		
	</label>
	<g:textField name="actors"   placeholder="Add Actors"/>
</div>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaRoles', 'error')} ">
	<label for="actresses">
		<g:message code="movie.actresses.label" default="Actresses" />
		
	</label>
	<g:textField name="actresses"  value="${actresses}" placeholder="Add Actresses"/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaRoles', 'error')} ">
	<label for="producers">
		<g:message code="movie.producers.label" default="Producers" />
		
	</label>
	<g:textField name="producers"  value="${producers}" placeholder="Add Producers"/>
	<%--<g:select name="actors" from="${allProducers}" multiple="multiple" optionKey="id" size="5" value="${movieInstance?.mediaRoles*.id}" class="many-to-many"/>--%>
</div>
	
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaRoles', 'error')} ">
	<label for="director">
		<g:message code="movie.director.label" default="Director" />
		
	</label>
	<g:textField name="director"  value="${director}" placeholder="Add Director"/>
	<%--<g:select name="director" from="${allDirectors}" optionKey="id" optionValue="person" size="5" value="${movieInstance?.mediaRoles*.id}" class="many-to-many"/>--%>
</div>

<%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaRights', 'error')} ">
	<label for="mediaRights">
		<g:message code="movie.mediaRights.label" default="Media Rights" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${movieInstance?.mediaRights?}" var="m">
    <li><g:link controller="mediaRight" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mediaRight" action="create" params="['movie.id': movieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mediaRight.label', default: 'MediaRight')])}</g:link>
</li>
</ul>

</div>

--%>
<%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mediaType', 'error')} required">
	<label for="mediaType">
		<g:message code="movie.mediaType.label" default="Media Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="mediaType" name="mediaType.id" from="${multiplexonline.MediaType.list()}" optionKey="id" optionValue="type" required="" value="${movieInstance?.mediaType?.id}" class="many-to-one"/>

</div>

--%><%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'movieClips', 'error')} ">
	<label for="movieClips">
		<g:message code="movie.movieClips.label" default="Movie Clips" />
		
	</label>
	<g:select name="movieClips" from="${multiplexonline.MovieClip.list()}" multiple="multiple" optionKey="id" size="5" value="${movieInstance?.movieClips*.id}" class="many-to-many"/>

</div>

--%><div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="movie.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${movieInstance?.published}" />

</div>

<%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="movie.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" value="${fieldValue(bean: movieInstance, field: 'rating')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'ratingCount', 'error')} required">
	<label for="ratingCount">
		<g:message code="movie.ratingCount.label" default="Rating Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ratingCount" type="number" value="${movieInstance.ratingCount}" required=""/>

</div>

--%>

<%--<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'songs', 'error')} ">
	<label for="songs">
		<g:message code="movie.songs.label" default="Songs" />
		
	</label>
	<g:select name="songs" from="${multiplexonline.Song.list()}" multiple="multiple" optionKey="id" size="5" value="${movieInstance?.songs*.id}" class="many-to-many"/>

</div>

--%>

<g:hiddenField name="x1" value="0" />
    <g:hiddenField name="y1" value="0" />
    <g:hiddenField name="x2" value="100" />
    <g:hiddenField name="y2" value="100" />