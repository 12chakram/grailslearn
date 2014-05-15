<%@ page import="org.schema.MOSong" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'MOSong.label', default: 'MOSong')}" />
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
               		<li><a href="${createLink(uri: '/MOSong')}"><i class="fa fa-music text-success text"></i> Songs</a></li>
               		<li class="active"><a><i class="fa fa-edit text"></i> Edit</a></li>
              	</ul>
                <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Create Song
                </header>
                <g:form class="form-horizontal" url="[resource:MOSongInstance, action:'save']" method="POST" >
                <div class="panel-body">
					<div class="form-group pull-in clearfix">
						<div class="col-sm-12">
						    <label for="movie">
								<g:message code="MOSong.movie.label" default="Select Movie" />
						    </label>
							<%--<g:select style="min-width:260px" data-required="true"
							          id="movie" name="movie" from="${org.schema.SOMovie.list()}" optionKey="id" size="5" 
							          value="${MOSongInstance?.movie?.id}"/>
					    --%>
					        <g:textField style="min-width:260px" data-required="true"
							          id="movie" name="movie"  optionKey="id" size="5" 
							          value="${MOSongInstance?.movie?.id}"/>
					    </div>
					</div>
                    <g:render template="form"/>
                </div>
                <footer class="save panel-footer text-right bg-light lter">
               		<g:actionSubmit class="btn btn-success btn-s-xs" action="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </footer>
                </g:form>
              </section>
            </section>
          </section>
        </section>
        <g:render template="/layouts/select2/movie"/>
	    <g:render template="/layouts/select2/creativeRoles"/>
	    <g:render template="/layouts/select2/genres"/>
	    <g:render template="/layouts/portal/jcrop/jcrop_script"/>
	</body>
</html>
