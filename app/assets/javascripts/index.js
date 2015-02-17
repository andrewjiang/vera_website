$(document).ready(function(){

	$("#home-hero-button").click(function(e) {

		var email = $("#home-hero-email").val();

		if (email){
			window.location.href = "/?email=" + email;
		} else {

			$("#message").css("color","red")
			$("#message").html("Please enter your email address");
		}
		
	    
	});

});
