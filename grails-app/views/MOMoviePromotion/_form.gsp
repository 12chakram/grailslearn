<%@ page import="org.schema.MOMoviePromotion" %>



<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="MOMoviePromotion.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${MOMoviePromotionInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="MOMoviePromotion.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${MOMoviePromotionInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="MOMoviePromotion.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${MOMoviePromotionInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="MOMoviePromotion.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${MOMoviePromotionInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="MOMoviePromotion.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${MOMoviePromotionInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="MOMoviePromotion.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${MOMoviePromotionInstance?.sameAs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="MOMoviePromotion.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${MOMoviePromotionInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'contentRating', 'error')} ">
	<label for="contentRating">
		<g:message code="MOMoviePromotion.contentRating.label" default="Content Rating" />
		
	</label>
	<g:textField name="contentRating" value="${MOMoviePromotionInstance?.contentRating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'datePublished', 'error')} ">
	<label for="datePublished">
		<g:message code="MOMoviePromotion.datePublished.label" default="Date Published" />
		
	</label>
	<g:datePicker name="datePublished" precision="day"  value="${MOMoviePromotionInstance?.datePublished}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'headline', 'error')} ">
	<label for="headline">
		<g:message code="MOMoviePromotion.headline.label" default="Headline" />
		
	</label>
	<g:textField name="headline" value="${MOMoviePromotionInstance?.headline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'thumbnailUrl', 'error')} ">
	<label for="thumbnailUrl">
		<g:message code="MOMoviePromotion.thumbnailUrl.label" default="Thumbnail Url" />
		
	</label>
	<g:textField name="thumbnailUrl" value="${MOMoviePromotionInstance?.thumbnailUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'creativeRoles', 'error')} ">
	<label for="creativeRoles">
		<g:message code="MOMoviePromotion.creativeRoles.label" default="Creative Roles" />
		
	</label>
	<g:select name="creativeRoles" from="${org.schema.CreativeRole.list()}" multiple="multiple" optionKey="id" size="5" value="${MOMoviePromotionInstance?.creativeRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="MOMoviePromotion.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${org.schema.SOGenre.list()}" multiple="multiple" optionKey="id" size="5" value="${MOMoviePromotionInstance?.genres*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'inLanguage', 'error')} ">
	<label for="inLanguage">
		<g:message code="MOMoviePromotion.inLanguage.label" default="In Language" />
		
	</label>
	<g:textField name="inLanguage" value="${MOMoviePromotionInstance?.inLanguage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'interactionCount', 'error')} required">
	<label for="interactionCount">
		<g:message code="MOMoviePromotion.interactionCount.label" default="Interaction Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interactionCount" type="number" value="${MOMoviePromotionInstance.interactionCount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'isFamilyFriendly', 'error')} ">
	<label for="isFamilyFriendly">
		<g:message code="MOMoviePromotion.isFamilyFriendly.label" default="Is Family Friendly" />
		
	</label>
	<g:checkBox name="isFamilyFriendly" value="${MOMoviePromotionInstance?.isFamilyFriendly}" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'isPublished', 'error')} ">
	<label for="isPublished">
		<g:message code="MOMoviePromotion.isPublished.label" default="Is Published" />
		
	</label>
	<g:checkBox name="isPublished" value="${MOMoviePromotionInstance?.isPublished}" />

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'movie', 'error')} required">
	<label for="movie">
		<g:message code="MOMoviePromotion.movie.label" default="Movie" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="movie" name="movie.id" from="${org.schema.SOMovie.list()}" optionKey="id" required="" value="${MOMoviePromotionInstance?.movie?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'otherUniqueQualifier', 'error')} ">
	<label for="otherUniqueQualifier">
		<g:message code="MOMoviePromotion.otherUniqueQualifier.label" default="Other Unique Qualifier" />
		
	</label>
	<g:textField name="otherUniqueQualifier" value="${MOMoviePromotionInstance?.otherUniqueQualifier}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'timeRequired', 'error')} required">
	<label for="timeRequired">
		<g:message code="MOMoviePromotion.timeRequired.label" default="Time Required" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeRequired" type="number" value="${MOMoviePromotionInstance.timeRequired}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: MOMoviePromotionInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="MOMoviePromotion.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${MOMoviePromotionInstance?.type}"/>

</div>

