                        <!-- BEGIN .strict-block -->
						<div class="strict-block">
							
							<div id="layerslider" style="width: 1200px; height: 250px;">
								<g:each in="${featured}" var="mi">
								<!-- slide -->
								<div class="ls-slide" data-ls="slidedelay: 4000; transition3d: 1;">

									<!-- slide background -->
									<g:img class="ls-bg" alt="Background" file="banner_bg.jpg"  />
									<%--<img class="ls-bg" alt="Slide background" src="/multiplexonline/imageIndirect/index?imageName=${mi.thumbImageName}&category="/>--%>
									<%--<ii:imageTag indirect-imagename="${mi.imageName}" class="ls-bg" alt="Slide background"  />
									
									--%><!-- Slide Layer -->
									<p class="style-3 ls-l" style="top: 5px; left: 40px; width: 300px; height: 215px; border: 2px solid #FFFFFF; padding: 10px 10px;"data-ls="delayin: 500; offsetxin: -800; fadein: true; rotatein: 10;">
										<span class="marker">${mi.name}</span><br/>This is a test paragraph to check if it will fit inside the layout slider and how it behaves  aksdjalsjdl;asdl;  k askdj askldj a
										asd asd askdj
									</p>
									<img alt="Slide background" class="ls-l" style="top: 5px; left: 375px; height: 240px" data-ls="offsetxin: 0; offsetyin: -30;" src="/multiplexonline/imageIndirect/index?imageName=${mi.imageName}&category="/>
								
									<p class="style-3 ls-l" style="top: 5px; left: 815px; width: 300px; height: 215px; border: 2px solid #FFFFFF; padding: 10px 10px;"data-ls="delayin: 500; offsetxin: 800; fadein: true; rotatein: 10;">
										<span class="marker">${mi.name}</span><br/>This is a test paragraph to check if it will fit inside the layout slider and how it behaves  aksdjalsjdl;asdl;  k askdj askldj a
										asd asd askdj<br/>
										<a href="#" class="button" style="border:  padding: 10px 10px; foreground-color: #FFFFFF;">Details</a>
									</p>
									
									
									
									<%--<g:img file="slider/image-1.jpg" class="ls-l" style="top: 5px; left: 620px;" alt="Image layer" data-ls="offsetxin: 0; offsetyin: -30;" />
									<g:img file="slider/image-2.jpg" class="ls-l" style="top: 80px; left: 620x;" alt="Image layer" data-ls="delayin: 300; offsetxin: -100; fadein: true; rotatein: 10;" />
									<g:img file="slider/image-3.jpg" class="ls-l" style="top: 120px; left: 620px;" alt="Image layer" data-ls="delayin: 500; offsetxin: -800; fadein: true; rotatein: 10;" />
									<g:img file="slider/image-4.jpg" class="ls-l" style="top: 170px; left: 620px;" alt="Image layer" data-ls="delayin: 800; offsetxin: -1500; fadein: true; rotatein: 10;" />
									
								--%></div>
								</g:each>
							</div>

						<!-- END .strict-block -->
						</div>
