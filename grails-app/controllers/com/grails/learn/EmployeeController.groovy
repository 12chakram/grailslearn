package com.grails.learn

import org.springframework.dao.DataIntegrityViolationException

import com.grails.learn.EmployeeService

class EmployeeController {
	
	
	//def scaffold = true
	
	EmployeeService employeeService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static employeeImg
	
	
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
		Integer max = session.getAttribute("max") 
		def employeeInstance = session.getAttribute("employeeInstance") 
		if(max == 2 && employeeInstance!=null){ 
			if(employeeInstance.avatar.inspect()){
				[employeeInstance:employeeInstance,departmentInstance: new Department(),employeeTechSkillSetInstance: new EmployeeTechSkillSet(),techInformation:"true",showImg:"true"]
			}else{
			[employeeInstance:employeeInstance,departmentInstance: new Department(),employeeTechSkillSetInstance: new EmployeeTechSkillSet(),techInformation:"true"]
			}
		}else if(max == 1 && employeeInstance != null){
		   [employeeInstance:employeeInstance,departmentInstance: new Department(),employeeTechSkillSetInstance: new EmployeeTechSkillSet(),basicInformation:"true"]
		}else{
		  [employeeInstance: new Employee(params),departmentInstance: new Department(),employeeTechSkillSetInstance: new EmployeeTechSkillSet(),basicInformation:"true"]
		}
       
    }

    def save() {
		def employeeInstance = session.getAttribute("employeeInstance")
		def  empSkillInstance  = session.getAttribute("empSkill")
		
		def imgEmployee = new ImgEmployee()
		
       // def employeeInstance = new Employee(params)
		boolean isEmployeeSaved = false
		boolean isEmpSkillSaved = false
		boolean isImgEmployeeSaved = false
		try{
			if(employeeInstance.save(flush: true)){
				empSkillInstance.empid = employeeInstance.id
				isEmployeeSaved = true
			}
			if(empSkillInstance.save(flush: true)){
			   isEmpSkillSaved = true
			   
			   imgEmployee.data = employeeInstance.avatar
			   imgEmployee.contentType = employeeInstance.avatarType
			   imgEmployee.empid = employeeInstance.id
			}
			if(imgEmployee.save(flush: true)){
			   isImgEmployeeSaved = true
			}
		}catch(Exception exception){
		   println(exception.getLocalizedMessage())
		}
		if (!isEmployeeSaved && !isEmpSkillSaved && !isImgEmployeeSaved) {
			render(view: "create", model: [employeeInstance: employeeInstance,departmentInstance: new Department(), basicInformation:"true"])
			return
		}
		
		employeeInstance.setEmployeeName(employeeInstance.getFirst_Name().toUpperCase()+" "+employeeInstance.getLast_Name().toUpperCase());
        flash.message = message(code: 'default.created.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.employeeName])
        redirect(action: "show", id: employeeInstance.id)
    }

    def show(Long id) {
        def employeeInstance = Employee.get(id)
		def empSkillInstance = EmployeeTechSkillSet.get(employeeInstance.getId())
		def departmentInstance = Department.get(employeeInstance.getDeptid())
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }
		//employeeInstance.setSkillSet("JAVA,J2EE,STRUTS,SERVLETS,SPRING,GRAILS,GRROVY,JAVA SCRIPT,JQUERY,ORACLE,MYSQL,POSTGRES-SQL,S")
		   employeeInstance.setDepartmentName(departmentInstance.getDepartmentName())
		   employeeInstance.setEmployeeName(employeeInstance.getFirst_Name().toUpperCase()+" "+employeeInstance.getLast_Name().toUpperCase());
        [employeeInstance: employeeInstance,empSkillInstance:empSkillInstance]
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
   
   // saveForPreview
   def saveForPreview() {
	   Integer max
	   def employeeInstance = new Employee(params)
	   if (employeeInstance.validate()) {
		  max = Integer.valueOf("2")
		   session.setAttribute("employeeInstance", employeeInstance)
		   session.setAttribute("max", max)
		   boolean isSavedImg = upload_avatar();
		   redirect(action: "create",)
	   }else{
	   render(view: "create", model: [employeeInstance: employeeInstance,departmentInstance: new Department(), basicInformation:"true"])
	   return
	   }
   }
   
   
	private static final okcontents = ['image/png','image/jpeg','image/gif']

	def upload_avatar() { 
		def employeeInstance = session.getAttribute("employeeInstance")

		// Get the avatar file from the multi-part request 
		def f = request.getFile('avatar')

		// List of OK mime-types 
		if (!okcontents.contains(f.getContentType())) {
			 flash.message = "Avatar must be one of: ${okcontents}"
			  render(view:'select_avatar', model:[user:user])
			   return }

		// Save the image and mime type 
		 employeeInstance.avatar = f.bytes
		 employeeInstance.avatarType = f.contentType
		  log.info("File uploaded: $employeeInstance.avatarType")

		// Validation works, will check if the image is too big 
		if (!employeeInstance.avatar.inspect()) {
			//redirect(action: "show", id: employeeInstance.id)
			// render(view:'select_avatar', model:[employeeInstance:employeeInstance]) 
			return true} 
		employeeImg = employeeInstance
		flash.message = "Avatar (${employeeInstance.avatarType}, ${employeeInstance.avatar.size()} bytes) uploaded." 
		
	  }
	
	/*def displayEmployeeImg = {
		def img = employeeInstance.avatar
		
		response.setHeader('Content-length', img.length)
		response.contentType = employeeInstance.avatarType
		response.outputStream << img
		response.outputStream.flush()
	}*/
	
	
	def saveEmployee(){
		
		def empSkillInstance = new EmployeeTechSkillSet(params)
		if (empSkillInstance.validate()) {
			 session.setAttribute("empSkill", empSkillInstance)
			 save()
	   }else{
	   def employeeInstance = session.getAttribute("employeeInstance")
	   render(view: "create", model: [employeeInstance: employeeInstance,departmentInstance: new Department(), basicInformation:"false"])
	   return
	   }
	    
	}
	
	def displayEmployeeImg() {
		/*def avatarUser = User.get(params.id)
		if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
		  response.sendError(404)
		  return
		}*/
		response.contentType = employeeImg.avatarType
		response.contentLength = employeeImg.avatar.size()
		OutputStream out = response.outputStream
		out.write(employeeImg.avatar)
		out.close()
	  }
	
	
	def getEmployeeImg() {
		/*def avatarUser = User.get(params.id)
		if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
		  response.sendError(404)
		  return
		}*/
		
		def imgEmployee = ImgEmployee.get(params.id)
		response.contentType = imgEmployee.avatarType
		response.contentLength = imgEmployee.avatar.size()
		OutputStream out = response.outputStream
		out.write(imgEmployee.avatar)
		out.close()
	  }
	
	
	
}
