<%@ page import="org.schema.SOMovie" %>



<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="SOMovie.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${SOMovieInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="SOMovie.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${SOMovieInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="SOMovie.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${SOMovieInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="SOMovie.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${SOMovieInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="SOMovie.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${SOMovieInstance?.image}"/>

</div>

<g:if test="${SOMovieInstance?.image}">
<div class="fieldcontain">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="SOMovie.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${SOMovieInstance}" field="image"/></span>			
				</li>
				<li class="fieldcontain">
					<img id="target" src="${SOMovieInstance?.image}" width="800"/> 
				</li>
</div>
</g:if>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="SOMovie.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${SOMovieInstance?.sameAs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="SOMovie.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${SOMovieInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'contentRating', 'error')} ">
	<label for="contentRating">
		<g:message code="SOMovie.contentRating.label" default="Content Rating" />
		
	</label>
	<g:textField name="contentRating" value="${SOMovieInstance?.contentRating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'datePublished', 'error')} ">
	<label for="datePublished">
		<g:message code="SOMovie.datePublished.label" default="Date Published" />
		
	</label>
	<g:datePicker name="datePublished" precision="day"  value="${SOMovieInstance?.datePublished}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'headline', 'error')} ">
	<label for="headline">
		<g:message code="SOMovie.headline.label" default="Headline" />
		
	</label>
	<g:textField name="headline" value="${SOMovieInstance?.headline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'thumbnailUrl', 'error')} ">
	<label for="thumbnailUrl">
		<g:message code="SOMovie.thumbnailUrl.label" default="Thumbnail Url" />
		
	</label>
	<g:textField name="thumbnailUrl" value="${SOMovieInstance?.thumbnailUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'creativeRoles', 'error')} ">
	<label for="creativeRoles">
		<g:message code="SOMovie.creativeRoles.label" default="Creative Roles" />
		
	</label>
	<g:select name="creativeRoles" from="${org.schema.CreativeRole.list()}" multiple="multiple" optionKey="id" size="5" value="${SOMovieInstance?.creativeRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="SOMovie.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${org.schema.SOGenre.list()}" multiple="multiple" optionKey="id" size="5" value="${SOMovieInstance?.genres*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'inLanguage', 'error')} ">
	<label for="inLanguage">
		<g:message code="SOMovie.inLanguage.label" default="In Language" />
		
	</label>
	<g:textField name="inLanguage" value="${SOMovieInstance?.inLanguage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'interactionCount', 'error')} required">
	<label for="interactionCount">
		<g:message code="SOMovie.interactionCount.label" default="Interaction Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interactionCount" type="number" value="${SOMovieInstance.interactionCount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'isFamilyFriendly', 'error')} ">
	<label for="isFamilyFriendly">
		<g:message code="SOMovie.isFamilyFriendly.label" default="Is Family Friendly" />
		
	</label>
	<g:checkBox name="isFamilyFriendly" value="${SOMovieInstance?.isFamilyFriendly}" />

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'isPublished', 'error')} ">
	<label for="isPublished">
		<g:message code="SOMovie.isPublished.label" default="Is Published" />
		
	</label>
	<g:checkBox name="isPublished" value="${SOMovieInstance?.isPublished}" />

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'otherUniqueQualifier', 'error')} ">
	<label for="otherUniqueQualifier">
		<g:message code="SOMovie.otherUniqueQualifier.label" default="Other Unique Qualifier" />
		
	</label>
	<g:textField name="otherUniqueQualifier" value="${SOMovieInstance?.otherUniqueQualifier}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'releaseYear', 'error')} required">
	<label for="releaseYear">
		<g:message code="SOMovie.releaseYear.label" default="Release Year" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="releaseYear" type="number" value="${SOMovieInstance.releaseYear}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'timeRequired', 'error')} required">
	<label for="timeRequired">
		<g:message code="SOMovie.timeRequired.label" default="Time Required" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeRequired" type="number" value="${SOMovieInstance.timeRequired}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="SOMovie.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${SOMovieInstance?.type}"/>

</div>


<g:hiddenField name="x1" value="0" />
<g:hiddenField name="y1" value="0" />
<g:hiddenField name="x2" value="100" />
<g:hiddenField name="y2" value="100" />

