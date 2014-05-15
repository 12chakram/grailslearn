<%@ page import="org.schema.VideoObject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'VideoObject.label', default: 'VideoObject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<section id="content">
          <section class="vbox">
            <section class="scrollable padder">
            	<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
               		<li><a href="${createLink(uri: '/dashboard')}"><i class="fa fa-home text-success text"></i> Home</a></li>
               		<li><a href="${createLink(uri: '/media')}"><i class="maki-library text-success text"></i> All Media</a></li>
               		<li><a href="${createLink(uri: '/videoObject')}"><i class="iconicfill-movie text-success text"></i> Movies</a></li>
               		<li><a href="${createLink(uri: '/videoObject')}"><i class="entypo-video text-success text"></i> Videos</a></li>
               		<g:if test="${videoObjectInstance.creativeWork instanceof org.schema.SOMovie}">
               			<g:render template="/layouts/breadcrumbs/movie_show" model="[movie:videoObjectInstance.creativeWork]"/>
               		</g:if>
               		<g:if test="${videoObjectInstance.creativeWork instanceof org.schema.MOSong}">
               			<g:render template="/layouts/breadcrumbs/movie_show" model="[movie: videoObjectInstance.creativeWork?.movie]"/>
               			<g:render template="/layouts/breadcrumbs/song_show" model="[song: videoObjectInstance.creativeWork]"/>
               		</g:if>
               		<li class="active"><a><i class="entypo-video text"></i> ${videoObjectInstance?.name}</a></li>
              	</ul>
              <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Video Details - ${videoObjectInstance?.name}
                </header>
                <div class="panel-body">
                  <g:form class="form-horizontal" url="[resource: videoObjectInstance, action:'publish']" method="PUT">
                    <g:if test="${videoObjectInstance?.name}">
                    <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="VideoObject.name.label" default="Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="name"/></p>
                      </div>
                    </div>
                    </g:if>
                    
					<g:if test="${videoObjectInstance?.sanitizedName}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.sanitizedName.label" default="Snitized Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="sanitizedName"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.alternateName}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.alternateName.label" default="Alternate Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="alternateName"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.description}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.description.label" default="Description" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="description"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.image}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.image.label" default="image" /></label>
                      <div class="col-lg-10">
                        <span><img height="30" src="${videoObjectInstance.image}"/></span>&nbsp;&nbsp;&nbsp;
                        <span><ii:imageTag style="height:30px" class="carousel-image" indirect-imagename="${videoObjectInstance.thumbImageName}" /></span>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.sameAs}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.sameAs.label" default="Same As" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="sameAs"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.embedUrl}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.embedUrl.label" default="embedUrl" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="embedUrl"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${videoObjectInstance?.encodingFormat}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.encodingFormat.label" default="Content Rating" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="encodingFormat"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${videoObjectInstance?.expires}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.expires.label" default="Date Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:formatDate date="${videoObjectInstance?.expires}" /></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.regionsAllowed}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.regionsAllowed.label" default="regionsAllowed" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="regionsAllowed"/></p>
                      </div>
                    </div>
					</g:if>
				
				
					<g:if test="${videoObjectInstance?.offer}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.name.label" default="Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="name"/></p>
                      </div>
                    </div>
					</g:if>
					
					<g:if test="${videoObjectInstance?.publisher}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.publisher.label" default="Publisher"/></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:link controller="organization" action="show" id="${videoObjectInstance?.publisher?.id}">${videoObjectInstance?.publisher?.encodeAsHTML()}</g:link></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${videoObjectInstance?.isPublished}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.isPublished.label" default="Is Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="isPublished"/></p>
                      </div>
                    </div>
					</g:if>
					
					<g:if test="${videoObjectInstance?.requiresSubscription}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.requiresSubscription.label" default="Is Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="requiresSubscription"/></p>
                      </div>
                    </div>
					</g:if>
					
					<g:if test="${videoObjectInstance?.sourceStreamId}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.sourceStreamId.label" default="Stream Id" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="sourceStreamId"/></p>
                      </div>
                    </div> 
					</g:if>
					
					<g:if test="${videoObjectInstance?.streamSource}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.streamSource.label" default="Stream Source" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="streamSource"/></p>
                      </div>
                    </div> 
					</g:if>
					
					
					<g:if test="${videoObjectInstance?.videoFrameSize}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.videoFrameSize.label" default="Frame Size" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="videoFrameSize"/></p>
                      </div>
                    </div> 
					</g:if>
					
					
					<g:if test="${videoObjectInstance?.videoQuality}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.videoQuality.label" default="Video Qulity" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="videoQuality"/></p>
                      </div>
                    </div> 
					</g:if>
						
					<g:if test="${videoObjectInstance?.durationText}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videoObject.durationText.label" default="Time Required" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${videoObjectInstance}" field="durationText"/></p>
                      </div>
                    </div>
					</g:if>
                    
                    <div class="form-group">
                      <div class="col-sm-4 col-sm-offset-2">
                      <g:if test="${!videoObjectInstance?.isPublished}">
                        <g:submitButton class="btn btn-primary" name="publish" value="Publish" />
                      </g:if>
                      </div>
                    </div>
                  </g:form>
                </div>
              </section>
		 </section>
		  </section>
		</section>
	</body>
</html>
