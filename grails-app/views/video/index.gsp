
<%@ page import="multiplexonline.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-video" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-video" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="mediaRight.media.title" title="${message(code: 'video.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="mediaRight.publisher.name" title="${message(code: 'video.publisher.label', default: 'Publisher')}" />
						
						<g:sortableColumn property="streamSource" title="${message(code: 'video.streamSource.label', default: 'Stream Source')}" />
					
						<g:sortableColumn property="subTitleLanguage" title="${message(code: 'video.subTitleLanguage.label', default: 'ST Language')}" />
					
						<g:sortableColumn property="runningTime" title="${message(code: 'video.runningTime.label', default: 'Running Time')}" />
					
						<g:sortableColumn property="sourceStreamId" title="${message(code: 'video.sourceStreamId.label', default: 'Source Stream Id')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${videoInstanceList}" status="i" var="videoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${videoInstance.id}">${fieldValue(bean: videoInstance, field: "mediaRight.media.title")}</g:link></td>
					
						<td>${fieldValue(bean: videoInstance, field: "mediaRight.publisher.name")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "streamSource")}</td>
					
						<td><g:formatBoolean boolean="${videoInstance.subTitleLanguage}" /></td>
					
						<td>${fieldValue(bean: videoInstance, field: "runningTime")}</td>
					
						<td>${fieldValue(bean: videoInstance, field: "sourceStreamId")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${videoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
