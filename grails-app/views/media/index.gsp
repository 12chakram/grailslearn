<%@ page import="org.schema.CreativeWork" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="portal/mainh">
		<g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
		<%--<style type="text/css">
		.paginateButtons {
			margin: 3px 0px 3px 0px;
		}
		.pagination a {
			padding: 2px 4px 2px 4px;
			background-color: #A4A4A4;
			border: 1px solid #EEEEEE;
			text-decoration: none;
			font-size: 10pt;
			font-variant: small-caps;
			color: #EEEEEE;
		}
		.pagination a:hover {
			text-decoration: underline;
			background-color: #888888;
			border: 1px solid #AA4444;
			color: #FFFFFF;
		}
     </style>
	--%>

	<style type="text/css">

	  .pagination {
		  margin: 0px 0 !important;
	  }
	  .currentStep {
        background-color: #8EC165 !important;
        border-color: #8EC165 !important;
        color: #FFFFFF !important !important;
    }
    .fa {
       display: inline !important;
    }
	</style>
	</head>
	<body>
	
	<section id="content">
          <section class="vbox">
            <section class="scrollable padder">
            	<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
               		<li><a href="${createLink(uri: '/dashboard')}"><i class="fa fa-home text-success text"></i> Home</a></li>
               		<li class="active"><i class="maki-library"></i> All Media</li>
              	</ul>
              <section class="panel panel-default">
                <div class="row wrapper-sm">
                  <div class="col-xs-3 m-b-xs">
                  <g:form class="form-inline" role="form" url="[action:'create']">
                    <g:select class="input-sm form-control input-s-sm inline v-middle" id="type" name='type' from="['Movie','Song','Clip','Promotion']"/>
                    <g:submitButton class="btn btn-sm btn-default" name="create" value="Create" action="create"  /> 
                    </g:form>               
                  </div>
                  <div class="col-lg-8">
                    <g:form class="form-inline" role="form">
		                <div class="form-group">
		                	<label class="sr-only" for="name">
								<g:message code="movie.name.label" default="Name" />
							</label>
							<g:textField class="input-sm form-control" id="name" name="name" maxlength="15" value="${name}" placeholder="Name"/>
				        </div>
				        <div class="form-group">
				          <label class="sr-only" for="language">
								<g:message code="movie.language.label" default="Language" />
			
							</label>
							<g:select class="input-sm form-control input-s-sm inline v-middle" id="language" name="language" from="['Telugu','Tamil','Hindi']" value="${language}" noSelection="${['':'Language..']}" placeholder="Language"/>
				        </div>
				        <div class="checkbox m-l-xs m-r-xs">
				          <label>
				            <g:checkBox id="published" name="published" value="${published}" /> Published
				          </label>
				        </div>
				        <div class="form-group">
					        <label class="sr-only"  for="releaseYear">
								<g:message code="movie.language.label" default="Release Year" />
							</label>
							<g:select class="input-sm form-control input-s-sm inline v-middle" name="releaseYear" from="${2014..1940}" type="number" value="${releaseYear}" noSelection="${['':'Release Year..']}"/>
				        </div>
				        <g:submitButton class="btn btn-sm btn-default" name="filter" value="${message(code: 'default.button.filter.label', default: 'Filter')}" />  
                    	<input class="btn btn-sm btn-default" type='reset' value='Reset' />
                    </g:form>
                  </div>
                </div>
                <div class="table-responsive">
                  <table class="table table-striped b-t b-light">
               		 <thead>
                      <tr>
                      	<th width="10"></th>
                        <th width="10"></th>
                        <th><i class="fa fa-info-circle text"></i>Name</th>
                        <th width="10"><i class="text"></i>Type</th>
                        <th width="30"><i class="fa fa-volume-off text"></i>Language</th>
                        <th width="35"><i class="fa fa-clock-o"></i>Duration</th>
                        <th width="30"><i class="fa fa-picture-o text"></i></th>
                        <th width="40"><i class="fa fa-users"></i>Cast&Crew</th>
                        <th width="30"><i class="fa fa-thumbs-o-up text"></i>Published</th>
                      </tr>
                    </thead>
                    <tbody>
                      <g:set scope="request" var="start" value="${0}"></g:set>
                      <g:set scope="request" var="end" value="${0}"></g:set>
                       <g:each in="${mediaInstanceList}" status="i" var="mediaInstance">
                             <tr>
                             	<td>
									<g:link controller="${mediaInstance.controllerName}" action="edit" id="${mediaInstance.id}"><i class="fa fa-edit text-success  text"></i></g:link>
								</td>
								<td>
									<g:link controller="videoObject" action="create" params="${[mediaId:mediaInstance.id]}"><i class="entypo-video text-success  text"></i></g:link>
								</td>
								<td>
									<g:link controller="${mediaInstance.controllerName}" action="show" id="${mediaInstance.id}">${fieldValue(bean: mediaInstance, field: "name")}</g:link>
								</td>
								<td>${fieldValue(bean: mediaInstance, field: "type")}</td>
							    <td>${fieldValue(bean: mediaInstance, field: "inLanguage")}</td>
								<td>${fieldValue(bean: mediaInstance, field: "timeRequiredText")}</td>
								<td>
									<img class="carousel-image" src="/multiplexonline/imageIndirect/index?imageName=${mediaInstance.thumbImageName}&category=" height="20"/>
								</td>
								<td><div style='float: right; text-align: right'>${mediaInstance.creativeRoles.size()}</div></td>
								<g:if test="${mediaInstance?.isPublished}">
								<td><i class="fa fa-thumbs-o-up text-success text"></i></td>
								</g:if>
								<g:if test="${!mediaInstance?.isPublished}">
								<td><i class="fa fa-thumbs-o-down text-danger text"></i></td>
								</g:if>
							</tr>
						</g:each>
                    </tbody>
                  </table>
                </div>
                <footer class="panel-footer">
                  <div class="row">
                  <div>
                    <div class="col-sm-4">
                      <small class="text-muted inline m-t-sm m-b-sm">showing ${offset} -${endRecord} of ${mediaInstanceCount} items</small>
                    </div>
                    <div class="col-sm-6 text-right text-center-xs" style="width: 60% !important;">
                       <div class="pagination">                
                        <ul class="pagination pagination-sm m-t-none m-b-none">
                         <li>
								<% 
									def parameters = new HashMap();
									parameters.putAt("language", pageScope.getProperty('language'))
									parameters.putAt("releaseYear", pageScope.getProperty('releaseYear'))
									parameters.putAt("title", pageScope.getProperty('title'))
									parameters.putAt("offset",10)
								 %>
								<g:paginate params="${parameters}" total="${mediaInstanceCount ?: 0}"/>
							</li>
							</ul>
						</div>
						</div>
					  </div>
                    </div>
                </footer>
              </section>
			</section>
		  </section>
        </section>
	</body>
</html>