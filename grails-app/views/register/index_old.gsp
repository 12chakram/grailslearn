<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'copy.css')}" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
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
    
		</script>
<fbg:resources locale="${Locale.getDefault()}" />
</head>
<body class="homeinner paymentBG themeblue">


    <section class="bodyBG ">  
	<section id="HeaderWrapper">
	<section id="Header" class="rel boxTVHeader">
		<aside class="fl sprite1 abs">
      <a href="http://localhost:8080/multiplexonline/home" data-id="hdr-logo"><img src="../images/logo.png"  alt="MultiplexOnline"  title="MultiplexOnline" ></a>
    </aside>
    <aside class="cl"></aside>
  </section>  
</section>

<aside class="topHght"></aside>
<section class="rel signiFrame" id="signInFrame">
<section style="display: none;" class="playertrans2 transBackBG" id="playtrans2">
<iframe id="iframe_player_login" align="middle"  style="display:none; margin: 0 auto;" frameborder="0" width="790px" height="300px" allowTransparency="true"></iframe>
</section>
</section>

<div id="lightModal" class="divPop" style="display:none;margin-top:-5px;width:500px;margin-left: -25px;">
<div class="inner" style="width: 490px;">
	<div align="right" class="closeBtn"><a class="closeBtn" href="javascript:void(0);">
	      <img width="24px" height="24px" onclick="javascript:lightModal.close();" alt="Close" 
	           src="http://www.boxtv.com/interface/skins/default//images/spacer.gif"></a>
	 </div>

<div class="ttl mrgLR"><div style="text-align:center;" class="txt18 B"></div></div>	 
<section id='loginformContianer'>
<div class="signinPopup">    
   <div class="loginSocial"> 
   <facebookAuth:connect permissions="email,user_about_me"/> 
    <p class="logingoogleSignin fl"><a href="javascript:void(0)" onClick="pushGAEventCodeNav1('NavCF');" id="header_gplogin" tabindex="0">
    <img src="http://www.boxtv.com/interface/skins/default/box-images/spacer.gif" alt="Google+ Login" class="gIcon fl">
    <span class="gplusTxt fl">Sign in with Google</span>
    <span class="cl"></span></a>    
    </p>    
    <p class="cl"></p>    
    </div>
    
    <div class="wdth421"><div class="orDivider rel">or</div>
    <h4 class="loginHdng">Sign in with MultiplexOnline</h4></div>
     <form action='/multiplexonline/j_spring_security_check' method='POST' id='loginForm' class='cssform' autocomplete='off'>
    	<div class="formFieldsContainer" style="width: 300px;">
      <div class="inputCont">
          <input type='text' class='text_' name='j_username' id='username' tabindex="1" style="height: 30px; width: 307px; margin-left: -56px;"
           placeholder="UserName"/>
       </div>
      <div class="inputCont" id="header_userpass_container"> 
      <input type='password' class='text_' name='j_password' id='password' tabindex="2" style="height: 30px; width: 307px; margin-left: -56px;"
      placeholder="Password"/>
      <div class="cl"></div> 
      </div>
      	<p id="remember_me_holder">
				<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
		</p>            
      <p class="btnBlock">
      <input type='submit' id="submit" value="Sign in" title="Sign in" class="btnproperty"
       style="height: 30px;width: 200px; background-color:#0092CF;" tabindex="3"/>
      </p>
      <p class="mrgT25"> <a href="http://localhost:8080/multiplexonline/register/forgotPassword"
       id="forgotPassword" title="Forgot Password?" tabindex="4">Forgot Password?</a> |
       Not a member yet? <a href="http://localhost:8080/multiplexonline/register" title="Register Here" tabindex="5" style="color: green;">Register Here</a>
       </p>
        </div>
  </form>
</div>
</section> 
</div>
</div>
 <section class="top_wide" >
    <div id='subscriptionBannerBlock'><section class="blueBanner rel">
<section class="registerBlueBaner">

<aside class="bannerlft fl"> Experience the <br /> <span>Magic of Movies</span> </aside>
<section class="poster fl">
<img src="http://www.boxtv.com/interface/skins/default/box-images/premium-movies-in.png" /></section>
<aside class="bannerrght fl">In Just <span class="WebRupee">Rs.</span> 499/- for QUARTERLY plan and save <span class="WebRupee">Rs.</span> 98 </aside>
<a href="http://www.boxtv.com/subscribe-now" onClick="" class="btnproperty fr" title="Subscribe Now">Subscribe Now!</a>
<section class="cl"></section>
</section></section>  </div>  </section>
  <section class="mainCont">
  <div class="InnerContentWrapper">   
	<div class="Lft_3ColmnWrapper Col5">
		<div id='registerBlock' class=''>
