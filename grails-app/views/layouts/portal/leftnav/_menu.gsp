				<!-- nav -->
                <nav class="nav-primary hidden-xs">
                  <ul class="nav">
                    <li >
                      <a href="${createLink(uri: '/dashboard')}" >  
                        <i class="fa fa-dashboard icon">
                          <b class="bg-danger"></b>
                        </i>
                        <span>Dashboard</span>
                      </a>
                    </li>
                    <li  class="active">
                      <a href="#layout"   class="active">
                        <i class="fa fa-columns icon">
                          <b class="bg-warning"></b>
                        </i>
                        <span class="pull-right">
                          <i class="fa fa-angle-down text"></i>
                          <i class="fa fa-angle-up text-active"></i>
                        </span>
                        <span>Media</span>
                      </a>
                      <ul class="nav lt">
                        <li >
                          <a href="${createLink(uri: '/media')}" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>All Media</span>
                          </a>
                        </li>
                        <li >
                          <a href="${createLink(uri: '/SOMovie')}" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Movies</span>
                          </a>
                        </li>
                        <li  class="active">
                          <a href="${createLink(uri: '/MOSong')}"  class="active">                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Songs</span>
                          </a>
                        </li>
                        <li >
                          <a href="${createLink(uri: '/MOMovieClip')}" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Movie Clips</span>
                          </a>
                        </li>
                        <li >
                          <a href="${createLink(uri: '/MOPromotion')}">                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Promotions</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li >
                      <a href="${createLink(uri: '/VideoObject')}" >
                        <%--<b class="badge bg-danger pull-right">3</b>
                        --%><i class="entypo-video icon">
                          <b class="bg-primary dker"></b>
                        </i>
                        <span>Videos</span>
                      </a>
                    </li>
                    <li >
                      <a href="#uikit"  >
                        <i class="fa fa-flask icon">
                          <b class="bg-success"></b>
                        </i>
                        <span class="pull-right">
                          <i class="fa fa-angle-down text"></i>
                          <i class="fa fa-angle-up text-active"></i>
                        </span>
                        <span>Manage users</span>
                      </a>
                      <ul class="nav lt">
                        <li >
                         <a href="${createLink(controller : 'user',action: 'showInvite')}">
                            <i class="fa fa-angle-right"></i>
                            <span>Invite users</span>
                       </a>
                        </li>
                      </ul>
                    </li>
                    <li >
                      <a href="#pages"  >
                        <i class="fa fa-file-text icon">
                          <b class="bg-primary"></b>
                        </i>
                        <span class="pull-right">
                          <i class="fa fa-angle-down text"></i>
                          <i class="fa fa-angle-up text-active"></i>
                        </span>
                        <span>Pages</span>
                      </a>
                      <ul class="nav lt">
                        <li >
                          <a href="gallery.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Gallery</span>
                          </a>
                        </li>
                        <li >
                          <a href="profile.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Profile</span>
                          </a>
                        </li>
                        <li >
                          <a href="invoice.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Invoice</span>
                          </a>
                        </li>
                        <li >
                          <a href="intro.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Intro</span>
                          </a>
                        </li>
                        <li >
                          <a href="master.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Master</span>
                          </a>
                        </li>
                        <li >
                          <a href="gmap.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Google Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="jvectormap.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Vector Map</span>
                          </a>
                        </li>
                        <li >
                          <a href="signin.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Signin</span>
                          </a>
                        </li>
                        <li >
                          <a href="signup.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>Signup</span>
                          </a>
                        </li>
                        <li >
                          <a href="404.html" >                                                        
                            <i class="fa fa-angle-right"></i>
                            <span>404</span>
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li >
                      <a href="mail.html"  >
                        <b class="badge bg-danger pull-right">3</b>
                        <i class="fa fa-envelope-o icon">
                          <b class="bg-primary dker"></b>
                        </i>
                        <span>Message</span>
                      </a>
                    </li>
                    <li >
                      <a href="notebook.html"  >
                        <i class="fa fa-pencil icon">
                          <b class="bg-info"></b>
                        </i>
                        <span>Notes</span>
                      </a>
                    </li>
                  </ul>
                </nav>
                <!-- / nav -->