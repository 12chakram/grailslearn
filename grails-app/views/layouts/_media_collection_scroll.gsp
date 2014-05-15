
<!-- Carousel Begin -->
<div class="pro_clear"></div>
				<h3 class="pro_title3">${mcTitle}</h3>
				<div class="pro_car-wrapper" height="110">
					<div class="pro_carousel">
						<ul>
							<g:each in="${mcMedia}" var="item">
								<li>
									<a href="video/video_AS3.swf?width=512&amp;height=288&amp;fileVideo=intro06.flv" class="lightbox-image lightbox-video" data-gal="prettyPhoto[pp_gal]">
		                                  <ii:imageTag indirect-imagename="${item.thumbImageName}" width="210"/> 
		                                  <strong class="img-box"></strong>
		                              </a>
								</li>
							</g:each>
							<li><img src="YourImage.jpg" alt=""></li>
						</ul>
						<div class="pro_clear"></div>
					</div>
					<a href="#" class="pro_btn pro_prev pro_car-button" data-type="prevPage"><span></span></a>
					<a href="#" class="pro_btn pro_next pro_car-button" data-type="nextPage"><span></span></a>
				</div>
<!-- Carousel End -->