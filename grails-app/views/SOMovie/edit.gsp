<%@ page import="org.schema.SOMovie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'SOMovie.label', default: 'SOMovie')}" />
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
               		<li><g:link controller="${SOMovieInstance.controllerName}" action="show" id="${SOMovieInstance.id}"><i class="fa fa-film text-success text" ></i> ${SOMovieInstance.name}</g:link></li>
               		<li class="active"><a><i class="fa fa-edit text"></i> Edit</a></li>
              	</ul>
                <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Edit Movie - ${SOMovieInstance?.name}
                </header>
                <g:form class="form-horizontal" url="[resource:SOMovieInstance, action:'update']" method="PUT" >
                <div class="panel-body">
                  
					<g:hiddenField name="version" value="${SOMovieInstance?.version}" />
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
	   <g:render template="/layouts/select2/creativeRolesTextField" model="[creativeRoles: SOMovieInstance.creativeRoles]"/>
	   <g:render template="/layouts/select2/genres"/>
	   <g:render template="/layouts/portal/jcrop/jcrop_script"/>
	</body>
</html>
