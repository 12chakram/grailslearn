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
		<%--<a href="#edit-SOMovie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-SOMovie" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${SOMovieInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${SOMovieInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:SOMovieInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${SOMovieInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	--%>
	   <g:render template="/layouts/select2/creativeRoles"/>
	   <g:render template="/layouts/select2/genres"/>
	   <g:render template="/layouts/portal/jcrop/jcrop_script"/>
	</body>
</html>
