

function validateEmail() {
	var na = $('#name').val()
	if (na == '' || na == null) {
		$('#enteremail').hide();
		$('#emailrequired').show();
		return false
	} else {
		$('#emailrequired').hide();
		$('#enteremail').show();
		return true
	}
	return true
}

function resetForm() {
	window.location.reload();
}

function facebookLogin() {
	FB.getLoginStatus(function(response) {
		if (response.status === 'connected') {
			// logged in and connected user, someone you know
			window.location = "${createLink(controller:'facebook', action:'facebookLogin')}";
		}
	});
}
