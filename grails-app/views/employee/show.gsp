
<%@ page import="com.grails.learn.Employee" %>
<%@ page import="com.grails.learn.EmployeeTechSkillSet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<g:set var="employeeName" value="${employeeInstance?.employeeName}"/>
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		
  <style type="text/css">
		.content-form-left {
			background: none repeat scroll 0 0 #F8F8FF;
			border-radius: 3px;
			height: 350px;
			margin: -15px auto 0 10px;
			padding: 10px 20px;
			width: auto;
		}
		
		.content-form-right {
			background: none repeat scroll 0 0 rgb(248, 248, 255);
			border-radius: 3px;
			float: right;
			height: 350px;
			margin: -370px 24px 0 0;
			padding: 10px 20px;
			width: 560px;
		}
		
		.fieldcontain .property-label {
			float: none;
			margin-left: 210px;
		}
		
		.fieldcontain .property-value {
			display: block;
			margin-left: 33%;
			margin-top: -18px;
		}
		
		.footer {
			background: none repeat scroll 0 0 rgb(171, 191, 120);
			clear: both;
			color: rgb(0, 0, 0);
			font-size: 0.8em;
			margin-top: 2.4em;
			min-height: 1em;
			padding: 1em;
		}
		
		fieldset,.property-list {
			border: medium solid #008000;
			height: 99%;
			margin: -18.2em -1.75em 2em;
			position: relative;
			width: 82.4em;
		}
		
		.property-list .fieldcontain {
			list-style: none outside none;
			margin-left: 17px;
			overflow: hidden;
		}
		
		textarea {
			height: 26px;
			overflow: auto;
			vertical-align: top;
			width: 183px;
			text-align: center;
		}
		
		.skillSet {
			margin: -19% -6% -7% 47%;
		}
		
		.yui-navset .yui-content,.yui-navset .yui-content div {
			height: 290px;
			overflow-x: hidden;
			overflow-y: auto;
		}
		
		.buttons {
			background-color: rgb(239, 239, 239);
			border: medium none;
			box-shadow: 0 0 3px 1px rgb(170, 170, 170);
			margin: 28em 0 0;
			overflow: hidden;
			padding: 0.3em;
			width: 87.4em;
		}
		
		html.accordion-menu-js dt.a-m-t {
			cursor: pointer;
			width: 84em;
		}
		
		dl.accordion-menu dd.a-m-d .bd {
			border: 1px solid rgb(170, 170, 170);
			height: auto;
			padding: 0.5em 0 0;
			width: 35em;
		}
		
		dl.accordion-menu dt.a-m-t {
			-moz-border-bottom-colors: none;
			-moz-border-left-colors: none;
			-moz-border-right-colors: none;
			-moz-border-top-colors: none;
			background: none repeat scroll 0 0 rgb(171, 191, 120) !important;
			border-color: rgb(223, 223, 223) rgb(34, 34, 34) rgb(34, 34, 34)
				rgb(223, 223, 223);
			border-image: none;
			border-style: solid;
			border-width: 2px;
			color: rgb(68, 68, 68);
			margin: 0;
			padding: 0.3em 1em;
		}
		
		html.accordion-menu-js dt.a-m-t-expand {
			background: none repeat scroll 0 0 #C0C0C0;
			border-left-color: #222222;
			color: #000000;
			width: 85em;
		}
		
		dl.accordion-menu dd.a-m-d .bd {
			border: 1px solid #AAAAAA;
			padding: 0.5em;
			width: 86em;
		}
		
		.content h1 {
			border-bottom: 1px solid #CCCCCC;
			margin: 0.5em 0 0.3em;
			padding: 0 0.25em;
		}
		
		.errors,.message {
			font-size: 0.8em;
			line-height: 1.5;
			margin: 0.5em 0;
			padding: 0.25em;
		}
		#1{
		display: block;
		}
