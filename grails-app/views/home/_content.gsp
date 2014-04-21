<%--   <g:render template="/layouts/media_collection" model="[mcTitle:'Recent', mcMedia: featured]"/> --%>
    
    <section id="content">
        <div class="main">
            <div class="container_12">
                <div class="wrapper">
                    <article class="grid_12">
                    	<div id="tabs1">
                            <ul class="tabs">
                                <li><a href="#tab1">Top Movies</a></li>
                                <li><a href="#tab2">New Movies</a></li>
                                <li class="last7"><a class="last8" href="#tab2">New Songs</a></li>
                            </ul>
                              <div class="tab_container">
                              	<div id="tab1" class="tab_content">
                              		<g:render template="/layouts/media_collection_scroll" model="[mcTitle:'Recent', mcMedia: featured]"/>
                              	</div>   
                              	<div id="tab2" class="tab_content">
                               		<g:render template="/layouts/media_right_collection" model="[mcTitle:'Recent', mcMediaRight: published]"/>
                              	</div>  
                              	<div id="tab3" class="tab_content">
                               		<g:render template="/layouts/media_right_collection" model="[mcTitle:'Recent', mcMediaRight: songs]"/>
                              	</div>                          
                              </div>
                          </div>
                    </article>
                </div>
            </div>
        </div>
        <div class="main p11">
        	<div class="container_12">
            	<div class="wrapper p8">
                	<article class="grid_4">
                   		 <h5 class="p9 margin-bot1 main_h5">Latest Reviews</h5>
                        	<div class="scroll">
                            	<div>
                                    <div class="page1-box2">
                                        <figure class="page1-img2"><img src="images/page1-img7.jpg" alt=""></figure>
                                        <div class="extra-wrap">
                                            <span>Action</span>
                                            <a class="link1" href="more.html">Snow White and the Huntsman (2012)</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <div>
                                    <div class="page1-box2">
                                        <figure class="page1-img2"><img src="images/page1-img8.jpg" alt=""></figure>
                                        <div class="extra-wrap">
                                            <span>Comedy </span>
                                            <a class="link1" href="more.html">Piranha 3DD (2012)</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <div>
                                    <div class="page1-box2">
                                        <figure class="page1-img2"><img src="images/page1-img9.jpg" alt=""></figure>
                                        <div class="extra-wrap">
                                            <span>Musical</span>
                                            <a class="link1" href="more.html">Battlefield America (2012)</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <div>
                                    <div class="page1-box2">
                                        <figure class="page1-img2"><img src="images/page1-img7.jpg" alt=""></figure>
                                        <div class="extra-wrap">
                                            <span>Action</span>
                                            <a class="link1" href="more.html">Snow White and the Huntsman (2012)</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                               <div> 
                                   <div class="page1-box2">
                                        <figure class="page1-img2"><img src="images/page1-img8.jpg" alt=""></figure>
                                        <div class="extra-wrap">
                                            <span>Comedy</span>
                                            <a class="link1" href="more.html">Piranha 3DD (2012)</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                               <div>
                                    <div class="page1-box2">
                                        <figure class="page1-img2"><img src="images/page1-img9.jpg" alt=""></figure>
                                        <div class="extra-wrap">
                                            <span>Musical</span>
                                            <a class="link1" href="more.html">Battlefield America (2012)</a>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <a class="link3" href="more.html">See all</a>
                    </article>
                    <article class="grid_4">
                    	<h5 class="main_h5">Latest News</h5>
                        <div class="page1-box3">
                        	<span> Jul 14, 2012</span>
                            <div class="clear"></div>
                            <a class="link1 color-w" href="more.html">Lorem ipsum dolor sit amet conse ctetur</a>
                            <p>Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="page1-box3">
                        	<span> Jul 14, 2012</span>
                            <div class="clear"></div>
                            <a class="link1 color-w" href="more.html">Dolor sit amet conse ctetur</a>
                            <p>Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <div class="page1-box3 last2">
                        	<span> Jul 14, 2012</span>
                            <div class="clear"></div>
                            <a class="link1 color-w" href="more.html">Ipsum dolor sit amet conse ctetur</a>
                            <p>Dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div>
                        <a class="link3" href="more.html">See all</a>
                    </article>
                    <article class="grid_4">
                    	<h5 class="p10 main_h5">trailers</h5>
                        <div class="page1-box4">                        
                        	<figure class="page1-img3">                            
                              <a href="video/video_AS3.swf?width=512&amp;height=288&amp;fileVideo=intro06.flv" class="lightbox-image lightbox-video" data-gal="prettyPhoto[pp_gal]">
                                  <img src="images/page1-img10.jpg" alt="">
                                  <strong class="img-box"></strong>
                              </a>
                          </figure>
                          <div class="extra-wrap">
                              <span>Horror </span>
                              <a class="link1" href="more.html">Prometheus (2012)</a>
                          </div>
                          <div class="clear"></div>
                        </div>
                        <div class="page1-box4">
                        	<figure class="page1-img3">
                              <a href="video/video_AS3.swf?width=512&amp;height=288&amp;fileVideo=intro06.flv" class="lightbox-image lightbox-video" data-gal="prettyPhoto[pp_gal]">
                                  <img src="images/page1-img11.jpg" alt="">
                                  <strong class="img-box"></strong>
                              </a>
                          </figure>
                          <div class="extra-wrap">
                              <span>Animation</span>
                              <a class="link1" href="more.html">Madagascar 3: <br />Europe's Most Wanted (2012)</a>
                          </div>
                          <div class="clear"></div>
                        </div>
                        <div class="page1-box4 last3">
                        	<figure class="page1-img3">
                              <a href="video/video_AS3.swf?width=512&amp;height=288&amp;fileVideo=intro06.flv" class="lightbox-image lightbox-video" data-gal="prettyPhoto[pp_gal]">
                                  <img src="images/page1-img12.jpg" alt="">
                                  <strong class="img-box"></strong>
                              </a>
                          </figure>
                          <div class="extra-wrap">
                              <span>Comedy</span>
                              <a class="link1" href="more.html">Lola Versus (2012) </a>
                          </div>
                          <div class="clear"></div>
                        </div>
                        <a class="link3" href="more.html">See all</a>
                    </article>
                </div>
            </div>
        </div>
    </section>