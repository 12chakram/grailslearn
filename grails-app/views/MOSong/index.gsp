
<%@ page import="org.schema.MOSong" %>

<%@ page import="org.schema.MOSong"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="portal/mainh">
<g:set var="entityName"
	value="${message(code: 'MOSong.label', default: 'MOSong')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>

	<section id="content">
		<section class="vbox">
			<section class="scrollable padder">
				<ul class="breadcrumb no-border no-radius b-b b-light pull-in">
					<li><a href="${createLink(uri: '/dashboard')}"><i
							class="fa fa-home text-success text"></i> Home</a></li>
					<li><a href="${createLink(uri: '/media')}">
					    <i class="maki-library text-success text"></i> All Media</a></li>
					<li><a href="${createLink(uri: '/SOMovie')}">
					    <i class="iconicfill-movie text-success text"></i> Movies</a></li>
					<li class="active"> <i class="fa fa-music text"></i> Songs</a></li>
					<li><a href="${createLink(uri: '/MOSong/create')}"><i
							class="fa fa-edit text-success text"></i> Create</a></li>
				</ul>
				<section class="panel panel-default">
					<div class="row wrapper-sm">
						<div class="col-xs-3 m-b-xs"></div>
						<div class="col-lg-8">
							<g:form class="form-inline" role="form">
								<div class="form-group">
									<label class="sr-only" for="name"> <g:message
											code="movie.name.label" default="Name" />
									</label>
									<g:textField class="input-sm form-control" id="name"
										name="name" maxlength="15" value="${name}" placeholder="Name" />
								</div>
								<div class="form-group">
									<label class="sr-only" for="language"> <g:message
											code="movie.language.label" default="Language" />

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
											code="movie.language.label" default="Release Year" />
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
									<th width="200"><i class="iconicfill-movie text"></i> Movie</th>
									<th width="30">Year</th>
									<th width="30"><i class="fa fa-volume-off text"></i></th>
									<th width="30"><i class="fa fa-clock-o text"></i></th>
									<th width="30"><i class="fa fa-picture-o text"></i></th>
									<th width="30"><span class="entypo-users"></span>
									<th width="30"><i class="fa fa-thumbs-o-up text"></i></th>
								</tr>
							</thead>
							<tbody>
								<g:each in="${MOSongInstanceList}" status="i" var="MOSongInstance">
									<tr>
										<td><g:link controller="${MOSongInstance.controllerName}"
												action="edit" id="${MOSongInstance.id}">
												<i class="fa fa-edit text"></i>
											</g:link></td>
										<td><g:link controller="${MOSongInstance.controllerName}"
												action="show" id="${MOSongInstance.id}">
												${fieldValue(bean: MOSongInstance, field: "name")}
											</g:link>
										</td>
										<td><g:link controller="${MOSongInstance.movie?.controllerName}"
												action="show" id="${MOSongInstance.movie?.id}">
												${fieldValue(bean: MOSongInstance.movie, field: "name")}
											</g:link>
										</td>
										<td>
											<g:formatNumber number="${MOSongInstance?.movie?.releaseYear}" format="####" />
										</td>
										<td>
											${fieldValue(bean: MOSongInstance, field: "inLanguage")}
										</td>
										<td>
											${fieldValue(bean: MOSongInstance, field: "timeRequiredText")}
										</td>
										<td><img class="carousel-image"
											src="/multiplexonline/imageIndirect/index?imageName=${MOSongInstance.thumbImageName}&category="
											height="20" /></td>
										<td><div style='float: right; text-align: right'>
												${MOSongInstance.creativeRoles.size()}
											</div></td>
										<g:if test="${MOSongInstance?.isPublished}">
											<td><i class="fa fa-thumbs-o-up text-success text"></i></td>
										</g:if>
										<g:if test="${!MOSongInstance?.isPublished}">
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
								<%--<small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of ${MOSongInstanceCount} items</small>
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
										total="${MOSongInstanceCount ?: 0}" />
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
