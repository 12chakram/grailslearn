package com.grails.learn

import org.springframework.dao.DataIntegrityViolationException

import com.grails.learn.EmployeeService

class EmployeeController {
	
	
	//def scaffold = true
	
	EmployeeService employeeService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	
	
    def index() {
		
		if(session.user){
	    employeeService.getAllEmployees()
        redirect(action: "list", params: params)
		}else{
		redirect(controller:"user",action:"index")
		}
    
}

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [employeeInstanceList: Employee.list(params), employeeInstanceTotal: Employee.count()]
    }

    def create() {
        [employeeInstance: new Employee(params),departmentInstance: new Department()]
    }

    def save() {
        def employeeInstance = new Employee(params)
		if (!employeeInstance.save(flush: true)) {
			render(view: "create", model: [employeeInstance: employeeInstance,departmentInstance: new Department()])
			return
		}
		employeeInstance.setEmployeeName(employeeInstance.getFirst_Name().toUpperCase()+" "+employeeInstance.getLast_Name().toUpperCase());
        flash.message = message(code: 'default.created.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.employeeName])
        redirect(action: "show", id: employeeInstance.id)
    }

    def show(Long id) {
        def employeeInstance = Employee.get(id)
		def departmentInstance = Department.get(employeeInstance.getDeptid())
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }
		//employeeInstance.setSkillSet("JAVA,J2EE,STRUTS,SERVLETS,SPRING,GRAILS,GRROVY,JAVA SCRIPT,JQUERY,ORACLE,MYSQL,POSTGRES-SQL,S")
		  employeeInstance.setDepartmentName(departmentInstance.getDepartmentName())
		  employeeInstance.setEmployeeName(employeeInstance.getFirst_Name().toUpperCase()+" "+employeeInstance.getLast_Name().toUpperCase());
        [employeeInstance: employeeInstance]
    }

    def edit(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }

    def update(Long id, Long version) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeInstance.version > version) {
                employeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'employee.label', default: 'Employee')] as Object[],
                          "Another user has updated this Employee while you were editing")
                render(view: "edit", model: [employeeInstance: employeeInstance])
                return
            }
        }

        employeeInstance.properties = params

        if (!employeeInstance.save(flush: true)) {
            render(view: "edit", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }

    def delete(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        try {
            employeeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "show", id: id)
        }
    }
	
   def checkEmpId(){
	   if(ajaxFindEmpIDByEmpID){
		   return true
	   }else{
	     return false
	   }
	   
	   
   }
	
}
