<%@ page import="org.schema.MOMovieClip" %>



<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="MOMovieClip.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${MOMovieClipInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="MOMovieClip.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${MOMovieClipInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="MOMovieClip.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${MOMovieClipInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="MOMovieClip.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${MOMovieClipInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="MOMovieClip.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${MOMovieClipInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="MOMovieClip.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${MOMovieClipInstance?.sameAs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="MOMovieClip.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${MOMovieClipInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'contentRating', 'error')} ">
	<label for="contentRating">
		<g:message code="MOMovieClip.contentRating.label" default="Content Rating" />
		
	</label>
	<g:textField name="contentRating" value="${MOMovieClipInstance?.contentRating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'datePublished', 'error')} ">
	<label for="datePublished">
		<g:message code="MOMovieClip.datePublished.label" default="Date Published" />
		
	</label>
	<g:datePicker name="datePublished" precision="day"  value="${MOMovieClipInstance?.datePublished}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'headline', 'error')} ">
	<label for="headline">
		<g:message code="MOMovieClip.headline.label" default="Headline" />
		
	</label>
	<g:textField name="headline" value="${MOMovieClipInstance?.headline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'thumbnailUrl', 'error')} ">
	<label for="thumbnailUrl">
		<g:message code="MOMovieClip.thumbnailUrl.label" default="Thumbnail Url" />
		
	</label>
	<g:textField name="thumbnailUrl" value="${MOMovieClipInstance?.thumbnailUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'creativeRoles', 'error')} ">
	<label for="creativeRoles">
		<g:message code="MOMovieClip.creativeRoles.label" default="Creative Roles" />
		
	</label>
	<g:select name="creativeRoles" from="${org.schema.CreativeRole.list()}" multiple="multiple" optionKey="id" size="5" value="${MOMovieClipInstance?.creativeRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="MOMovieClip.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${org.schema.SOGenre.list()}" multiple="multiple" optionKey="id" size="5" value="${MOMovieClipInstance?.genres*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'inLanguage', 'error')} ">
	<label for="inLanguage">
		<g:message code="MOMovieClip.inLanguage.label" default="In Language" />
		
	</label>
	<g:textField name="inLanguage" value="${MOMovieClipInstance?.inLanguage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'interactionCount', 'error')} required">
	<label for="interactionCount">
		<g:message code="MOMovieClip.interactionCount.label" default="Interaction Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interactionCount" type="number" value="${MOMovieClipInstance.interactionCount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'isFamilyFriendly', 'error')} ">
	<label for="isFamilyFriendly">
		<g:message code="MOMovieClip.isFamilyFriendly.label" default="Is Family Friendly" />
		
	</label>
	<g:checkBox name="isFamilyFriendly" value="${MOMovieClipInstance?.isFamilyFriendly}" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'isPublished', 'error')} ">
	<label for="isPublished">
		<g:message code="MOMovieClip.isPublished.label" default="Is Published" />
		
	</label>
	<g:checkBox name="isPublished" value="${MOMovieClipInstance?.isPublished}" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'movie', 'error')} required">
	<label for="movie">
		<g:message code="MOMovieClip.movie.label" default="Movie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="movie" name="movie.id" from="${org.schema.SOMovie.list()}" optionKey="id" required="" value="${MOMovieClipInstance?.movie?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'otherUniqueQualifier', 'error')} ">
	<label for="otherUniqueQualifier">
		<g:message code="MOMovieClip.otherUniqueQualifier.label" default="Other Unique Qualifier" />
		
	</label>
	<g:textField name="otherUniqueQualifier" value="${MOMovieClipInstance?.otherUniqueQualifier}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'timeRequired', 'error')} required">
	<label for="timeRequired">
		<g:message code="MOMovieClip.timeRequired.label" default="Time Required" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeRequired" type="number" value="${MOMovieClipInstance.timeRequired}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMovieClipInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="MOMovieClip.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${MOMovieClipInstance?.type}"/>

</div>

