<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
		<g:javascript src="jquery1.9.min.js" />
		<g:javascript src="jquery.featureCarousel.js" />
		<g:javascript src="common.js" />
		<g:javascript src="jquery.leanModal.min.js" />
		<g:javascript src="jquery.liquidcarousel.js" />
      <title>MultiplexOnline - Login/Register</title>
        <script>
    	function showlogin() {
			$("#lightModal").dialog({
				create: function (event, ui) {
			        $(".ui-widget-header").hide();
			    },
				position: 'center',
				height : 140,
				modal : true
			});
    	}	

    	function facebookLogin() {
    		FB.getLoginStatus(function(response) {
    			if (response.status === 'connected') {
    				// logged in and connected user, someone you know
    				window.location ="${createLink(controller:'facebook', action:'facebookLogin')}";
    			}
    		});
    	}

    	
    	  $("#login_trigger").leanModal({top : 100, overlay : 0.6, closeButton: ".modal_close" });
    	  $("#register_form").leanModal({top : 100, overlay : 0.6, closeButton: ".modal_close" });

    	  	$(function(){
    	  		// Calling Login Form
    	  		$("#login_trigger").click(function(){
    	  			$(".social_login").hide();
    	  			$(".user_login").show();
    	  			return false;
    	  		});

    	  		// Calling Register Form
    	  		$("#register_form").click(function(){
    	  			$(".user_login").hide();
    	  			$(".user_register").show();
    	  			$(".header_title").text('Register');
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
		<calendar:resources lang="en" theme="tiger" theme="blue2"/>
<fbg:resources locale="${Locale.getDefault()}" />
</head>
   <body>
	<g:form action='forgotPassword' name="forgotPasswordForm" autocomplete='off'>
   <div class="container">
	<div class="sub_container">
		<header class="main_header header_bg">
                <aside href="#" class="logo"></aside>
            </header>
        <div class="body_container">
        
	        <g:if test='${emailSent}'>
		<br/>
		<g:message code='spring.security.ui.forgotPassword.sent'/>
		</g:if>
		
		<g:else>
        
        <section class="forgot_content">
        			<div class="text_continer">
                    	<header>Forgot your password?</header>
                       Enter your email address to reset your password. You may need to check your spam folder or unblock no-reply@dropbox.com.
			         <input name="username" placeholder="User Name"  size="35" style="height: 30px" />
                 <div class="clearboth" style="float: right;">
                     <input type="submit" value="Submit">
                 </div>
                    </div>
        			
    		</section>
    		</g:else>
            </div>
    </div>
  </div>
  </g:form>
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
                                                                                    
                                                <!-- Username & Password Login form -->
                                                <div class="user_login">
                                                    <form>
                                                        <label>Email / Username</label>
                                                        <input type="text" />
                                                        <br />
                                    
                                                        <label>Password</label>
                                                        <input type="password" />
                                                        <br />
                                    
                                                        <div class="checkbox">
                                                            <input id="remember" type="checkbox" />
                                                            <label for="remember">Remember me on this computer</label>
                                                        </div>
                                    
                                                        <div class="action_btns">
                                                            <div class="one_half"><a  href="#modal" class="btn"><i class="fa fa-angle-double-left"></i> Register </a></div>
                                                            <div class="one_half last"><a href="#" class="btn btn_blue">Login</a></div>
                                                        </div>
                                                    </form>
                                    
                                                    <a href="#" class="forgot_password">Forgot password?</a>
                                                </div>
                                    
                                                <!-- Register Form -->
                                                <div class="user_register">
                                                    <form>
                                                        <label>Full Name</label>
                                                        <input type="text" />
                                                        <br />
                                    
                                                        <label>Email Address</label>
                                                        <input type="email" />
                                                        <br />
                                    
                                                        <label>Password</label>
                                                        <input type="password" />
                                                        <br />
                                    
                                                        <div class="checkbox">
                                                            <input id="send_updates" type="checkbox" />
                                                            <label for="send_updates">Send me occasional email updates</label>
                                                        </div>
                                    
                                                        <div class="action_btns">
                                                            <div class="one_half"><a href="#" class="btn back_btn"><i class="fa fa-angle-double-left"></i> Back</a></div>
                                                            <div class="one_half last"><a href="#" class="btn btn_blue">Register</a></div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </section>
                                        </div>
  <script type="text/javascript">
$("#login_trigger").leanModal({top : 100, overlay : 0.6, closeButton: ".modal_close" });
$("#register_form").leanModal({top : 100, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_trigger").click(function(){
			$(".social_login").hide();
			$(".user_login").show();
			return false;
		});

		// Calling Register Form
		$("#register_form").click(function(){
			$(".user_login").hide();
			$(".user_register").show();
			$(".header_title").text('Register');
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