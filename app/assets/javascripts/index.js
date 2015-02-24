$(document).ready(function(){

	$("#home-bottom-start-btn").click(function(e) {
		$("#home-hero-email").focus();
	});

	$("#header-start-btn").click(function(e) {

		if (window.location.pathname == "/"){
			$("#home-hero-email").focus();
		} else{
			window.location.href = "/";
			$("#home-hero-email").focus();
		}
	});

	$("#home-hero-button").click(function(e) {

		var email = $("#home-hero-email").val();

		if (email){
			window.location.href = "/?email=" + email;
			mixpanel.track("Submitted Info");
		} else {

			$("#message").css("color","red")
			$("#message").html("Please enter your email address");
			mixpanel.track("Submitted Blank");
		}
		
	    
	});

});
