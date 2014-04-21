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
                                <li class="last7"><a class="last8" href="#tab3">New Songs</a></li>
                            </ul>
                              <div class="tab_container">
                              	<div id="tab1" class="tab_content">
                              		<g:render template="/layouts/media_collection_scroll" model="[mcTitle:'Movie', mcMedia: [movieInstance]]"/>
                              	</div>   
                              	<div id="tab2" class="tab_content">
                               		<g:render template="/layouts/media_right_collection" model="[mcTitle:'Published', mcMediaRight: movieInstance?.mediaRights]"/>
                              	</div>  
                              	<div id="tab3" class="tab_content">
	                              	<g:each in="${movieInstance?.songs*.mediaRights}" var="item">
	                               		<g:render template="/layouts/media_right_collection" model="[mcTitle:'Songs', mcMediaRight: item]"/>
	                              	</g:each>
                              	</div>                          
                             </div>
                          </div>
                    </article>
                </div>
            </div>
        </div>
    </section>