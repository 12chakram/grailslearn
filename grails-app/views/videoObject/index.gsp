
<%@ page import="org.schema.VideoObject" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="portal/mainh">
<g:set var="entityName"
	value="${message(code: 'VideoObject.label', default: 'VideoObject')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<section id="content">
		<section class="vbox">
			<section class="scrollable padder">
				<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
					<li><a href="${createLink(uri: '/dashboard')}"><i
							class="fa fa-home text-success text"></i> Home</a></li>
					<li><a href="${createLink(uri: '/media')}"><i
							class="maki-library text-success text"></i> All Media</a></li>
					<li class="active"><i
						class="entypo-video text"></i> Videos</a></li>
					
				</ul>
				<section class="panel panel-default">
					<div class="row wrapper-sm">
						<div class="col-xs-3 m-b-xs"></div>
						<div class="col-lg-8">
							<g:form class="form-inline" role="form">
								<div class="form-group">
									<label class="sr-only" for="name"> <g:message
											code="media.name.label" default="Name" />
									</label>
									<g:textField class="input-sm form-control" id="name"
										name="name" maxlength="15" value="${name}" placeholder="Name" />
								</div>
								<div class="form-group">
									<label class="sr-only" for="language"> <g:message
											code="media.language.label" default="Language" />

									</label>
									<g:select
										class="input-sm form-control input-s-sm inline v-middle"
										id="language" name="language"
										from="['Telugu','Tamil','Hindi']" value="${language}"
										noSelection="${['':'Language..']}" placeholder="Language" />
								</div>
								<div class="checkbox m-l-xs m-r-xs">
									<label> <g:checkBox id="published" name="published"
											value="${published}" /> Published
									</label>
								</div>
								<div class="form-group">
									<label class="sr-only" for="releaseYear"> <g:message
											code="media.language.label" default="Release Year" />
									</label>
									<g:select
										class="input-sm form-control input-s-sm inline v-middle"
										name="releaseYear" from="${2014..1940}" type="number"
										value="${releaseYear}" noSelection="${['':'Release Year..']}" />
								</div>
								<g:submitButton class="btn btn-sm btn-default" name="filter"
									value="${message(code: 'default.button.filter.label', default: 'Filter')}" />
								<input class="btn btn-sm btn-default" type='reset' value='Reset' />
							</g:form>
						</div>
					</div>
					<div class="table-responsive">
						<table class="table table-striped b-t b-light">
							<thead>
								<tr>
									<th width="10"></th>
									<th><i class="fa fa-info-circle text"></i> Name</th>
									<th width="250">Media</th>
									<th width="30"><i class="fa fa-volume-off text"></i></th>
									<th width="30"><i class="fa fa-clock-o text"></i></th>
									<%--<th width="30"><i class="fa fa-picture-o text"></i></th>
									<th width="30"><span class="entypo-users"></span>--%>
									<th width="30"><i class="fa fa-thumbs-o-up text"></i></th>
									
								</tr>
							</thead>
							<tbody>
								<g:each in="${videoObjectInstanceList}" status="i" var="videoObjectInstance">
									<tr>
										<td><g:link controller="VideoObject"
												action="edit" id="${videoObjectInstance.id}">
												<i class="fa fa-edit text"></i>
											</g:link></td>
										<td><g:link controller="VideoObject"
												action="show" id="${videoObjectInstance.id}">
												${fieldValue(bean: videoObjectInstance, field: "name")}
											</g:link>
										</td>
										<td>
											<g:link controller="${videoObjectInstance?.creativeWork?.controllerName}"
												action="show" id="${videoObjectInstance?.creativeWork?.id}">
												${fieldValue(bean: videoObjectInstance?.creativeWork, field: "name")}
											</g:link>
										</td>
										<td>
											${fieldValue(bean: videoObjectInstance?.creativeWork, field: "inLanguage")}
										</td>
										<td>
											${fieldValue(bean: videoObjectInstance, field: "durationText")}
										</td>
										<%--<td><img class="carousel-image"
											src="/multiplexonline/imageIndirect/index?imageName=${SOMovieInstance.thumbImageName}&category="
											height="20" /></td>
										<td><div style='float: right; text-align: right'>
												${SOMovieInstance.creativeRoles.size()}
											</div>
										</td>--%>
										<g:if test="${videoObjectInstance?.isPublished}">
											<td><i class="fa fa-thumbs-o-up text-success text"></i></td>
										</g:if>
										<g:if test="${!videoObjectInstance?.isPublished}">
											<td><i class="fa fa-thumbs-o-down text-danger text"></i></td>
										</g:if>
									</tr>
								</g:each>
							</tbody>
						</table>
					</div>
					<footer class="panel-footer">
						<div class="row">
							<div class="col-sm-6 hidden-xs row">
								<div>
									<i class="fa fa-volume-off text"> Language</i>
								</div>
								<div>
									<i class="fa fa-clock-o text"></i> Duration
								</div>
								<div>
									<i class="entypo-users"></i> Cast & Crew
								</div>
								<div>
									<i class="fa fa-thumbs-o-up text"></i> Published
								</div>
							</div>
							<div class="col-sm-4 text-center">
								<%--<small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of ${SOMovieInstanceCount} items</small>
                    --%>
							</div>
							<div class="col-sm-4 text-right text-center-xs">
								<div class="pagination">
									<% 
										def parameters = new HashMap();
										parameters.putAt("language", pageScope.getProperty('language'))
										parameters.putAt("releaseYear", pageScope.getProperty('releaseYear'))
										parameters.putAt("name", pageScope.getProperty('name'))
										parameters.putAt("published", pageScope.getProperty('published'))
									 %>
									<g:paginate params="${parameters}"
										total="${SOMovieInstanceCount ?: 0}" />
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
