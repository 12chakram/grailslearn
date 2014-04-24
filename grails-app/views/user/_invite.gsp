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
                <h3 class="m-b-none">Validation</h3>
              </div>
              <g:if test="${mailsent}">
               <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <i class="fa fa-ok-sign"></i><strong>Well done!</strong> You successfully Sent Email To<a href="#" class="alert-link">"${emailTo}"</a>.
                  </div>
               </g:if>
              <div class="row">
                <div class="col-sm-6">
                  <g:form data-validate="parsley" action="sendInvitation">
                    <section class="panel panel-default">
                      <header class="panel-heading">
                        <span class="h4">Contact</span>
                      </header>
                      <div class="panel-body">
                        <p class="text-muted">Need support? please fill the fields below.</p>                        
                          <div class="form-group pull-in clearfix">
                          <div class="col-sm-9">
                              <label>Email</label>
                              <g:textField  name="emailTo"  value="${invitationCode?.emailTo}" class="form-control" placeholder="Enter email" data-required="true"/>
                            </div>
                            <div class="col-sm-6">
                              <label>Your name</label>
                              <g:textField  name="username" value="${invitationCode?.username}" class="form-control" placeholder="Name" data-required="true"/>
                            </div>
							 <div class="col-sm-6">
							 <label>Select User Role</label>
							 <g:select id="role" name="role" class="form-control"  noSelection="${['null':'Please choose']}"  value="${invitationCode?.role}"
							          from="${['pa': 'PublisherAdmin', 'pu': 'PublisherUser', 'a': 'Admin','e':'EndUser']}"
							          optionKey="key" optionValue="value" />
                           </div>
                          </div>
                          <div class="form-group">
                            <label>Your website</label>
                            <g:textField name="website"  value="${invitationCode?.website}" data-type="url"  data-required="true" class="form-control" placeholder="Your website url"/>
                          </div>
                          <div class="form-group">
                            <label>Message</label>
                            <g:textArea name="message" value="${invitationCode?.message}" class="form-control" rows="6" data-minwords="6" data-required="true" placeholder="Type your message"/>
                          </div>
                      </div>
                      <footer class="panel-footer text-right bg-light lter">
                        <button type="submit" class="btn btn-success btn-s-xs">Submit</button>
                      </footer>
                    </section>
                 </g:form>
                </div>
              </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
        </section>
