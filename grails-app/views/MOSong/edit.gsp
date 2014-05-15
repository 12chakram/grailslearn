<%@ page import="org.schema.MOSong" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'MOSong.label', default: 'MOSong')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
               		<li><g:link controller="${MOSongInstance?.movie?.controllerName}" action="show" id="${MOSongInstance?.movie?.id}"><i class="fa fa-film text-success text" ></i> ${MOSongInstance?.movie?.name}</g:link></li>
               		<li><g:link controller="${MOSongInstance?.controllerName}" action="show" id="${MOSongInstance?.id}"><i class="fa fa-music text-success text" ></i> ${MOSongInstance?.name}</g:link></li>
               		<li class="active"><a><i class="fa fa-edit text"></i> ${MOSongInstance?.name}</a></li>
              	</ul>
                <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Edit Song - ${MOSongInstance?.name} - ${MOSongInstance?.movie?.name}
                </header>
                <g:form class="form-horizontal" url="[resource:MOSongInstance, action:'update']" method="PUT" >
                <div class="panel-body">
					<g:hiddenField name="version" value="${MOSongInstance?.version}" />
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
        <g:render template="/layouts/select2/movie"/>
	    <g:render template="/layouts/select2/creativeRoles"/>
	    <g:render template="/layouts/select2/genres"/>
	    <g:render template="/layouts/portal/jcrop/jcrop_script"/>
	</body>
</html>
