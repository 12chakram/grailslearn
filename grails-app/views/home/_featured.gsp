				<div id="slide">			  	
							<!-- slider -->
							<div class="slider">
								<ul class="items">
								<g:each in="${featured}" var="mi">
									<li>
										<ii:imageTag indirect-imagename="${mi.imageName}" /> 
										<div class="banner">
											<span>
												<strong><i>"${mi.title}"</i></strong> 
												<a class="button3" href="movie/${mi.sanitizedTitle}">Details!</a>
											</span>
										</div>
									</li>
								</g:each>
								</ul>
							</div>
							<!-- slider end -->	
                            <div class="pag">
                                <div class="img-pags">
                                  <ul>
	                                <g:each in="${featured}" var="mi">
										<li><a href="more.html"><ii:imageTag indirect-imagename="${mi.thumbImageName}"  width="80" height="60"/></a></li>
									</g:each>
                                  </ul>  
                                </div>								
                            </div>
				</div>