<section class="cl"></section>
<aside class="registerBox rel">
<h2>Please register for free</h2>
  <p class="font14">To stay connected with your friends and see what they are watching,<br />
    sign in or register to BoxTV using your facebook or google+ account</p>   
   <section class="loginSocial mrgT15"> 
   
   
   <fb:login-button scope="email,publish_stream" onlogin="facebookLogin();" size="large">
	<g:message code="auth.login.facebook"/>
   </fb:login-button>
    </section>
  <p class="ortxt rel"><span class="abs">or</span></p>
  <div id="signupContainer">
  
 
    <g:form action='register' name='registerForm'>
    
    <g:if test='${emailSent}'>
	<br/>
	<g:message code='spring.security.ui.register.sent'/>
	</g:if>
	<g:else>
    
    	<div class="formFieldsContainer">
    	
      <input type="hidden" name="_pagereg_" id="_pagereg_" value="register">
      <ul class="wid405 fl">
      <li>
          <label class="wid112"><b>UserName</b></label>
          <div class="wid270 fl">
            <div>
            
            <g:field type="text" name="username" value="${command?.username}" class="textbox wid253" placeholder="UserName"/>
            
            </div>
          </div>
          <aside class="cl"></aside>
        </li>
      
      <li>
          <label class="wid112"><b>Password</b></label>
          <div class="wid270 fl">
            <div>
             <g:passwordField name="password" value="${command?.password}" class="textbox wid253"/>
            </div>
          </div>
          <aside class="cl"></aside>
        </li>
        
        <li>
          <label class="wid112"><b>Mobile</b></label>
          <div class="wid270 fl">
                        <!--span class="disable padT7 fl">(+91)</span-->
                        <div>
                         <g:textField name="mobile" value="${command?.mobile}" class="textbox wid253"/>
                                 </div>
            <aside class="cl"></aside>
            <span class="exnumb">Eg:+91999999999</span>
          </div>
          <aside class="cl"></aside>
        </li>
        
        <li>
          <label class="wid112"><b>Date of Birth</b></label>
          <div class="fl rel">
            <div class="rightimg">
              <div class="wid270 mrgL3 fl">
               <div class="dropDown mrgR10 fl">
                  <div class="selectGlow">
              		<g:datePicker name="dob" id="dob" value="${command?.dob}" oSelection="['':'-Choose-']" precision="day" years="${1970..2008}" />
              	</div>
              </div>
              </div>
            </div>
          </div>
          <aside class="cl"></aside>
        </li>
        
        
        <%--
                <div> <div class="dropDown mrgR10 fl">
                  <div class="selectGlow">
                    <g:select id="days" name="days" from="${1..31}" keys="${1..31}" value="${command?.days}" />
                  </div>
                </div>
                <div class="dropDown mrgR10 fl">
                  <div class="selectGlow">
                   <g:select id="month" name="month" from="${['January','February','March','April','May','June','July','August','September','October','November','December']}" keys="${1..12}"
                    value="${command?.month}" />
                  </div>
                </div>
                <div class="dropDown mrgR10 fl">
                  <div class="selectGlow">
                     <g:select id="year" name="year" from="${1901..2008}" keys="${1901..2008}" value="${command?.year}"/>
                  </div>
                </div>
                <p class="cl"></p>
              </div>
              --%>
        
        
      </ul>
      
      
      <ul class="wid405 fr">        
        <li>
          <label class="wid112"><b>Email</b></label>
          <div class="wid270 fl">
            <div>
             <span class="required-indicator">*</span>
             <g:field type="email" name="email" value="${command?.email}" class="textbox wid253" required="required"/>
             <g:renderErrors bean="${command}" as="list" field="email"/>
            </div>
          </div>
          <aside class="cl"></aside>
        </li>
        
        <li>
          <label class="wid112"><b>Confirm Password</b></label>
          <div class="wid270 fl">
            <div>
             <g:passwordField name="password2" value="${command?.password2}" class="textbox wid253"/>
            
            </div>
          </div>
          <aside class="cl"></aside>
        </li>
        
        <li>
          <label class="wid112"><b>Gender</b></label>
          <div class="wid270 radioSp fl ">
            <div>
		    Male<input type="radio" name="gender" value="male" checked="checked"/>
			Female<input type="radio" name="gender" value="female" />
			Not to specify<input type="radio" name="gender" value="Notspecify" checked="checked" />
          </div></div>
          <aside class="cl"></aside>
        </li>
        
          <li>
          <label class="wid112"><b>Role</b></label>
          <div class="wid270 radioSp fl ">
            <div style="width: 350px;"> 
            EndUser<input type="radio" name="roles" value="ROLE_END_USER" checked="checked" />
			Publisher User<input type="radio" name="roles" value="ROLE_PUBLISHER_USER" />
			Publisher Admin<input type="radio" name="roles" value="ROLE_PUBLISHER_ADMIN"/>
          </div></div>
          <aside class="cl"></aside>
        </li>
        
      </ul>
            <div class="cl"></div>
           <section class="registerTerms"> 
            <div class="errorSpacing">
          <div class="privacy customcheckLft rel fl">
            <g:checkBox name="TermsOfService" checked="checked" value="${command?.toc}" id="signup_TermsOfService" class="checkbox" tabindex="23"/>
            <label for="signup_TermsOfService">I have read and agree to the <a href="http://www.boxtv.com/terms-conditions" target="_blank">terms and conditions</a> to use, including BoxTV <a href="http://www.boxtv.com/privacy-policy" target="_blank">privacy policy.</a></label> </div>
          <aside class="cl"></aside>
        </div>
        
        <div class="registerBtn">
        <s2ui:submitButton elementId='create' form='registerForm' messageCode='spring.security.ui.register.submit'/>
        <p class="padT7">Already a member? <a href="javascript:void(0)" id="SignInLink"  title="click here" tabindex="25" 
        onclick="showlogin();">click here</a></p> <br class="cl">
          </div>
        </section>
      </div>
      </g:else>
    </g:form>
    <section class="cl"></section>
   <aside class="securecopyright fr copyRegister">&copy; 2013 Times BoxTV</aside>
   <section class="cl"></section>
  </div>
</aside>
</div>
</div>
</div>
</section>
</section>
</body>
</html>