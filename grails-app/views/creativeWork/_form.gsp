<%@ page import="org.schema.CreativeWork" %>



<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="creativeWork.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${creativeWorkInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="creativeWork.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${creativeWorkInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="creativeWork.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${creativeWorkInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="creativeWork.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${creativeWorkInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="creativeWork.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${creativeWorkInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="creativeWork.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${creativeWorkInstance?.sameAs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="creativeWork.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${creativeWorkInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'contentRating', 'error')} ">
	<label for="contentRating">
		<g:message code="creativeWork.contentRating.label" default="Content Rating" />
		
	</label>
	<g:textField name="contentRating" value="${creativeWorkInstance?.contentRating}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'datePublished', 'error')} ">
	<label for="datePublished">
		<g:message code="creativeWork.datePublished.label" default="Date Published" />
		
	</label>
	<g:datePicker name="datePublished" precision="day"  value="${creativeWorkInstance?.datePublished}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'headline', 'error')} ">
	<label for="headline">
		<g:message code="creativeWork.headline.label" default="Headline" />
		
	</label>
	<g:textField name="headline" value="${creativeWorkInstance?.headline}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'thumbnailUrl', 'error')} ">
	<label for="thumbnailUrl">
		<g:message code="creativeWork.thumbnailUrl.label" default="Thumbnail Url" />
		
	</label>
	<g:textField name="thumbnailUrl" value="${creativeWorkInstance?.thumbnailUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'creativeRoles', 'error')} ">
	<label for="creativeRoles">
		<g:message code="creativeWork.creativeRoles.label" default="Creative Roles" />
		
	</label>
	<g:select name="creativeRoles" from="${org.schema.CreativeRole.list()}" multiple="multiple" optionKey="id" size="5" value="${creativeWorkInstance?.creativeRoles*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'genres', 'error')} ">
	<label for="genres">
		<g:message code="creativeWork.genres.label" default="Genres" />
		
	</label>
	<g:select name="genres" from="${org.schema.SOGenre.list()}" multiple="multiple" optionKey="id" size="5" value="${creativeWorkInstance?.genres*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'inLanguage', 'error')} ">
	<label for="inLanguage">
		<g:message code="creativeWork.inLanguage.label" default="In Language" />
		
	</label>
	<g:textField name="inLanguage" value="${creativeWorkInstance?.inLanguage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'interactionCount', 'error')} required">
	<label for="interactionCount">
		<g:message code="creativeWork.interactionCount.label" default="Interaction Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interactionCount" type="number" value="${creativeWorkInstance.interactionCount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'isFamilyFriendly', 'error')} ">
	<label for="isFamilyFriendly">
		<g:message code="creativeWork.isFamilyFriendly.label" default="Is Family Friendly" />
		
	</label>
	<g:checkBox name="isFamilyFriendly" value="${creativeWorkInstance?.isFamilyFriendly}" />

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'isPublished', 'error')} ">
	<label for="isPublished">
		<g:message code="creativeWork.isPublished.label" default="Is Published" />
		
	</label>
	<g:checkBox name="isPublished" value="${creativeWorkInstance?.isPublished}" />

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'otherUniqueQualifier', 'error')} ">
	<label for="otherUniqueQualifier">
		<g:message code="creativeWork.otherUniqueQualifier.label" default="Other Unique Qualifier" />
		
	</label>
	<g:textField name="otherUniqueQualifier" value="${creativeWorkInstance?.otherUniqueQualifier}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'timeRequired', 'error')} required">
	<label for="timeRequired">
		<g:message code="creativeWork.timeRequired.label" default="Time Required" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeRequired" type="number" value="${creativeWorkInstance.timeRequired}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: creativeWorkInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="creativeWork.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${creativeWorkInstance?.type}"/>

</div>

