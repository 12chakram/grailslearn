<!DOCTYPE html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
		<%--<script src="http://code.jquery.com/jquery-1.11.0.js" type="text/javascript"></script>
		--%><g:javascript src="jquery1.9.min.js" />
		<%--<g:javascript src="banner-slide.js" />
		--%><title>Multiplex Online</title>
		<%--<script type='text/javascript'>
			$(window).scroll(function () {
			    $('.page_banner').each(function () {
			        var w = $(window).scrollTop();
			        var t = $(this).offset().top - 100;
			        if (w > t) {
			            $('header').css({
			                "background-color": $(this).css('background-color':'#555')
			            });
			        }
			    });
			});
		</script>
		
		--%><g:layoutHead/>	
		<r:layoutResources/>
	</head>
	<body>
		<g:layoutBody/>
		<r:layoutResources />
	</body>
</html>
