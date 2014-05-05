<script>
$(document).ready(function () {
    $("#movie").val("${media}").select2({
        id: function (object) {
            return object
        },
        ajax: {
            url: function() {
	       			return '/multiplexonline/SOMovie/getMovieList';
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
	    if (!data.id) return data; // optgroup
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