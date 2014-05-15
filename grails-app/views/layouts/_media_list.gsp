<section class="movie_list_section">
	<header>
		<span class="list_title">${mcTitle}</span>
	</header>
	
	<div class="movies_list">
<g:each in="${mcMediaRight}" var="item">
<g:if test="${item instanceof org.schema.VideoObject}">

		<div class="movie_details">
			<div class="image freeflag">
				<div class='free'>Free</div>
				<ii:imageTag indirect-imagename="${item.creativeWork.thumbImageName}"/> 
			</div>
			<div class="description">
     			<g:if test="${item.creativeWork instanceof org.schema.SOMovie}">
					<div class="title1"><a href="movie/${item.creativeWork.sanitizedName}">${item.creativeWork.name}</a></div>
				</g:if>
				<g:if test="${item.creativeWork instanceof org.schema.MOSong}">
					<div class="title1"><a href="movie/${item.creativeWork.movie.sanitizedName}">${item.creativeWork.name}-${item.creativeWork.movie.name}</a></div>
				</g:if>
				<g:if test="${item.creativeWork instanceof org.schema.MOMovieClip}">
					<div class="title1"><a href="movie/${item.creativeWork.movie.sanitizedName}">${item.creativeWork.name}-${item.creativeWork.movie.name}</a></div>
				</g:if>
				<g:if test="${item.creativeWork instanceof org.schema.MOMoviePromotion}">
					<div class="title1"><a href="movie/${item.creativeWork.movie.sanitizedName}">${item.creativeWork.name}-${item.creativeWork.movie.name}</a></div>
				</g:if>
				<div class="title2">${item.creativeWork.inLanguage}</div>
				<div class="VideoTime">2.12.23</div>
			</div>
		</div>
</g:if>
</g:each>
	</div>
</section>
