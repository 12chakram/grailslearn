
<%@ page import="org.schema.SOMovie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'SOMovie.label', default: 'SOMovie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<section id="content">
          <section class="vbox">
            <section class="scrollable padder">
            	<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
               		<li><a href="${createLink(uri: '/dashboard')}"><i class="fa fa-home text-success text"></i> Home</a></li>
               		<li><a href="${createLink(uri: '/media')}"><i class="maki-library text-success text"></i> All Media</a></li>
               		<li><a href="${createLink(uri: '/SOMovie')}"><i class="iconicfill-movie text-success text"></i> Movies</a></li>
               		<li class="active"><i class="fa fa-film"></i> ${SOMovieInstance?.name}</li>
               		<li><g:link controller="${SOMovieInstance.controllerName}" action="edit" id="${SOMovieInstance.id}"><i class="fa fa-edit text-success text"></i> Edit</g:link></li>
              	</ul>
              <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Movie Details - ${SOMovieInstance?.name}
                </header>
                <div class="panel-body">
                  <form class="form-horizontal">
                    <g:if test="${SOMovieInstance?.name}">
                    <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.name.label" default="Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="name"/></p>
                      </div>
                    </div>
                    </g:if>
                    
					<g:if test="${SOMovieInstance?.sanitizedName}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.sanitizedName.label" default="Snitized Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="sanitizedName"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.alternateName}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.alternateName.label" default="Alternate Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="alternateName"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.description}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.description.label" default="Description" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="description"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.image}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.image.label" default="image" /></label>
                      <div class="col-lg-10">
                        <span><img height="30" src="${SOMovieInstance.image}"/></span>&nbsp;&nbsp;&nbsp;
                        <span><ii:imageTag style="height:30px" class="carousel-image" indirect-imagename="${SOMovieInstance.thumbImageName}" /></span>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.sameAs}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.sameAs.label" default="Same As" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="sameAs"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.url}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.url.label" default="URL" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="url"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${SOMovieInstance?.contentRating}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.contentRating.label" default="Content Rating" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="contentRating"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${SOMovieInstance?.datePublished}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.datePublished.label" default="Date Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:formatDate date="${SOMovieInstance?.datePublished}" /></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.headline}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.headline.label" default="Headline" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="headline"/></p>
                      </div>
                    </div>
					</g:if>
				
					<%--<g:if test="${SOMovieInstance?.thumbnailUrl}">
					<li class="fieldcontain">
						<span id="thumbnailUrl-label" class="property-label"><g:message code="SOMovie.thumbnailUrl.label" default="Thumbnail Url" /></span>
						
							<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${SOMovieInstance}" field="thumbnailUrl"/></span>
						
					</li>
					</g:if>
				
					--%>
					<g:if test="${SOMovieInstance?.creativeRoles}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.creativeRoles.label" default="Creative Roles" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${SOMovieInstance.creativeRoles}" var="g">
							<span class="btn btn-default btn-xs">${g?.encodeAsHTML()}&nbsp;&nbsp;&nbsp;</span>
							</g:each>
                        </p>
                      </div>
                    </div>
					</g:if>
				
				   <g:if test="${SOMovieInstance?.genres}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.genres.label" default="Genre" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${SOMovieInstance.genres}" var="g">
							<span class="btn btn-default btn-xs" >${g?.encodeAsHTML()}&nbsp;&nbsp;&nbsp;</span>
							</g:each>
                        </p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${SOMovieInstance?.inLanguage}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.inLanguage.label" default="Language" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="inLanguage"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.interactionCount}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.name.label" default="Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="name"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.isFamilyFriendly}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.interactionCount.label" default="Interaction Count"/></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="interactionCount"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.isPublished}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.isPublished.label" default="Is Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="isPublished"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.movieClips}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.movieClips.label" default="Movie Clips" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${SOMovieInstance.movieClips}" var="g">
							<span class="property-value" aria-labelledby="creativeRoles">${g?.name?.encodeAsHTML()}, </span>
							</g:each>
                        </p>
                      </div>
                    </div>   
					</g:if>
				
					<g:if test="${SOMovieInstance?.otherUniqueQualifier}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.otherUniqueQualifier.label" default="Other Unique Qualifier" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="otherUniqueQualifier"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${SOMovieInstance?.releaseYear}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.releaseYear.label" default="Release Year" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="releaseYear"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${SOMovieInstance?.songs}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.songs.label" default="Songs" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${SOMovieInstance.songs}" var="g">
								<span aria-labelledby="songs">
								<g:link  class="btn btn-default btn-xs" controller="${g?.controllerName}" action="show" id="${g.id}"><i class="fa fa-music text"></i> ${g?.name?.encodeAsHTML()}</g:link>
								&nbsp;&nbsp;&nbsp;
								</span>
							</g:each>
                        </p>
                      </div>
                    </div>  
					</g:if>
					<g:if test="${videos}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="videos.label" default="Videos" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${videos}" var="g">
								<span aria-labelledby="songs">
								<g:link  class="btn btn-default btn-xs" controller="videoObject" action="show" id="${g.id}"><i class="entypo-video text"></i>&nbsp;${g?.name?.encodeAsHTML()}</g:link>
								&nbsp;&nbsp;&nbsp;
								</span>
							</g:each>
                        </p>
                      </div>
                    </div>  
					</g:if>
				
					<g:if test="${SOMovieInstance?.timeRequiredText}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="SOMovie.timeRequiredText.label" default="Time Required" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${SOMovieInstance}" field="timeRequiredText"/></p>
                      </div>
                    </div>
					</g:if>
					
					<%--<g:if test="${SOMovieInstance?.type}">
					<li class="fieldcontain">
						<span id="type-label" class="property-label"><g:message code="SOMovie.type.label" default="Type" /></span>
						
							<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${SOMovieInstance}" field="type"/></span>
						
					</li>
					</g:if>
                    
                    --%><div class="form-group">
                      <div class="col-sm-4 col-sm-offset-2">
                        <button type="submit" class="btn btn-default">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                      </div>
                    </div>
                  </form>
                </div>
              </section>
		 </section>
		  </section>
		</section>
	</body>
</html>
