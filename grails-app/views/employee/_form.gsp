<%@ page import="com.grails.learn.Employee" %>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empid', 'error')} required">
	<label for="empid">
		<g:message code="employee.empid.label" default="Empid" />
		<span class="required-indicator">*</span>
	</label>
	<%--<g:field name="empid" type="number" value="${employeeInstance.empid}" required="" />--%>
	<g:remoteField action="checkEmpId" name="empid" paramName="${employeeInstance.empid}" value="${employeeInstance.empid}"  controller="employee"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'first_Name', 'error')} ">
	<label for="first_Name">
		<g:message code="employee.first_Name.label" default="First Name" />
		
	</label>
	<g:textField name="first_Name" value="${employeeInstance?.first_Name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'last_Name', 'error')} ">
	<label for="last_Name">
		<g:message code="employee.last_Name.label" default="Last Name" />
	</label>
	<g:textField name="last_Name" value="${employeeInstance?.last_Name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'expyear', 'error')} ">
	<label for="expyear">
		<g:message code="employee.expyear.label" default="Experience" />
	</label> 
	 <g:select id="role" name="expyear" from="${1..25}"  keys="${[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]}"  value="${employeeInstance?.expyear}" noSelection="${['null':'Years']}" style="width: 85px;"/>
	 <g:select id="role" name="expmonth" from="${1..11}" keys="${[1,2,3,4,5,6,7,8,9,10,11]}"  value="${employeeInstance?.expmonth}" noSelection="${['null':'Months']}" style="margin-left: -4px; width: 85px;"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'JoingDate', 'error')} ">
	<label for="JoingDate">
		<g:message code="employee.JoingDate.label" default="Joing Date" />
	</label>
	<g:datePicker name="joingDate" id="joingDate"  value="${employeeInstance?.joingDate}" precision="day"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'bossid', 'error')} ">
	<label for="bossid">
		<g:message code="employee.bossid.label" default="Manager" />
	</label>
	 <g:select id="role" name="bossid" from="${['KUMAR VAYYALA']}" keys="${[1154]}" value="${employeeInstance?.bossid}" noSelection="${['null':'Reporting Manager...']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'jobid', 'error')} ">
	<label for="jobid">
		<g:message code="employee.jobid.label" default="JobTitle" />
	</label>
	 <g:select id="role" name="jobid" from="${['JAVADEVELOPER','DOTNETDEVELOPER']}" keys="${[1,2]}" value="${employeeInstance?.jobid}" noSelection="${['null':'Job Title...']}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'deptid', 'error')} ">
	<label for="deptid">
		<g:message code="employee.deptid.label" default="Department" />
	</label>
	<g:select name="deptid" id="departmentInstance.id"
          from="${departmentInstance.list()}" optionKey="id" optionValue="departmentName"
          value="${employeeInstance?.deptid}"
          noSelection="${['null':'Assign DepartMent...']}"/>
</div>


