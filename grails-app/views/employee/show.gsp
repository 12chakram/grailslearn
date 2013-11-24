
<%@ page import="com.grails.learn.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<g:set var="employeeName" value="${employeeInstance?.employeeName}"/>
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		
		<style type="text/css">
		
	  .content-form-left {
         background: none repeat scroll 0 0 rgb(248, 248, 255);
    	border-radius: 3px;
    	height: 350px;
    	margin: 0 auto 0 10px;
   	    padding: 10px 20px;
   	    width: 94%;
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

fieldset, .property-list {
    border: medium solid rgb(0, 128, 0);
    margin: -16.4em -1.75em 2em;
    position: relative;
    height: 99%
}

textarea {
    height: 26px;
    overflow: auto;
    vertical-align: top;
    width: 183px;
    text-align: center;
}

.skillSet{
  margin:-19% -6% -7% 47%;
}

.yui-navset .yui-content, .yui-navset .yui-content div {
    height: 290px;
    overflow-x: hidden;
    overflow-y: auto;
}


.buttons {
    background-color: rgb(239, 239, 239);
    border: medium none;
    box-shadow: 0 0 3px 1px rgb(170, 170, 170);
    margin: 0.8em 0 0;
    overflow: hidden;
    padding: 0.3em;
}
		</style>
		
		<resource:tabView />
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
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[employeeName]" default=" "/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div id="content_left" class="content-form-left">
			
			<div id="" role="">
			    <img style="width:17%;" src="${resource(dir: 'images', file: 'employeenumbertwo.png')}" alt="Grails"/>
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
				
				<g:if test="${employeeInstance?.deptno}">
				<li class="fieldcontain">
					<span id="deptno-label" class="property-label"><g:message code="employee.deptno.label" default="Department" /></span>
						<span class="property-value" aria-labelledby="deptno-label"><g:fieldValue bean="${employeeInstance}" field="deptno"/></span>
				</li>
				</g:if>
				
				<g:if test="${employeeInstance?.joingDate}">
				<li class="fieldcontain">
					<span id="joingDate-label" class="property-label"><g:message code="employee.joingDate.label" default="Joined" /></span>
						<span class="property-value" aria-labelledby="joingDate-label"><g:fieldValue bean="${employeeInstance}" field="joingDate"/></span>
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
				 
				  <richui:tabLabel title="Projects" /> </richui:tabLabels>

                        <richui:tabContents> 
                        
                        <richui:tabContent> 
                        
                        <h1>Skill Set</h1> 
                            
                            <g:textArea name="skillSet"  value="${employeeInstance.skillSet}" readOnly="true" style="height: 92px; width: 544px;background: none repeat scroll 0 0 rgb(171, 191, 120);bottom: 0;left: 0;right: 0;top: 0;"/>

					 </richui:tabContent>

                      <richui:tabContent style="overflow:scroll;"> 
					  
					   <h1>TECHNICAL SKILLS</h1>
					  
					     Platforms = Windows,LINUX <br/> <br/>
	
						 Programming = Java,J2EE,Groovy <br/> <br/>
						
						 J2EETechnologies = Servlets,JSP,JSF,EJB <br/> <br/>
						
						 Frameworks = Struts,Spring,Hibernate,JPA,Groovy,Grails,Flex <br/> <br/>
						
						 WebTechnologies = HTML,JavaScript,CSS,jQuery <br/> <br/>
						
						 DatabasesTech = Oracle,DB2,MYSQL,PostgreSQL <br/> <br/>
						
						 Web_App_servers = WebSphere,WebLogic,Jboss,ApacheTomcat <br/> <br/>
						
						 IDE_Tools = MyEclipse,Eclipse,SoapUI,SQLDeveloper,Flashbuilder,NeoLoad,Git,SVN,CVS
					  
					  </richui:tabContent>

                      <richui:tabContent> This is tab 3. <g:link action="list">A link</g:link> </richui:tabContent> </richui:tabContents> 
              </richui:tabView>
			</div>	
				
				</div>
			</ol>
			</div>
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
