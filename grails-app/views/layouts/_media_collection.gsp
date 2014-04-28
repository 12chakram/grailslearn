
<g:each in="${mcMedia}" var="item">
									<article class="grid_2">
                                   		<div class="page1-box1">
                                         	<figure class="page1-img1">
                                         		<a href="http://www.youtube.com/watch?v=p9xrgKSt82o" class="lightbox-image lightbox-video" data-gal="prettyPhoto[pp_gal]">
                                 				<ii:imageTag indirect-imagename="${item.thumbImageName}" height="135"/> 
                                 				<strong class="img-box"></strong>
                             				</a>
                                         	</figure>
                                             <strong>${item.name}</strong>
                                             <p class="p7"></p>
                                             <a class="button-2" href="more.html"><span><span>Read more</span></span></a>
                                         </div>
                                   </article>
</g:each>