<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'SOMovie.label', default: 'SOMovie')}" />
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
               		<li class="active"><a><i class="fa fa-edit text"></i> Create</a></li>
              	</ul>
                <section class="panel panel-default">
                <header class="panel-heading font-bold">
                  Create Movie
                </header>
                <g:form class="form-horizontal" url="[resource:SOMovieInstance, action:'save']" method="POST" >
                <div class="panel-body">
                    <g:render template="form"/>
                </div>
                <footer class="save panel-footer text-right bg-light lter">
               		<g:actionSubmit class="btn btn-success btn-s-xs" action="save" value="${message(code: 'default.button.save.label', default: 'Save')}" />
                </footer>
                </g:form>
              </section>
            </section>
          </section>
        </section>
	   <g:render template="/layouts/select2/creativeRolesTextField"/>
	   <g:render template="/layouts/select2/genres"/>
	   <g:render template="/layouts/portal/jcrop/jcrop_script"/>
	</body>
</html>