</style>
		<resource:tabView />
		<resource:accordion skin="default"/>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	<richui:accordion>
	   <richui:accordionItem id="1" caption="Employee Information">
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1>
			   <g:if test="${flash.message}">
			     <div class="message" role="status">${flash.message}</div>
			  </g:if>
			  <g:else>
			   <g:message code="default.show.label" args="[employeeName]" default=" "/>
			  </g:else>
			</h1>
			<div id="content_left" class="content-form-left">
			<div id="" role="">
				 <img class="avatar" src="${createLink(controller:'employee', action:'getEmployeeImg')}" style="width:17%;" />
			 </div>
			<ol class="property-list employee">
				<g:if test="${employeeInstance?.empid}">
				<li class="fieldcontain">
					<span id="empid-label" class="property-label"><g:message code="employee.empid.label" default="Empid" /></span>
					<span class="property-value" aria-labelledby="empid-label"><g:fieldValue bean="${employeeInstance}" field="empid"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.first_Name}">
				<li class="fieldcontain">
					<span id="first_Name-label" class="property-label"><g:message code="employee.first_Name.label" default="First Name" /></span>
						<span class="property-value" aria-labelledby="first_Name-label"><g:fieldValue bean="${employeeInstance}" field="first_Name"/></span>
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.last_Name}">
				<li class="fieldcontain">
					<span id="last_Name-label" class="property-label"><g:message code="employee.last_Name.label" default="Last Name" /></span>
						<span class="property-value" aria-labelledby="last_Name-label"><g:fieldValue bean="${employeeInstance}" field="last_Name"/></span>
				</li>
				</g:if>
				
				<g:if test="${employeeInstance?.departmentName}">
				<li class="fieldcontain">
					<span id="departmentName-label" class="property-label"><g:message code="employee.departmentName.label" default="Department" /></span>
						<span class="property-value" aria-labelledby="departmentName-label"><g:fieldValue bean="${employeeInstance}" field="departmentName"/></span>
				</li>
				</g:if>
				
				<g:if test="${employeeInstance?.joingDate}">
				<li class="fieldcontain">
					<span id="joingDate-label" class="property-label"><g:message code="employee.joingDate.label" default="Joined" /></span>
						<span class="property-value" aria-labelledby="joingDate-label"><g:formatDate format="yyyy-MM-dd" date="${employeeInstance?.joingDate}"/></span>
				</li>
				</g:if>
				
				<g:if test="${employeeInstance?.bossid}">
				<li class="fieldcontain">
					<span id="bossid-label" class="property-label"><g:message code="employee.joingDate.label" default="Current Manager" /></span>
						<span class="property-value" aria-labelledby="bossid-label"><g:fieldValue bean="${employeeInstance}" field="bossid"/></span>
				</li>
				</g:if>
				
				<g:if test="${employeeInstance?.jobid}">
				<li class="fieldcontain">
					<span id="jobid-label" class="property-label"><g:message code="employee.jobid.label" default="JobTitle" /></span>
						<span class="property-value" aria-labelledby="jobid-label"><g:fieldValue bean="${employeeInstance}" field="jobid"/></span>
				</li>
				</g:if>
				
				<g:textArea name="myField" value="Senior software engineer" readOnly="true" escapeHtml="true"/>
				
			<div id="divtabView" style="height: 50%; margin-left: 581px;margin-top: -284px;width:52.7%;">	
				<richui:tabView id="tabView" > 
				<richui:tabLabels> 
				    <richui:tabLabel selected="true" title="Skill Set" />
				    <richui:tabLabel title="TECHNICAL SKILLS" />
				    <richui:tabLabel title="Projects" />
		    </richui:tabLabels>

                        <richui:tabContents><%-- 
                        
                        <richui:tabContent> 
                        
                        <h1>Skill Set</h1> 
                            
                            <g:textArea name="skillSet"  value="${employeeInstance.skillSet}" readOnly="true" style="height: 92px; width: 544px;background: none repeat scroll 0 0 rgb(171, 191, 120);bottom: 0;left: 0;right: 0;top: 0;"/>

					 </richui:tabContent>

                      --%>
                      <richui:tabContent style="overflow:scroll;"> 
					  
					   <h1>TECHNICAL SKILLS</h1>
					   
					   <richui:accordion>
    						<richui:accordionItem id="1" caption="Platforms">
    						  <span class="property-value" aria-labelledby="departmentName-label"><g:fieldValue bean="${empSkillInstance}" field="platforms"/></span>
   						</richui:accordionItem>
   						
					   <richui:accordionItem id="2" caption="Programming Languages">
   							     ${empSkillInstance?.programming}
   						</richui:accordionItem>
					    
					      <richui:accordionItem id="3" caption="J2EETechnologies">
   							      ${empSkillInstance?.j2EETechnologies}
   						</richui:accordionItem>
   						
   						  <richui:accordionItem id="4" caption="Frameworks">
   							   ${empSkillInstance?.frameworks}
   						</richui:accordionItem>
   						
   						
   						  <richui:accordionItem id="5" caption="WebTechnologies">
   							  ${empSkillInstance?.webTechnologies}
   						</richui:accordionItem>
   						
   						
   						  <richui:accordionItem id="6" caption="DatabasesTechnologies">
   							     ${empSkillInstance?.databasesTech}
   						</richui:accordionItem>
   						
   						
   						  <richui:accordionItem id="7" caption="Web/App/servers">
   							  ${empSkillInstance?.web_App_servers}
   						</richui:accordionItem>
   						
   						
   						  <richui:accordionItem id="8" caption=" IDE_Tools">
   							   ${empSkillInstance?.iDE_Tools}
   						</richui:accordionItem>
   						
   						</richui:accordion>
					  
					  </richui:tabContent>

                      <richui:tabContent><%--
                       This is tab 3. <g:link action="list">A link</g:link>--%>
                       
                       <richui:accordion>
    						<richui:accordionItem id="9" caption="Crrent Project">
   							     GridPoint
   						</richui:accordionItem>
                    </richui:accordion>   
                       </richui:tabContent> 
                  </richui:tabContents> 
              </richui:tabView>
			</div>	
				
				</div>
			</ol>
			</div>
		</richui:accordionItem>
		<richui:accordionItem>
		</richui:accordionItem>
	</richui:accordion>
			<%--<div id="content_right" class="content-form-right">
			 <div id="empimg"><a href="http://localhost:8080/learngrails"><img style="width: 40%; height: 40%;" src="${resource(dir: 'images', file: 'kumarvayyala.png')}" alt="Grails"/></a></div>
			</div>
			--%><g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="edit" action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
