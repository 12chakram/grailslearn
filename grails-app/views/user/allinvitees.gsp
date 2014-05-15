<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="layout" content="portal/mainh">
<title>Multiplex Online Portal - Dashboard</title>
</head>
<body>
   <section id="content">
          <section class="vbox">
            <header class="header bg-white b-b b-light">
              <ul class="breadcrumb no-border no-radius b-b b-light pull-in" style="height: 30px;">
                <li><a href="${createLink(uri: '/dashboard')}"><i class="fa fa-home text-success text"></i> Home</a></li>
                <li><a href="${createLink(uri: '/user/showInvite')}"><i class="fa fa-users text-success text"></i>Invite Users</a></li>
                <li class="active"><i class="fa fa-users"></i> All Invitees</li>
               </ul>
            </header>
            <section class="scrollable wrapper">
              <div class="row">
                   <g:each in="${allInvitedUsers}">
                    <div class="col-sm-3">
                       <section class="panel panel-default">
                        <header class="${it.invitee == 'Portal User' ? 'bg-danger':'bg-info'} panel-heading lt no-border">
                          <div class="clearfix">
                            <a href="${createLink(action: 'inviteeProfile',controller:'user',params:[id:"${it.id}"])}" class="pull-left thumb avatar b-3x m-r">
                              <g:img uri="/images/avatar.jpg" class="img-circle"/>
                            </a>
                            <div class="clear">
                              <div class="h3 m-t-xs m-b-xs text-white">
                                ${it.inviteename}
                                <i class="fa fa-circle text-white pull-right text-xs m-t-sm"></i>
                              </div>
                              <small class="text-muted">${it.invitee}</small>
                            </div>
                          </div>
                        </header>
                        <div class="list-group no-radius alt">
                          <a class="list-group-item" href="#">
                            <span class="badge bg-success">25</span>
                            <i class="fa fa-comment icon-muted"></i>
                            Messages
                          </a>
                          <a class="list-group-item" href="#">
                            <span class="badge bg-info">16</span>
                            <i class="fa fa-envelope icon-muted"></i>
                            Inbox
                          </a>
                          <a class="list-group-item" href="#">
                            <span class="badge bg-light">5</span>
                            <i class="fa fa-eye icon-muted"></i>
                            Profile visits
                          </a>
                        </div>
                      </section>
                    </div>
                  </g:each>
                  </div>
            </section>
          </section>
          <a href="#" class="hide nav-off-screen-block" data-toggle="class:nav-off-screen" data-target="#nav"></a>
        </section>
</body>
</html>