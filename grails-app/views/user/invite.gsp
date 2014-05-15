<%@ page import="org.schema.CreativeWork" %>
<%@ page import="multiplexonline.InvitationCode" %>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="portal/mainh">
<g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
		<script type="text/javascript">
				function setMessage(selectdrole){
				
				if(selectdrole == '2'){
				   selectdrole = 'Portal User'
				}
				else if(selectdrole == '3'){
				selectdrole = 'Publisher Admin'
				}
				else if(selectdrole == '4'){
				selectdrole = 'Publisher User'
				}
				document.getElementById("invitee").value=selectdrole;
				var yourname = $("#username").val().toUpperCase();
				var msg = yourname +" Invite you as a " + selectdrole.toUpperCase() + " on Grails Learn";
				document.getElementById("message").value=msg;
				}
		</script>
</head>
 <body>
<section class="scrollable padder">
              <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
                <li><a href="${createLink(uri: '/dashboard')}"><i class="fa fa-home text-success text"></i> Home</a></li>
                <li class="active"><i class="fa fa-users"></i>Invite Users</li>
              </ul>
              <g:if test="${mailsent}">
               <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-ok-sign"></i><strong>Well done!</strong> You successfully Sent Email To<a href="#" class="alert-link">"${emailTo}"</a>.
                  </div>
               </g:if>
              <div class="row">
                <div class="col-sm-6">
                  <g:form data-validate="parsley" action="sendInvitation" data-validate="parsley">
                   <g:hiddenField id="invitee" name="invitee" value="${invitationCode?.invitee}" />
                    <section class="panel panel-default">
                      <header class="panel-heading">
                        <span class="h4">Contact</span>
                      </header>
                      <div class="panel-body">
                        <p class="text-muted">Need support? please fill the fields below.</p>
                          <div class="form-group pull-in clearfix">
                          <div class="col-sm-6">
                              <label>Your name</label>
                              <g:textField id="username" name="username" value="${invitationCode?.username}" class="form-control" placeholder="Your Name" data-required="true" data-notblank="true" data-minlength="3"/>
                            </div>
                             <div class="col-sm-6">
                              <label>Invitee name</label>
                              <g:textField id="inviteename" name="inviteename" value="${invitationCode?.inviteename}" class="form-control" placeholder="Invitee Name" data-required="true" data-notblank="true" data-minlength="6"/>
                            </div>
                          <div class="col-sm-6">
                              <label>Email</label>
                              <g:field name="emailTo" type="email" value="${invitationCode?.emailTo}" class="form-control" placeholder="Enter email" data-required="true" data-notblank="true"/>
                            </div>
<div class="col-sm-6">
<label>Select User Role</label>
<g:select id="authority" name="authority" class="form-control" noSelection="${['':'Please choose']}" value="${invitationCode?.authority}" onchange="setMessage(this.value);" data-required="true"
from="${roles}"
optionKey="id" optionValue="roleName" />
                           </div>
                          </div><%--
                          <div class="form-group">
                            <label>Your website</label>
                            <g:textField name="website" value="${invitationCode?.website}" data-type="url" data-required="true" class="form-control" placeholder="Your website url" data-notblank="true"/>
                          </div>
                          --%><div class="form-group">
                            <label>Message</label>
                            <g:textArea id="message" name="message" value="${invitationCode?.message}" class="form-control" rows="2" data-minwords="1" data-required="true" data-notblank="true" placeholder="Type your message"/>
                          </div>
                      </div>
                      <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-success btn-s-xs">Submit</button>
                      </footer>
                    </section>
                 </g:form>
                </div>
                <g:if test="${invitedUsers}">
                 <div class="col-sm-6">
                 <section class="panel panel-default">
                     <header class="panel-heading">
                        <span class="h4">Recent Invited Users</span>
                        <g:link action="allinvitees" class="label bg-info" style="float:right;">View All</g:link>
                      </header>
                    <section class="panel-body slim-scroll" data-height="430px">
                    <g:each in="${invitedUsers}"><%--
                      <article class="media" style="${it.id==1 ?"background-color: #89CC97":"background-color: #3FB4B5"}">
                        <span class="pull-left thumb-sm"><g:img uri="/images/avatar_default.jpg" class="img-circle"/></span>
                        <div class="media-body">
                          <div class="pull-right media-xs text-center text-muted">
                            <strong class="h5"><g:formatDate format="yyyy-MM-dd" date="${it.dateCreated}" style="SHORT"/></strong><br>
                            <small class="label bg-light">pm</small>
                          </div>
                          <a href="#" class="h4" style="font-size: 17px;">${it.emailTo}</a>
                          <small class="block"><a href="#" class="">Invite As a</a> <span class="label label-success">${it.role}</span></small>
                        </div>
                      </article>
                --%>
                     <section class="panel panel-info"t style="margin-bottom: 10px !important;">
                        <div class="panel-body">
                          <a href="#" class="thumb pull-right m-l">
                            <g:img uri="/images/avatar.jpg" class="img-circle"/>
                          </a>
                          <div class="clear">
                            <g:link action="inviteeProfile" controller="user" id="${it.id}" class="text-info">@${it.emailTo} <i class="icon-twitter"></i></g:link>
                            <small class="block text-muted">Invited as a</small>
                           
                            <g:if test="${it.invitee == 'Portal User'}">
                               <a href="#" class="btn-info btn btn-xs m-t-xs">${it.invitee}</a>
                           </g:if>
                           
                            <g:elseif test="${it.invitee == 'Publisher Admin'}">
                               <a href="#" class="btn-warning btn btn-xs m-t-xs">${it.invitee}</a>
                            </g:elseif>
                            
                           <g:elseif test="${it.invitee == 'Publisher User'}">
                               <a href="#" class="btn-twitter btn btn-xs m-t-xs">${it.invitee}</a>
                           </g:elseif>
                          
                          </div>
                        </div>
                      </section>
                </g:each>
               </section>
               </section>
               </div>
               </g:if>
              </div>
            </section>
</body>
</html>