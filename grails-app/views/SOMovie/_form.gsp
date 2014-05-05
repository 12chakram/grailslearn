<%@ page import="org.schema.SOMovie" %>

<div class="form-group pull-in clearfix">
  	<div class="col-sm-4">
		<g:textField class="form-control parsley-validated parsley-error" data-required="true" 
				     name="name" value="${SOMovieInstance?.name}"
				     placeholder="Name"/>   
	</div> 
	<div class="col-sm-4">
		<g:textField class="form-control" name="alternateName" value="${SOMovieInstance?.alternateName}"
				     placeholder="Alternate Name"/>    
	</div> 
	 <div class="col-sm-4">
		<g:textField class="form-control" name="headline" value="${SOMovieInstance?.headline}"
				     placeholder="Headline"/>    
	</div> 
</div>  

<div class="form-group pull-in clearfix">
	<div class="col-sm-12">
		<g:textField class="form-control" 
				     name="description" value="${SOMovieInstance?.description}"
				     placeholder="Description"/>
    </div>
</div>  

<div class="form-group pull-in clearfix">
  	<div class="col-sm-2">
  		<g:select class="input-sm form-control input-s-sm inline v-middle parsley-validated parsley-error" 
  		          name="inLanguage" from="['Telugu','Tamil','Hindi']" value="${SOMovieInstance?.inLanguage}" noSelection="${['null':'Language..']}" 
  		          placeholder="Language" data-required="true"/>   
	</div> 
	<div class="col-sm-2 checkbox m-l-xs m-r-xs">
		<label>
           <g:checkBox name="isPublished" value="${SOMovieInstance?.isPublished}" /> <g:message code="SOMovie.isPublished.label" default="Is Published" />
        </label>   
	</div> 
	<div class="col-sm-2 checkbox m-l-xs m-r-xs">
		<label>
           <g:checkBox name="isFamilyFriendly" value="${SOMovieInstance?.isFamilyFriendly}" /> <g:message code="SOMovie.isFamilyFriendly.label" default="Is Family Friendly" />
        </label>   
	</div> 
	 <div class="col-sm-2">
	 	<g:field class="form-control parsley-validated parsley-error" data-required="true" 
	 	         name="releaseYear" type="number" value="${SOMovieInstance.releaseYear}"
	 	          placeholder="Year"/> 
	</div> 
	<div class="col-sm-2">
		<g:textField class="form-control parsley-validated parsley-error" data-required="true" 
				     name="timeRequiredText" value="${SOMovieInstance?.timeRequiredText}"
				     placeholder="Duration"/>   
	</div> 
</div>

<div class="form-group pull-in clearfix">
	<div class="col-sm-12">
	    <label for="genres">
			<g:message code="SOMovie.genres.label" default="Genre" />
	    </label>
		<g:select style="min-width:260px"
		          name="genres" from="${org.schema.SOGenre.list()}" multiple="multiple" optionKey="id" size="5" 
		          value="${SOMovieInstance?.genres*.id}" class="many-to-many"/>
    </div>
</div>

<div class="form-group pull-in clearfix">
	<div class="col-sm-12">
	    <label for="creativeRoles">
			<g:message code="SOMovie.creativeRoles.label" default="Creative Roles" />
	    </label>
		<g:select style="min-width:260px" 
		          name="creativeRoles" from="${org.schema.CreativeRole.list()}" multiple="multiple" optionKey="id" size="5" 
		          value="${SOMovieInstance?.creativeRoles*.id}" class="many-to-many"
		          placeholder="Creative Roles"/>
    </div>
</div>

<div class="form-group pull-in clearfix">
	<div class="col-sm-9">
		<g:textField class="form-control" 
				     name="image" value="${SOMovieInstance?.image}"
				     placeholder="Image Url"/>
    </div>
    <div class="col-sm-3">
		<label>
           <g:checkBox id="processImage" name="processImage"/> <g:message code="processImage.label" default="Process Image" />
        </label>
    </div>
</div> 
<div class="line line-dashed line-lg pull-in"></div>
<div class="form-group pull-in clearfix">
	<div class="col-sm-6" >
		<img style="width:300px" id="target" src="${SOMovieInstance?.image}"/> 
    </div>
    <div class="col-sm-4">
    	<ii:imageTag style="width:200px"  class="carousel-image" indirect-imagename="${SOMovieInstance.imageName}" />
    </div>
    <div class="col-sm-2">
		<ii:imageTag style="width:100px" class="carousel-image" indirect-imagename="${SOMovieInstance.thumbImageName}" /> 
    </div>
</div> 

<%--           


<div class="fieldcontain ${hasErrors(bean: SOMovieInstance, field: 'image', 'error')} ">
	<label for="image">
		<g:message code="SOMovie.image.label" default="Image" />
		
	</label>
	<g:textField name="image" value="${SOMovieInstance?.image}"/>

</div>

<g:if test="${SOMovieInstance?.image}">
<div class="fieldcontain">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="SOMovie.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${SOMovieInstance}" field="image"/></span>			
				</li>
				<li class="fieldcontain">
					<img id="target" src="${SOMovieInstance?.image}" width="800"/> 
				</li>
</div>
</g:if>



--%>
<g:hiddenField name="x1" value="0" />
<g:hiddenField name="y1" value="0" />
<g:hiddenField name="x2" value="100" />
<g:hiddenField name="y2" value="100" />

