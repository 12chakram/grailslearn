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