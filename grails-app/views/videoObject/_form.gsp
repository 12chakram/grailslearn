<%@ page import="org.schema.VideoObject" %>

<g:hiddenField name="creativeWork.id" value="${videoObjectInstance?.creativeWork?.id}" />

<div class="form-group pull-in clearfix">
  	<div class="col-sm-4">
		<g:textField class="form-control parsley-validated parsley-error" data-required="true" 
				     name="name" value="${videoObjectInstance?.name}"
				     placeholder="Name"/>   
	</div> 
	<div class="col-sm-4">
		<g:textField class="form-control" name="alternateName" value="${videoObjectInstance?.alternateName}"
				     placeholder="Alternate Name"/>    
	</div><%-- 
	 <div class="col-sm-4">
		<g:textField class="form-control" name="headline" value="${videoObjectInstance?.headline}"
				     placeholder="Headline"/>    
	</div> 
--%></div>  

<div class="form-group pull-in clearfix">
	<div class="col-sm-12">
		<g:textField class="form-control" 
				     name="description" value="${videoObjectInstance?.description}"
				     placeholder="Description"/>
    </div>
</div>

<%--<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'embedUrl', 'error')} ">
	<label for="embedUrl">
		<g:message code="videoObject.embedUrl.label" default="Embed Url" />
		
	</label>
	<g:textField name="embedUrl" value="${videoObjectInstance?.embedUrl}"/>

</div>
// Generated from the other fields such as video source and id etc.
--%><%--<div class="fieldcontain ${hasErrors(bean: videoObjectInstance, field: 'encodingFormat', 'error')} ">
	<label for="encodingFormat">
		<g:message code="videoObject.encodingFormat.label" default="Encoding Format" />
		
	</label>
	<g:textField name="encodingFormat" value="${videoObjectInstance?.encodingFormat}"/>

</div>
H.264/ Flash / Apple / HLS etc..
--%>

<div class="form-group pull-in clearfix">
  	<div class="col-sm-2">
  		<g:select class="input-sm form-control input-s-sm inline v-middle parsley-validated parsley-error"
  		          name="streamSource" from="['Youtube','Vimeo','Vibble']" value="${videoObjectInstance?.streamSource}" noSelection="${['':'Stream Source..']}" 
  		          placeholder="Stream Source" data-required="true"/>   
	</div> 
	<div class="col-sm-3">
		<g:textField class="form-control parsley-validated parsley-error" data-required="true" 
				     name="sourceStreamId" value="${videoObjectInstance?.sourceStreamId}"
				     placeholder="Stream Source ID"/>   
	</div> 
	<div class="col-sm-2">
  		<g:select class="input-sm form-control input-s-sm inline v-middle parsley-validated parsley-error"
  		          name="videoFrameSize" from="['320p','480p','720p', '1080p']" value="${videoObjectInstance?.videoFrameSize}" noSelection="${['':'Frame Size..']}" 
  		          placeholder="Frame Size" />   
	</div>
	<div class="col-sm-2">
		<g:textField class="form-control parsley-validated parsley-error" data-required="true" 
				     name="durationText" value="${videoObjectInstance?.durationText}"
				     placeholder="Duration"/>   
	</div> 
	<div class="col-sm-2">
  		<g:select class="input-sm form-control input-s-sm inline v-middle parsley-validated parsley-error" data-required="true" 
  		          name="regionsAllowed" from="['US','India','Non US', 'Non India']" value="${videoObjectInstance?.regionsAllowed}" noSelection="${['':'Region..']}" 
  		          placeholder="Region" />   
	</div>
</div>

<div class="form-group pull-in clearfix">
  	<div class="col-sm-3">
  		<g:select class="input-sm form-control input-s-sm inline v-middle parsley-validated parsley-error" data-required="true" 
  		          id="publisher" name="publisher.id" from="${org.schema.Organization.findAllByIsMediaPublisher(true)}" optionKey="id" value="${videoObjectInstance?.publisher?.id}" noSelection="${['':'Publisher..']}" 
  		          placeholder="Publisher" data-required="true"/>   
	</div> 
	<div class="col-sm-3">
  		<g:select class="input-sm form-control input-s-sm inline v-middle parsley-validated parsley-error" data-required="true" 
  		          name="offer" from="${org.schema.Offer.list()}" optionKey="id" optionValue="description" value="${videoObjectInstance?.offer?.id}" noSelection="${['':'Offer..']}" 
  		          placeholder="Offer" data-required="true"/>   
	</div> 
	<div class="col-sm-6">
        <%--<g:field class="input-sm input-s datepicker-input form-control parsley-validated parsley-error" data-required="true"
                  name="expires" size="16" type="text"  value="${videoObjectInstance?.expires}" data-date-format="dd-mm-yyyy"
                  placeholder="Expires" /> 
                  <div class="fieldcontain ${hasErrors(bean: personInstance, field: 'dateOfBirth', 'error')} ">
	
		--%><g:datePicker name="expires" precision="day"  value="${videoObjectInstance?.expires}" default="none" noSelection="['': '']" />

</div>  
	</div>
</div>

