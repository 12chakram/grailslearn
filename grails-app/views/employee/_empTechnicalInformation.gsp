<%@ page import="com.grails.learn.EmployeeTechSkillSet" %>

<div class="fieldcontain ${hasErrors(bean:employeeTechSkillSetInstance, field: 'empid', 'error')} required">
	<label for="empid">
		<g:message code="employee.empid.label" default="Empid" />
		<span class="required-indicator">*</span>
	</label>
	<%--<g:field name="empid" type="number" value="${employeeInstance.empid}" required="" />--%>
	<g:remoteField action="checkEmpId" name="empid" paramName="${employeeInstance.empid}" value="${employeeInstance.empid}"  controller="employee"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeTechSkillSetInstance, field: 'first_Name', 'error')} ">
	<label for="platforms">
		<g:message code="employee.platforms.label" default="Platforms" />
	</label>
	<g:select id="role" name="platforms" from="${['WINDOWS','LINUX','UNUX','MAC']}"  keys="${['WINDOWS','LINUX','UNUX','MAC'}"  value="${employeeTechSkillSetInstance?.platforms}" noSelection="${['null':'Select Platform']}" style="width: 85px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeTechSkillSetInstance, field: 'programming', 'error')} ">
	<label for="Programming">
		<g:message code="employee.programming.label" default="Programming" />
	</label>
	<g:textField name="Programming" value="${employeeTechSkillSetInstance?.programming}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: employeeTechSkillSetInstance, field: 'j2EETechnologies', 'error')} ">
	<label for="j2EETechnologies">
		<g:message code="employee.j2EETechnologies.label" default="J2EETechnologies" />
	</label> 
		<g:textField name="j2EETechnologies" value="${employeeTechSkillSetInstance?.j2EETechnologies}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeTechSkillSetInstance, field: 'frameworks', 'error')} ">
	<label for="frameworks">
		<g:message code="employee.JoingDate.label" default="Frameworks" />
	</label>
	<g:datePicker name="frameworks" id="joingDate"  value="${employeeTechSkillSetInstance?.frameworks}" precision="day"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'webTechnologies', 'error')} ">
	<label for="webTechnologies">
		<g:message code="employee.webTechnologies.label" default="Web Technologies" />
	</label>
	<g:textField name="webTechnologies" value="${employeeTechSkillSetInstance?.webTechnologies}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'databasesTech', 'error')} ">
	<label for="databasesTech">
		<g:message code="employee.databasesTech.label" default="Databases Technologies" />
	</label>
	<g:textField name="databasesTech" value="${employeeTechSkillSetInstance?.databasesTech}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'web_App_servers', 'error')} ">
	<label for="databasesTech">
		<g:message code="employee.web_App_servers.label" default="Web_App_servers" />
	</label>
	<g:textField name="web_App_servers" value="${employeeTechSkillSetInstance?.web_App_servers}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'iDE_Tools', 'error')} ">
	<label for="iDE_Tools">
		<g:message code="employee.iDE_Tools.label" default="IDE_Tools" />
	</label>
	<g:textField name="iDE_Tools" value="${employeeTechSkillSetInstance?.iDE_Tools}"/>
</div>
