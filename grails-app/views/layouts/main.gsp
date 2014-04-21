<!DOCTYPE html>
<html lang="en">
	<head>
	
	<script type="text/javascript">
    if (window.location.hash && window.location.hash == '#_=_') {
        window.location.hash = '';
    }
   </script>
	
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		    <script src=" https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		    <script src=" http://ivaynberg.github.io/select2/select2-3.4.1/select2.js"></script>
		    <link rel="stylesheet" type="text/css" href="http://ivaynberg.github.io/select2/select2-3.4.1/select2.css">
		    <link rel="stylesheet" href="${resource(dir: 'css', file: 'select2-bootstrap.css')}" type="text/css">
		<g:javascript library="application"/>	
		<g:render template="/layouts/select2Scripts"/>
		<g:javascript src="jquery.Jcrop.min.js" />
		<g:javascript src="banner-slide.js" />
		<script type="text/javascript">
		  jQuery(function($){
		
		    // How easy is this??
			  $('#target').Jcrop({
		            bgColor:     'black',
		            bgOpacity:   .4,
		            setSelect:   [ 100, 100, 50, 50 ],
		            aspectRatio: 16 / 9, //750/310 
		            onSelect: updateCoords,
		            onChange: updateCoords
		        });
		  });

		  function updateCoords(c) {
			     $('#x1').val(c.x);
			     $('#y1').val(c.y);
			     $('#x2').val(c.x2);
			     $('#y2').val(c.y2);
			 }
		
		</script>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.Jcrop.css')}" type="text/css" />
		<g:layoutHead/>	
		<r:layoutResources />
		<fbg:resources locale="${Locale.getDefault()}" />
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
	</body>
</html>
