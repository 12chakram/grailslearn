<%@ page import="org.schema.MOSong" %>

<g:if test="${!MOSongInstance.movie}">
<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'movie', 'error')} required">
	<label for="movie">
		<g:message code="MOSong.movie.label" default="Movie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="movie" name="movie.id" from="${org.schema.SOMovie.list()}" optionKey="id" required="" value="${MOSongInstance?.movie?.id}" class="many-to-one"/>

</div>
</g:if>
<g:if test="${MOSongInstance.movie}">
<div>
	<g:hiddenField name="movie.id" value="${MOSongInstance?.movie?.id}" class="many-to-one"/>
</div>
<div class="fieldcontain">
	<label>
		<g:message code="MOSong.movie.label" default="Movie" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="movieTitle"  readonly="readonly" value="${MOSongInstance?.movie?.name}" placeholder="Selected Movie"/>
</div>	
</g:if>

<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="MOSong.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${MOSongInstance?.name}"/>
</div>
<%-- sanitized name is calculated every time
     otherUniqueQualifier is calculated every time
     timeRequired is calculated from text every time
     type is always song for Song--%>
<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="MOSong.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${MOSongInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="MOSong.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${MOSongInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="MOSong.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${MOSongInstance?.image}"/>

</div>

<%--<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="MOSong.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${MOSongInstance?.sameAs}"/>

</div>

--%>
<%--<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="MOSong.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${MOSongInstance?.url}"/>
</div>

--%>
	<g:hiddenField name="contentRating" value="${MOSongInstance?.contentRating}"/>
	<g:hiddenField name="datePublished" value="${MOSongInstance?.datePublished}" />
	
<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'headline', 'error')} ">
	<label for="headline">
		<g:message code="MOSong.headline.label" default="Headline" />
		
	</label>
	<g:textField name="headline" value="${MOSongInstance?.headline}"/>
</div>

	<g:hiddenField name="thumbnailUrl" value="${MOSongInstance?.thumbnailUrl}"/>


<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'timeRequiredText', 'error')} ">
	<label for="timeRequiredText">
		<g:message code="MOSong.timeRequiredText.label" default="Time Required-#.##.##" />
		
	</label>
	<g:textField name="timeRequiredText" pattern="${MOSongInstance.constraints.timeRequiredText.matches}" value="${MOSongInstance?.timeRequiredText}"/>
	<label>1.29.30</label>
</div>

	<g:hiddenField name="inLanguage" value="${MOSongInstance?.inLanguage}"/><%-- Should be taken from Movie --%>

<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'creativeRoles', 'error')} ">
	<label for="creativeRoles">
		<g:message code="MOSong.creativeRoles.label" default="Creative Roles" />
		
	</label>
	<g:select name="creativeRoles" from="${MOSongInstance?.movie?.creativeRoles}" multiple="multiple" optionKey="id" size="5" value="${MOSongInstance?.creativeRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="MOSong.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${org.schema.SOGenre.list()}" multiple="multiple" optionKey="id" size="5" value="${MOSongInstance?.genres*.id}" class="many-to-many"/>

</div>

	<g:hiddenField name="interactionCount" value="${MOSongInstance.interactionCount}"/>


<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'isFamilyFriendly', 'error')} ">
	<label for="isFamilyFriendly">
		<g:message code="MOSong.isFamilyFriendly.label" default="Is Family Friendly" />
		
	</label>
	<g:checkBox name="isFamilyFriendly" value="${MOSongInstance?.isFamilyFriendly}" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOSongInstance, field: 'isPublished', 'error')} ">
	<label for="isPublished">
		<g:message code="MOSong.isPublished.label" default="Is Published" />
		
	</label>
	<g:checkBox name="isPublished" value="${MOSongInstance?.isPublished}" />

</div>

