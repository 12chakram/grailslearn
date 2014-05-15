
$(document).ready(function() {

var carousel = $("#carousel").featureCarousel({
          // include options like this:
          // (use quotes only for string values, and no trailing comma after last option)
          // option: value,
          // option: value
        });

        $("#but_prev").click(function () {
          carousel.prev();
        });
        $("#but_pause").click(function () {
          carousel.pause();
        });
        $("#but_start").click(function () {
          carousel.start();
        });
        $("#but_next").click(function () {
          carousel.next();
        });
		
		   
      });
	  
	  

$(document).ready(function() {
			$('#liquid1').liquidcarousel({height:129, duration:700, hidearrows:false});
			$('#liquid2').liquidcarousel({height:129, duration:700, hidearrows:false});
		});
