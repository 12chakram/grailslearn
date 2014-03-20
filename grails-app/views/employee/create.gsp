<%@ page import="com.grails.learn.Employee" %>
<%@ page import="com.grails.learn.EmployeeTechSkillSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		
		<style type="text/css">
			.footer {
			    background: none repeat scroll 0 0 #ABBF78;
			    clear: both;
			    color: #000000;
			    font-size: 0.8em;
			    margin-top: 0.5em;
			    min-height: 1em;
			    padding: 1em;
			}
			
			.buttons {
		    background-color: #EFEFEF;
		    border: medium none;
		    box-shadow: 0 0 3px 1px #AAAAAA;
		    margin: 3.5em 0 0;
		    overflow: hidden;
		    padding: 0.3em;
		}
		
		#create-employee h1 {
		    margin: -1.2em 1em -0.7em;
		    padding: 0 0.25em;
		    width: 171px;
		     color: #48802C;
		    font-size: 1.25em;
		    font-weight: normal;
		     margin: -1.2em 0 0.3em;
		}
		
		#create-employee_skill h1 {
		    margin: -1.2em 1em -0.7em;
		    padding: 0 0.25em;
		    width: 171px;
		     color: #48802C;
		    font-size: 1.25em;
		    font-weight: normal;
		     margin: -1.2em 0 0.3em;
		}
				
		</style>
		<resource:tabView />
	</head>
	<body>
		<a href="#create-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	<richui:tabView id="tabView" > 
		<richui:tabLabels> 
			<richui:tabLabel selected="${basicInformation}" title="Basic Information" />
			<richui:tabLabel selected="${techInformation}"  title="Technical information" />
	</richui:tabLabels>
	 <richui:tabContents>
	   <richui:tabContent style="overflow:scroll;"> 
  
		<div id="create-employee" class="content scaffold-create" role="main">
			<label style="margin-left:183px;color: graytext;">Basic Information</label>
			<h1><g:message code="default.create.label" args="[entityName]"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${employeeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${employeeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="saveForPreview" enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="saveforPreview" class="save" value="${message(code: 'default.button.saveForPreview.label', default: 'SaveForPreview')}" />
				</fieldset>
			</g:form>
		</div>
	</richui:tabContent>
	<richui:tabContent>
	      <div id="create-employee_skill" class="content scaffold-create" role="main">
	      <label style="margin-left:183px;color: graytext;">Technical information</label>
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${employeeTechSkillSetInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${employeeTechSkillSetInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="saveEmployee" >
				<fieldset class="form">
					<g:render template="emptechnicalInformation"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</richui:tabContent>
   </richui:tabContents>
 </richui:tabView>

	</body>
</html>
