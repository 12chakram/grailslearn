<!DOCTYPE HTML>
<!-- BEGIN html -->
<html lang = "en">
	<!-- BEGIN head -->
	<head>
		<title>Quadrum | Homepage</title>

		<!-- Meta Tags -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />

		<!-- Favicon -->
		<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

		<!-- Stylesheets -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main-stylesheet.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'lightbox.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'shortcodes.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom-fonts.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'custom-colors.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'layerslider.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'responsive.css')}" type="text/css">
		<!--[if lte IE 8]>
		<link type="text/css" rel="stylesheet" href="css/ie-ancient.css" />
		<![endif]-->
		<g:layoutHead/>	
		<r:layoutResources />
	<!-- END head -->
	</head>

	<!-- BEGIN body -->
	<body>
	<!-- BEGIN .boxed -->
		<div class="boxed active">
			<g:render template="/layouts/site/header/main"/>
			<g:render template="/layouts/site/content/main"/>
			<g:render template="/layouts/site/footer/main"/>
		</div>
	
	<!-- Scripts -->
		<g:javascript  src="jscript/jquery-latest.min.js"></g:javascript>
		<g:javascript  src="jscript/theme-scripts.min.js"></g:javascript>
		<g:javascript src="jscript/lightbox.min.js"></g:javascript>
		<g:javascript src="jscript/greensock.js"></g:javascript>
		<g:javascript src="jscript/layerslider.transitions.js"></g:javascript>
		<g:javascript src="jscript/layerslider.kreaturamedia.jquery.js"></g:javascript>
		<script type="text/javascript">

			// Running the code when the document is ready
			jQuery(document).ready(function(){

				// Calling LayerSlider on the target element
				jQuery('#layerslider').layerSlider({
					autoStart: true,
					skin: 'v5',
					responsiveUnder: 1200,
					layersContainer: 1200,
					skinsPath: 'css/skins/',
					youtubePreview: 'hqdefault.jpg',
					autoPlayVideos: false
					// Slider options goes here,
					// please check the 'List of slider options' section in the documentation
				});

			});

		</script>
    	<r:layoutResources />
	</body>
</html>