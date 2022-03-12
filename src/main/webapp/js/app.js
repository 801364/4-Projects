$(document).ready(function () {
	
	//User Login
	
	$("#loginform").on("submit", function(event) {
		event.preventDefault();
		let formData = new FormData(this);

		$.ajax('login', {
			type: 'POST',  // http method
			data: formData,  // data to submit
			success: function(data, status, xhr) {
				if (data.trim() === 'success') {
					window.location = 'profile.jsp';
				} else {
					window.location = 'login.jsp';
				}
			},
			error: function(jqXhr, textStatus, errorMessage) {
				window.location = 'login.jsp';
			},
			contentType: false,
			processData: false
		});

	});
	

	//User Registration 
	$("#register").on("submit", function (event) {
		event.preventDefault();
		let formData = new FormData(this);

		$.ajax('register', {
			type: 'POST',  // http method
			data: formData,  // data to submit
			success: function (data, status, xhr) {
				console.log(data);
				if(data.trim() === 'done'){
					swal("Registered Successfully! We are going to redirect to login page")
						.then((value) => {
							window.location = "login.jsp";
					});
				}else{
					window.location = "register.jsp";
				}
			},
			error: function (jqXhr, textStatus, errorMessage) {
				window.location = "register.jsp";
			},
			contentType: false,
			processData: false
		});
	});


});
