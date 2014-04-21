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
<div class="container">
	<div class="sub_container">
	
        <header class="main_header header_bg">
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
             
                
        </header>
        <div class="body_container">
        <section class="user_register" >
               <g:if test='${emailSent}'>
               <br/>
                  <g:message code='spring.security.ui.register.sent'/>
                </g:if>
                  <g:else> 
        			<div class="registration_left">
                    	 <header class="form_header">User Registration</header>
                         <div class="inline_title">
                         		To stay connected with your friends and see what they are watching,
                         		
                                <div class="Share_social_network">
                                	<span class="title">Sign up with</span>
                                							<div class="g_plus_icon"></div>
                                                        	<%--<div class="fb_icon"></div>
                                                        	--%><fb:login-button scope="email,publish_stream" onlogin="facebookLogin();"/>
                                                      </div>
                                           </div>
                                              </div>
                                              <g:form action='register' name='registerForm'>
        			                          <div class="registration_right">
                                                    <div class="field_area">
                                                    	<div class="label"><label>User Name</label></div>
                                                    	<div class="field">
                                                    	 <g:field type="text" name="username" value="${command?.username}" class="textbox wid253" placeholder="UserName"/>
                                                          </div>
                                                    </div>
                                                    
                                                    
                                                     <div class="field_area">
                                                    	<div class="label"><label>Email Address:</label></div>
                                                    	  <div class="field">
                                                    	    <g:field type="email" name="email" value="${command?.email}" class="textbox wid253" required="required"/>
             													<g:renderErrors bean="${command}" as="list" field="email"/>
                                                    	  </div>
                                                    </div>
                                                    
                                                    <div class="field_area">
                                                    	<div class="label"><label>Mobile:</label></div>
                                                    	<div class="field">  
                                                    	<div>
                                                    	  <g:textField name="mobile" value="${command?.mobile}" class="textbox wid253" placeholder="Eg:+91999999999"/>
                                                         </div>
                                                    	</div>
                                                    </div>
                                                    <div class="field_area">
                                                    <div class="label"><label>Date of Birth:</label></div>
                                                    	  <div class="field">
                                                    	   <calendar:datePicker name="dob" id="dob" value="${command?.dob}" oSelection="['':'-Choose-']" precision="day" years="1970,2008">
                                                    	   </calendar:datePicker>
                                                    	  </div>
                                                    </div>
                                                    <div class="field_area">
                                                    	<div class="label"><label>Password:</label></div>
                                                    	 <div class="field"> 
                                                    	    <g:passwordField name="password" value="${command?.password}" class="textbox wid253"/>
                                                    	 </div>
                                                    </div>
                                                    <div class="field_area">
                                                    	<div class="label"><label>Confirm Password:</label></div>
                                                    	 <div class="field"> 
                                                    	 	  <g:passwordField name="password2" value="${command?.password2}" class="textbox wid253"/>
                                                    	 </div>
                                                    </div>
                                                         <div class="field_area">
                                                          <div class="label"><label>Gender</label></div>
                                                     	<div class="field">
                                                        	<div>
															    Male<input type="radio" name="gender" value="male" checked="checked"/>
																Female<input type="radio" name="gender" value="female" />
																Not to specify<input type="radio" name="gender" value="Notspecify" checked="checked" />
													          </div></div>
                                                        </div>
                                                         <div class="field_area">
		                                                     <div class="label"><label>Verification Code</label></div>
		                                                     <img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}"/>
		                                                    	  <div class="field">
		                                                    	    <g:textField name="captcha" style="float: right; margin-right: 35px; margin-top: -40px; width: 109px;"/>
		                                                    	  </div>
		                                                    </div>
                                                     <div class="checkbox">
                                                           <div class="privacy customcheckLft rel fl">
													            <g:checkBox name="toc" checked="checked" value="${command?.toc}" id="signup_TermsOfService" class="checkbox" tabindex="23"/>
													            <label for="signup_TermsOfService">I agree to the <a href="http://www.boxtv.com/terms-conditions" target="_blank">terms and conditions</a> to use, including MultiplexOnline <a href="http://www.boxtv.com/privacy-policy" target="_blank">privacy policy.</a></label> </div>
													          <aside class="cl"></aside>
        												</div>
                                                        </div>
                                                        <div class="action_btns">
                                                            <div class="one_half">
                                                            <a href="#" class="btn back_btn">
                                                            <i class="fa fa-angle-double-left"></i> Back</a></div>
                                                            <div class="one_half last">
                                                             <input type='submit' id="submit"
                                                             value="Sign up" title="Sign up" class="btn btn_blue" style="padding: 6px 20px !important;background-color:#00A1DD"
                                                               tabindex="3"/>
                                                            </div>
                                                        </div>
                                                 </g:form>
                                                 </g:else>
                                                </div>
                                                
    		</section>
            </div>
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
                                                            <div class="one_half last">
                                                            <a href="#" class="btn btn_blue">Register</a>
                                                            <input type='submit' id="submit"
                                                             value="Sign in" title="Sign in" class="btn btn_blue" style="padding: 6px 20px !important;background-color:#00A1DD"
                                                               tabindex="3"/>
                                                            
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </section>
                                        </div>

</body>
</html>