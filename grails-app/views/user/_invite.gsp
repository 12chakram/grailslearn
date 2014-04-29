<%@ page import="multiplexonline.InvitationCode" %>

<section id="content">
          <section class="vbox">
            <section class="scrollable padder">
              <ul class="breadcrumb no-border no-radius b-b b-light pull-in">
                <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="#">UI kit</a></li>
                <li><a href="#">Form</a></li>
                <li class="active">Validation</li>
              </ul>
              <div class="m-b-md">
                <h3 class="m-b-none">Adding and Inviting Users</h3>
              </div>
              <g:if test="${mailsent}">
               <div class="alert alert-success" style="width:49%;">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-ok-sign"></i><strong>Well done!</strong> You successfully Sent Email To<a href="#" class="alert-link">"${emailTo}"</a>.
                  </div>
               </g:if>
              <div class="row">
                <div class="col-sm-6">
                  <g:form data-validate="parsley" action="sendInvitation">
                    <section class="panel panel-default">
                      <header class="panel-heading">
                        <span class="h4">Invitation</span>
                      </header>
                      <div class="panel-body">
                        <p class="text-muted">
                         To Invite a New User to LearnGrails type the invitee's email address , Your Name and select invitee's Role and add your message if you show it.
                       </p>                        
                          <div class="form-group pull-in clearfix">
                            <div class="col-sm-6">
                              <label>Your name</label>
                              <g:textField  name="username" value="${invitationCode?.username}" class="form-control" placeholder="Name" data-required="true"/>
                            </div>
							 <div class="col-sm-6">
							 <label>Invitee's Role</label>
							 <g:select id="role" name="role" class="form-control" data-required="true"  noSelection="${['null':'Please choose']}"  value="${invitationCode?.role}"
							          from="${['Site User': 'SiteUser','Publisher Admin': 'PublisherAdmin', 'Publisher User': 'PublisherUser']}"
							          optionKey="key" optionValue="value" />
                           </div>
                            <div class="col-sm-9">
                              <label>Invitee's Email</label>
                              <g:textField  name="emailTo"  value="${invitationCode?.emailTo}" class="form-control"  data-type="email" placeholder="Enter email" data-required="true"/>
                            </div>
                          </div>
                          %{--
                          <div class="form-group">
                            <label>Your website</label>
                            <g:textField name="website"  value="${invitationCode?.website}" data-type="url"  data-required="true" class="form-control" placeholder="Your website url"/>
                          </div>
                         --}% 
                          <div class="form-group">
                            <label>Message</label>
                            <g:textArea name="message" value="${invitationCode?.message}" class="form-control" rows="3" 
                            data-minwords="3" data-required="true" placeholder="Type your message"/>
                          </div>
                      </div>
                      <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-success btn-s-xs">Submit</button>
                      </footer>
                    </section>
                 </g:form>
               </div>
                <g:if test="${invitedUsers != null && !invitedUsers.isEmpty()}">
                 <div class="col-sm-6">
                 <section class="panel panel-default">
                     <header class="panel-heading">
                        <span class="h4">Recent Invited Users</span>
                      </header>
                    <section class="panel-body slim-scroll" data-height="400px">
                 <g:each in="${invitedUsers}">
                      <article class="media" style="background-color: #D9EDF7">
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
                </g:each>
               </section>
               </section>
               </div>
               </g:if>
               </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
        </section>
