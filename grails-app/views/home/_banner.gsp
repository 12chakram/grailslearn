<section class="banner_section">
        	<div>
            	<div id="banner-slide">

                    <div class="carousel-container">
    
                          <div id="carousel">
	                          <g:each in="${featured}" var="mi">
	                          <div class="carousel-feature">
	                              <a href="#"><img class="carousel-image" src="/multiplexonline/imageIndirect/index?imageName=${mi.imageName}&category=" height="260"/></a>
	                              <ii:imageTag class="carousel-image" indirect-imagename="${mi.imageName}" />
	                              
	                     	  </div>
	                     	  </g:each>
                          </div>
                        
                          <div id="carousel-left"></div>
                          <div id="carousel-right"></div>
                        </div>
                  </div>
            	<!-- <img src="images/banner1.png" width="1400" height="300"> -->
                <div class="bottom_shade"></div>
            </div>
        </section>

<%--        <section class="banner_section">
           	<div id="banner-slide">

                    <div class="carousel-container">
    
                          <div id="carousel">
                          <g:each in="${featured}" var="mi">
                          <div class="carousel-feature">
                              <a href="#"><img class="carousel-image" src="/multiplexonline/imageIndirect/index?imageName=${mi.imageName}&amp;category="/></a>
                              <ii:imageTag class="carousel-image" indirect-imagename="${mi.imageName}" />
                              
                     	  </div>
                     	  </g:each>
                          <div id="carousel-left"></div>
                          <div id="carousel-right"></div>
                        </div>
                  </div>
            	<!-- <img src="images/banner1.png" width="1400" height="300"> -->
                <div class="bottom_shade"></div>
            </div>
        </section>
        
        
        
        <section class="banner_section">
                <div >
                <div id="banner-slide">

                    <!-- start Basic Jquery Slider -->
                    <ul class="bjqs">
                    <g:each in="${featured}" var="mi">
                      <li><ii:imageTag indirect-imagename="${mi.imageName}" /></li>
                     </g:each>
                    </ul>
                    <!-- end Basic jQuery Slider -->

                  </div>
                <!-- <img src="images/banner1.png" width="1400" height="300"> -->
                <div class="bottom_shade"></div>
            </div>
        </section>--%>