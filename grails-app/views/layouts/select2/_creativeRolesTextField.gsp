<r:script disposition="defer" type="text/javascript">

 function formatCreativeRoleResult(data) {
 	   return  data.personOrg;
 };
 function formatCreativeRoleSelection(data) {
 	   console.log("Format Result: " + data.personOrg);
     return '<div>' + data.personOrg + '</div>';
 };
$(document).ready(function() {
    $("#creativeRoles").val($("#creativeRoles").val().replace("[","").replace("]",""));
	$("#creativeRoles").select2({
	    placeholder: "Creative Roles",
	    minimumInputLength: 2,
	    ajax: { // instead of writing the function to execute the request we use Select2's convenient helper
	        url: "http://localhost:8080/multiplexonline/media/getCreativeRoles?",
	        dataType: 'json',
	        data: function (term, page) {
	            return {
	               name: term,
				   max: 20
	            };
	        },
	        results: function (data, page) { // parse the results into the format expected by Select2.
	            // since we are using custom formatting functions we do not need to alter remote JSON data
	            return {results: data.roles};
	        }
	    },
	    initSelection: function(element, callback) {
	        var resultData = {roles:[
	        <g:if test="${creativeRoles}">
	        <g:each in="${creativeRoles}" var="item">
	        	{id: '${item.id}', personOrg: '${ item.personOrg}'},
	        </g:each>
	        </g:if>
	        ]};
//	        element.value = element.val().replace("[","").replace("]","");
	        $(element.val().replace("[","").replace("]","").split(",")).each(function () {
	        	$.ajax("http://localhost:8080/multiplexonline/media/getCreativeRole?format=json", {
	               data: {
	                    id: this.trim()
	                },
	                dataType: "json"
	            }).done(function(result) { 
//	            	resultData.roles.push(result);
	            	console.log("Pushing Data: " + resultData.roles.length);
	            });
	            
	        });
	        callback(resultData.roles);
	    },
	    multiple: true,
	    formatResult: formatCreativeRoleResult,
		formatSelection: formatCreativeRoleSelection,
	    escapeMarkup: function (m) {
	        return m;
	    }
	});
});
</r:script>