<g:each in="${mcMediaRight}" var="item">
									<article class="grid_2">
                                   		<div class="page1-box1">
                                         	<figure class="page1-img1">
                                         		<a href="${item.video.streamUrl}" class="lightbox-image lightbox-video" data-gal="prettyPhoto[pp_gal]">
                                 				<ii:imageTag indirect-imagename="${item.media.thumbImageName}" width="210"/> 
                                 				<strong class="img-box"></strong>
                             				</a>
                                         	</figure>
                                             <strong>${item.media.title}</strong>
                                             <p class="p7"></p>
                                             <a class="button-2" href="more.html"><span><span>Read more</span></span></a>
                                         </div>
                                   </article>
</g:each>