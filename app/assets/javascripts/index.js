$(document).ready(function(){

	$("#home-hero-button").click(function(e) {

		var email = $("#home-hero-email").val();
		window.location.href = "/?email=" + email;
	    
	});

});
