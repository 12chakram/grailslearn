
<%@ page import="org.schema.MOSong" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'MOSong.label', default: 'MOSong')}" />
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
               		<li><a href="${createLink(uri: '/MOSong')}"><i class="fa fa-music text-success text"></i> Songs</a></li>
               		<li><g:link controller="${MOSongInstance.movie.controllerName}" action="show" id="${MOSongInstance.movie.id}"><i class="iconicfill-movie text-success text"></i> ${MOSongInstance.movie.name}</g:link></li>
               		<li class="active"><i class="fa fa-music"></i> ${MOSongInstance?.name}</li>
               		<li><g:link controller="${MOSongInstance.controllerName}" action="edit" id="${MOSongInstance.id}"><i class="fa fa-edit text-success text"></i> Edit</g:link></li>
              	</ul>
              <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Song Details - ${MOSongInstance?.name}
                </header>
                <div class="panel-body">
                  <form class="form-horizontal">
                    <g:if test="${MOSongInstance?.name}">
                    <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.name.label" default="Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="name"/></p>
                      </div>
                    </div>
                    </g:if>
                    
					<g:if test="${MOSongInstance?.sanitizedName}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.sanitizedName.label" default="Snitized Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="sanitizedName"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.alternateName}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.alternateName.label" default="Alternate Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="alternateName"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.description}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.description.label" default="Description" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="description"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.image}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.image.label" default="image" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="image"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.sameAs}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.sameAs.label" default="Same As" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="sameAs"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.url}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.url.label" default="URL" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="url"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${MOSongInstance?.contentRating}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.contentRating.label" default="Content Rating" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="contentRating"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${MOSongInstance?.datePublished}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.datePublished.label" default="Date Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:formatDate date="${MOSongInstance?.datePublished}" /></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.headline}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.headline.label" default="Headline" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="headline"/></p>
                      </div>
                    </div>
					</g:if>
				
					<%--<g:if test="${MOSongInstance?.thumbnailUrl}">
					<li class="fieldcontain">
						<span id="thumbnailUrl-label" class="property-label"><g:message code="MOSong.thumbnailUrl.label" default="Thumbnail Url" /></span>
						
							<span class="property-value" aria-labelledby="thumbnailUrl-label"><g:fieldValue bean="${MOSongInstance}" field="thumbnailUrl"/></span>
						
					</li>
					</g:if>
				
					--%>
					<g:if test="${MOSongInstance?.creativeRoles}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.creativeRoles.label" default="Creative Roles" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${MOSongInstance.creativeRoles}" var="g">
							<span class="label bg-dark" aria-labelledby="creativeRoles">${g?.encodeAsHTML()}&nbsp;&nbsp;&nbsp;</span>
							</g:each>
                        </p>
                      </div>
                    </div>
					</g:if>
				
				   <g:if test="${MOSongInstance?.genres}">
					<div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.genres.label" default="Genre" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static">
                        	<g:each in="${MOSongInstance.genres}" var="g">
							<span class="label bg-warning" aria-labelledby="genres">${g?.encodeAsHTML()}&nbsp;&nbsp;&nbsp;</span>
							</g:each>
                        </p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${MOSongInstance?.inLanguage}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.inLanguage.label" default="Language" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="inLanguage"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.interactionCount}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.name.label" default="Name" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="name"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.isFamilyFriendly}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.interactionCount.label" default="Interaction Count"/></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="interactionCount"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.isPublished}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.isPublished.label" default="Is Published" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="isPublished"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.otherUniqueQualifier}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.otherUniqueQualifier.label" default="Other Unique Qualifier" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="otherUniqueQualifier"/></p>
                      </div>
                    </div> 
					</g:if>
				
					<g:if test="${MOSongInstance.movie?.releaseYear}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.releaseYear.label" default="Release Year" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance.movie}" field="releaseYear"/></p>
                      </div>
                    </div>
					</g:if>
				
					<g:if test="${MOSongInstance?.timeRequiredText}">
					 <div class="form-group">
                      <label class="col-lg-2 control-label"><g:message code="MOSong.timeRequiredText.label" default="Time Required" /></label>
                      <div class="col-lg-10">
                        <p class="form-control-static"><g:fieldValue bean="${MOSongInstance}" field="timeRequiredText"/></p>
                      </div>
                    </div>
					</g:if>
                  </form>
                </div>
              </section>
		 </section>
		  </section>
		</section>
	</body>
</html>
