<r:script disposition="defer" type="text/javascript">
$(document).ready(function() {
$("#movie").select2({
    placeholder: "Search for a movie",
    minimumInputLength: 2,
    ajax: { // instead of writing the function to execute the request we use Select2's convenient helper
        url: "http://localhost:8080/multiplexonline/SOMovie/getMovieList?",
        dataType: 'json',
        data: function (term, page) {
            return {
               name: term,
			   max: 20
            };
        },
        results: function (data, page) { // parse the results into the format expected by Select2.
            // since we are using custom formatting functions we do not need to alter remote JSON data
            return {results: data.movies};
        }
    },
    initSelection: function(element, callback) {
        // the input tag has a value attribute preloaded that points to a preselected movie's id
        // this function resolves that id attribute to an object that select2 can render
        // using its formatResult renderer - that way the movie name is shown preselected
        var id=$(element).val();
        if (id!=="") {
            $.ajax("http://localhost:8080/multiplexonline/SOMovie/"+id+"&format=json", {
                data: {
                   
                },
                dataType: "json"
            }).done(function(data) { callback(data); });
        }
    },
    formatResult: formatResult,
	formatSelection: formatSelection,
    escapeMarkup: function (m) {
        return m;
    }
});
		    function format(data) {
		        return data;
		    }
		    function formatResult(data) {
		        return '<div>' + format(data.name) + '</div>';
		    }
		    function formatSelection(data) {
		        return format(data.name);
		    }

});
</r:script>