<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'VideoObject.label', default: 'VideoObject')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<section id="content">
          <section class="vbox">
            <section class="scrollable padder">
            	<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
               		<li><a href="${createLink(uri: '/dashboard')}"><i class="fa fa-home text-success text"></i> Home</a></li>
               		<li><a href="${createLink(uri: '/media')}"><i class="maki-library text-success text"></i> All Media</a></li>
               		<li><a href="${createLink(uri: '/SOMovie')}"><i class="iconicfill-movie text-success text"></i> Movies</a></li>
               		<li><a href="${createLink(uri: '/videoObject')}"><i class="entypo-video text-success text"></i> Videos</a></li>
               		<g:if test="${videoObjectInstance.creativeWork instanceof org.schema.SOMovie}">
               			<g:render template="/layouts/breadcrumbs/movie_show" model="[movie:videoObjectInstance.creativeWork]"/>
               		</g:if>
               		<g:if test="${videoObjectInstance.creativeWork instanceof org.schema.MOSong}">
               			<g:render template="/layouts/breadcrumbs/movie_show" model="[movie: videoObjectInstance.creativeWork?.movie]"/>
               			<g:render template="/layouts/breadcrumbs/song_show" model="[song: videoObjectInstance.creativeWork]"/>
               		</g:if>
               		<li class="active"><a><i class="fa fa-edit text"></i> Video</a></li>
              	</ul>
                <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Edit Video
                </header>
                <g:form class="form-horizontal" url="[resource: videoObjectInstance, action:'update']" method="PUT" >
                <div class="panel-body">
                	<g:hiddenField name="version" value="${videoObjectInstance?.version}" />
                    <g:render template="form"/>
                </div>
                <footer class="save panel-footer text-right bg-light lter">
               		<g:actionSubmit class="btn btn-success btn-s-xs" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </footer>
                </g:form>
              </section>
            </section>
          </section>
        </section>
     </body>
</html>
