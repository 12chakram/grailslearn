<!DOCTYPE html>
<html lang="en">
   <head>
	    <title>Home</title>
	    <meta charset="utf-8">
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
		<g:javascript src="jquery1.9.min.js" />
		<g:javascript src="jquery.featureCarousel.js" />
		<g:javascript src="common.js" />
		<g:javascript src="jquery.leanModal.min.js" />
		<g:javascript src="jquery.liquidcarousel.js" />
<title>Multiplex Online</title>
 <script type="text/javascript">

	function facebookLogin() {
		FB.getLoginStatus(function(response) {
			if (response.status === 'connected') {
				// logged in and connected user, someone you know
				window.location ="${createLink(controller:'facebook', action:'facebookLogin')}";
			}
		});
	}

 </script>
 <fbg:resources locale="${Locale.getDefault()}" />
</head>
<body>
<div class="container">
	<div class="sub_container">
	<div class="page_banner">
        <header class="main_header">
                <aside href="#" class="logo"></aside>
                
                <aside class="search_area">
                	
                	<input type="search" placeholder="Search"/>
                    <input type="button" class="search_button" />
					<div class="search_fields">
						<div class="fields">Title <input type='textbox'/></div>
						<div class="fields">language <select><option>Telugu</option><option>English</option></select></div>
						<div class="fields"><input type="checkbox" checked='checked'/> Genre</div>
						<div class="fields">Release Year <input type='textbox'/></div>
					</div>
                </aside>
                <div class="login_links">
                    	<a id="login_trigger" href="#modal">Sign in</a>
                    </div>
                
        </header>
        <section class="banner_section">
        	<div >
            	<div id="banner-slide">

                    <div class="carousel-container">
    
                          <div id="carousel">
                            <div class="carousel-feature">
                              <a href="#"><img class="carousel-image" src="./images/banner1.jpg"/></a>
                      		</div>
                            <div class="carousel-feature">
                              <a href="#"><img class="carousel-image" src="./images/banner2.jpg"/></a>
                      		</div>
                            <div class="carousel-feature">
                              <a href="#"><img class="carousel-image" src="./images/banner3.jpg"/></a>
                      		</div>
                            <div class="carousel-feature">
                              <a href="#"><img class="carousel-image" src="./images/banner4.jpg"/></a>
                      		</div>
                            <div class="carousel-feature">
                              <a href="#"><img class="carousel-image" src="./images/banner5.jpg"/></a>
                      		</div>
                          </div>
                        
                          <div id="carousel-left"></div>
                          <div id="carousel-right"></div>
                        </div>
                  </div>
            	<!-- <img src="./images/banner1.png" width="1400" height="300"> -->
                <div class="bottom_shade"></div>
            </div>
        </section>
    </div>
			<section class='sort_container'>
				<div class="list_title">Sort by: <span class="sort_by active">Featured</span> 
								<span class="sort_by">Popularity</span> 
								<span class="sort_by">Recent</span> 
								<span class="sort_by">A to Z</span></div>
								<div class="mode_details">
								clip type <select><option>Movies</option></select>
								</div>
			</section>
								
    <section class="movie_list_section">
    	<header><span class="list_title">Free Movies</span></header>
			<div id="liquid1" class="liquid movies_list">
                <span class="previous"></span>
                <div class="wrapper">
                    <ul>
                        <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                         <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                         <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                         <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                       
                        
                        
                    </ul>
                </div>
                <span class="next"></span>
            </div>						
       
    </section>
	<section class="movie_list_section">
    	<header><span class="list_title">Paid Movies</span></header>
									
        <div id="liquid2" class="liquid movies_list">
                <span class="previous"></span>
                <div class="wrapper">
                    <ul>
                        <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                         <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                         <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                         <li><a href="#" title="image 01"><img src="./images/movie_clip1.jpg"  /></a></li>
                        <li><a href="#" title="image 02"><img src="./images/movie_clip2.jpg"/></a></li>
                        <li><a href="#" title="image 03"><img src="./images/movie_clip3.jpg" /></a></li>
                        <li><a href="#" title="image 04"><img src="./images/movie_clip4.jpg" /></a></li>
                    </ul>
                </div>
                <span class="next"></span>
            </div>
    </section>
    </div>
  </div>
 <footer>
	<ul class="footer_menu">
                                        <li><a class="active" href="#">Home</a></li>
                                        <li><a href="#">Reviews</a></li>
                                        <li><a href="#">News</a></li>
                                        <li><a href="#">channels</a></li>
                                        <li><a href="#">tv archive</a></li>
                                        <li><a href="#">Contacts</a></li>
                                    </ul>
            	<div class="copyright">Multiplex Online © 2012 Privacy Policy</div>
            </footer>
            
            <div id="modal" class="popupContainer" style="display:none;">
                                            <header class="popupHeader">
                                                <span class="header_title">Login</span>
                                                <span class="modal_close"><i class="fa fa-times">x</i></span>
                                            </header>
                                            
                                            <section class="popupBody">
                                                <!-- Social Login -->
                                              <form action='/learngrails/j_spring_security_check' method='POST' id='loginForm' class='cssform' autocomplete='off'>                                       
                                                <!-- Username & Password Login form -->
                                                <div class="user_login">
                                                        <label>Email / Username</label>
                                                       <input type='text' class='text_' name='j_username' id='username' tabindex="1" 
                                                        style="height: 30px; width: 286px; margin-left: -14px;" 
                                                         placeholder="UserName"/>
                                                        <br />
                                    
                                                        <label>Password</label>
                                                       	 <input type='password' class='text_' name='j_password' id='password' tabindex="2" 
                                                         style="height: 30px; width: 286px; margin-left: -14px;"
                                                          placeholder="Password"/>
                                                        <br />
                                    
                                                        <div class="checkbox">
                                                            <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'<g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                                            <label for="remember">Remember me on this computer</label>
                                                        </div>
                                    
                                                        <div class="action_btns">
                                                            <div class="one_half">
                                                              <g:link controller="register" action="index" class="btn fa fa-angle-double-left">Register</g:link>
                                                           </div>
                                                            <div class="one_half last">
                                                            	  <input type='submit' id="submit"
                                                             value="Sign in" title="Sign in" class="btn btn_blue" style="padding: 6px 20px !important;background-color:#00A1DD"
                                                               tabindex="3"/>
                                                            </div>
                                                        </div>
                                                      <div class="Share_social_network">
                                                        	<div class="title">Or login with</div>
                                                            <%--<div class="fb_icon"></div>
                                                            --%>
                                                             <div class="g_plus_icon" style="margin-left: 30px;"></div>
                                                             <fb:login-button scope="email,publish_stream" onlogin="facebookLogin();"/>
                                                      </div>
                                                      <g:link action="forgotPassword" controller="register" class="forgot_password">Forgot password?</g:link>
                                                </div>
                                           </form>   
                                      </section>
                                        </div>
                                        
                                        
  <script type="text/javascript">
$("#login_trigger").leanModal({top : 100, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_trigger").click(function(){
			$(".social_login").hide();
			$(".user_login").show();
			return false;
		});

		
		// Going back to Social Forms
		$(".modal_close").click(function(){
			$(".user_login").hide();
			$(".user_register").hide();
			$(".social_login").show();
			$(".header_title").text('Login');
			return false;
		});

	})
</script>
</body>
</html>