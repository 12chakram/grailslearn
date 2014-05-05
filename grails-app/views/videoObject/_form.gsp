<%@ page import="org.schema.VideoObject" %>



<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="videoObject.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${videoObjectInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'sanitizedName', 'error')} ">
	<label for="sanitizedName">
		<g:message code="videoObject.sanitizedName.label" default="Sanitized Name" />
		
	</label>
	<g:textField name="sanitizedName" value="${videoObjectInstance?.sanitizedName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'alternateName', 'error')} ">
	<label for="alternateName">
		<g:message code="videoObject.alternateName.label" default="Alternate Name" />
		
	</label>
	<g:textField name="alternateName" value="${videoObjectInstance?.alternateName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="videoObject.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${videoObjectInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="videoObject.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${videoObjectInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'sameAs', 'error')} ">
	<label for="sameAs">
		<g:message code="videoObject.sameAs.label" default="Same As" />
		
	</label>
	<g:textField name="sameAs" value="${videoObjectInstance?.sameAs}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="videoObject.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${videoObjectInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'embedUrl', 'error')} ">
	<label for="embedUrl">
		<g:message code="videoObject.embedUrl.label" default="Embed Url" />
		
	</label>
	<g:textField name="embedUrl" value="${videoObjectInstance?.embedUrl}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'encodingFormat', 'error')} ">
	<label for="encodingFormat">
		<g:message code="videoObject.encodingFormat.label" default="Encoding Format" />
		
	</label>
	<g:textField name="encodingFormat" value="${videoObjectInstance?.encodingFormat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'duration', 'error')} required">
	<label for="duration">
		<g:message code="videoObject.duration.label" default="Duration" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="duration" type="number" value="${videoObjectInstance.duration}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'expires', 'error')} ">
	<label for="expires">
		<g:message code="videoObject.expires.label" default="Expires" />
		
	</label>
	<g:datePicker name="expires" precision="day"  value="${videoObjectInstance?.expires}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'regionsAllowed', 'error')} ">
	<label for="regionsAllowed">
		<g:message code="videoObject.regionsAllowed.label" default="Regions Allowed" />
		
	</label>
	<g:textField name="regionsAllowed" value="${videoObjectInstance?.regionsAllowed}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'uploadDate', 'error')} ">
	<label for="uploadDate">
		<g:message code="videoObject.uploadDate.label" default="Upload Date" />
		
	</label>
	<g:datePicker name="uploadDate" precision="day"  value="${videoObjectInstance?.uploadDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'caption', 'error')} ">
	<label for="caption">
		<g:message code="videoObject.caption.label" default="Caption" />
		
	</label>
	<g:textField name="caption" value="${videoObjectInstance?.caption}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'creativeWork', 'error')} required">
	<label for="creativeWork">
		<g:message code="videoObject.creativeWork.label" default="Creative Work" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="creativeWork" name="creativeWork.id" from="${org.schema.CreativeWork.list()}" optionKey="id" required="" value="${videoObjectInstance?.creativeWork?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'interactionCount', 'error')} required">
	<label for="interactionCount">
		<g:message code="videoObject.interactionCount.label" default="Interaction Count" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interactionCount" type="number" value="${videoObjectInstance.interactionCount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'offer', 'error')} required">
	<label for="offer">
		<g:message code="videoObject.offer.label" default="Offer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="offer" name="offer.id" from="${org.schema.Offer.list()}" optionKey="id" required="" value="${videoObjectInstance?.offer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'otherUniqueQualifier', 'error')} ">
	<label for="otherUniqueQualifier">
		<g:message code="videoObject.otherUniqueQualifier.label" default="Other Unique Qualifier" />
		
	</label>
	<g:textField name="otherUniqueQualifier" value="${videoObjectInstance?.otherUniqueQualifier}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'publisher', 'error')} required">
	<label for="publisher">
		<g:message code="videoObject.publisher.label" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="publisher" name="publisher.id" from="${org.schema.Organization.list()}" optionKey="id" required="" value="${videoObjectInstance?.publisher?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'requiresSubscription', 'error')} ">
	<label for="requiresSubscription">
		<g:message code="videoObject.requiresSubscription.label" default="Requires Subscription" />
		
	</label>
	<g:checkBox name="requiresSubscription" value="${videoObjectInstance?.requiresSubscription}" />

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'sourceStreamId', 'error')} ">
	<label for="sourceStreamId">
		<g:message code="videoObject.sourceStreamId.label" default="Source Stream Id" />
		
	</label>
	<g:textField name="sourceStreamId" value="${videoObjectInstance?.sourceStreamId}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'streamSource', 'error')} ">
	<label for="streamSource">
		<g:message code="videoObject.streamSource.label" default="Stream Source" />
		
	</label>
	<g:textField name="streamSource" value="${videoObjectInstance?.streamSource}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="videoObject.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${videoObjectInstance?.type}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'videoFrameSize', 'error')} ">
	<label for="videoFrameSize">
		<g:message code="videoObject.videoFrameSize.label" default="Video Frame Size" />
		
	</label>
	<g:textField name="videoFrameSize" value="${videoObjectInstance?.videoFrameSize}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'videoQuality', 'error')} ">
	<label for="videoQuality">
		<g:message code="videoObject.videoQuality.label" default="Video Quality" />
		
	</label>
	<g:textField name="videoQuality" value="${videoObjectInstance?.videoQuality}"/>

</div>

