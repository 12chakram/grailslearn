<script>
        $(document).ready(function() { 
            $("#language").select2({
        	data:[{id:'Telugu',text:'Telugu'},
              	  {id:'Tamil' ,text:'Tamil'},
              	  {id:'Hindi',text:'Hindi'},
              	  {id:'Malayalam',text:'Malayalam'},
              	  {id:'Kannada',text:'Kannada'}]
        	}); 
        });

		$(document).ready(function () {
			    $("#director").val("${director}").select2({
			        id: function (director) {
			            return director
			        },
			        initSelection : function (element, callback) {
			            var data = [];
			            data.push(element.val());
			            callback(data);
			        },
			        ajax: {
			            url: "/multiplexonline/portal/person/getPersonList?role=Director",
			            dataType: 'json',
			            data: function (enteredText, page) {
			                return {
			                    fullName: enteredText,
			                    max: 20
			                };
			            },
			            results: function (data, page) {
			                return {results: data};
			            }
			        },
			        multiple: false,
			        formatResult: formatResult,
			        formatSelection: formatSelection,
			        escapeMarkup: function (m) {
			            return m;
			        }
			    });
			    function format(data) {
//			        if (!data.id) return data; // optgroup
			        return data + "<br/><br/><img class='flag' src='http://localhost:8080/multiplexonline/static/images/thumbs/apple-touch-icon-retina.png' width=30/>";
			    }
			    function formatResult(data) {
			        return '<div>' + format(data) + '</div>';
			    }
			    function formatSelection(data) {
			        return format(data);
			    }
			});

			$(document).ready(function () {
			    $("#actors").val("${actors}").select2({
			        id: function (actors) {
			            return actors
			        },
			        initSelection : function (element, callback) {
			            var data = [];
			            $(element.val().split(",")).each(function () {
			                data.push(this);
			            });
			            callback(data);
			        },
			        ajax: {
			            url: "/multiplexonline/portal/person/getPersonList?role=Actor",
			            dataType: 'json',
			            data: function (enteredText, page) {
			                return {
			                    fullName: enteredText,
			                    max: 20
			                };
			            },
			            results: function (data, page) {
			                return {results: data};
			            }
			        },
			        multiple: true,
			        formatResult: formatResult,
			        formatSelection: formatSelection,
			        escapeMarkup: function (m) {
			            return m;
			        }
			    });
			    function format(data) {
	//		        if (!data.id) return data; // optgroup
			        return data + "<br/><br/><img class='flag' src='http://localhost:8080/multiplexonline/static/images/thumbs/apple-touch-icon-retina.png' width=30/>";
			    }
			    function formatResult(data) {
			        return '<div>' + format(data) + '</div>';
			    }
			    function formatSelection(data) {
			        return format(data);
			    }
			});
//		    var elm = $('#actors');
//		    var selection = ${actors};
//		    elm.select2({tokenSeparators: [',']});
//		    elm.select2("val", selection);

			$(document).ready(function () {
			    $("#actresses").val("${actresses}").select2({
			        id: function (actors) {
			            return actors
			        },
			        initSelection : function (element, callback) {
			            var data = [];
			            $(element.val().split(",")).each(function () {
//			                data.push({id: this, text: this});
			            	data.push(this);
			            });
			            callback(data);
			        },
			        ajax: {
			            url: "/multiplexonline/portal/person/getPersonList?role=Actress",
			            dataType: 'json',
			            data: function (enteredText, page) {
			                return {
			                    fullName: enteredText,
			                    max: 20
			                };
			            },
			            results: function (data, page) {
			                return {results: data};
			            }
			        },
			        multiple: true,
			        formatResult: formatResult,
			        formatSelection: formatSelection,
			        escapeMarkup: function (m) {
			            return m;
			        }
			    });
			    function format(data) {
	//		        if (!data.id) return data; // optgroup
			        return data + "<br/><br/><img class='flag' src='http://localhost:8080/multiplexonline/static/images/thumbs/apple-touch-icon-retina.png' width=30/>";
			    }
			    function formatResult(data) {
			        return '<div>' + format(data) + '</div>';
			    }
			    function formatSelection(data) {
			        return format(data);
			    }
			});

			$(document).ready(function () {
			    $("#producers").val("${producers}").select2({
			        id: function (data) {
			            return data
			        },
			        initSelection : function (element, callback) {
			            var data = [];
			            $(element.val().split(",")).each(function () {
			                data.push(this);
			            });
			            callback(data);
			        },
			        ajax: {
			            url: "/multiplexonline/portal/person/getPersonList?role=Producer",
			            dataType: 'json',
			            data: function (enteredText, page) {
			                return {
			                    fullName: enteredText,
			                    max: 20
			                };
			            },
			            results: function (data, page) {
			                return {results: data};
			            }
			        },
			        multiple: true,
			        formatResult: formatResult,
			        formatSelection: formatSelection,
			        escapeMarkup: function (m) {
			            return m;
			        }
			    });
			    function format(data) {
	//		        if (!data.id) return data; // optgroup
			        return data + "<br/><br/><img class='flag' src='http://localhost:8080/multiplexonline/static/images/thumbs/apple-touch-icon-retina.png' width=30/>";
			    }
			    function formatResult(data) {
			        return '<div>' + format(data) + '</div>';
			    }
			    function formatSelection(data) {
			        return format(data);
			    }
			});

			$(document).ready(function () {
			    $("#media").val("${media}").select2({
			        id: function (object) {
			            return object
			        },
			        ajax: {
			            url: function() {
				       			return '/multiplexonline/portal/media/getMediaList?mediaKind=' + document.getElementById("videoType").value;
			            },
			            dataType: 'json',
			            data: function (enteredText, page) {
			                return {
			                    title: enteredText,
			                    max: 20
			                };
			            },
			            results: function (data, page) {
			                return {results: data};
			            }
			        },
			        multiple: false,
			        formatResult: formatResult,
			        formatSelection: formatSelection,
			        escapeMarkup: function (m) {
			            return m;
			        }
			    });
			    function format(data) {
	//		        if (!data.id) return data; // optgroup
			        return data;
			    }
			    function formatResult(data) {
			        return '<div>' + format(data) + '</div>';
			    }
			    function formatSelection(data) {
			        return format(data);
			    }
			});
</script>