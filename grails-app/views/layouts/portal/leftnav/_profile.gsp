                <div class="clearfix wrapper bg-primary nav-user hidden-xs">
                  <div class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <span class="thumb-sm avatar pull-left m-r-sm">
                        <img src="images/avatar.jpg">
                      </span>
                      <span class="hidden-nav-xs clear">
                      <sec:ifLoggedIn>
                         <strong><sec:username/></strong> <b class="caret caret-white"></b>
                        </sec:ifLoggedIn>
                        <span class="text-muted text-xs block">Art Director</span>
                      </a>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                      <span class="arrow top hidden-nav-xs"></span>
                      <li>
                        <a href="#">Settings</a>
                      </li>
                      <li>
                        <a href="profile.html">Profile</a>
                      </li>
                      <li>
                        <a href="#">
                          <span class="badge bg-danger pull-right">3</span>
                          Notifications
                        </a>
                      </li>
                      <li>
                        <a href="docs.html">Help</a>
                      </li>
                      <li class="divider"></li>
                      <li>
                        <g:link controller="logout">Logout</g:link>
                      </li>
                    </ul>
                  </div>
                </div>