<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<!------font awesome------>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">

<!------fa fa icons-------->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!------------google fonts---------------->
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">

<!-------------Animate CSS-------------->
<link rel="stylesheet" href="css/animate.css">

<!-------------My CSS-------------->
<link rel="stylesheet" href="css/all.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/media.css">

<!-----------Countdown links------------>
<link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/countdown-timer.js"></script>
<!----------Shortcut icon----------->
<link rel="shortcut icon" href="images/logo.png">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Airline Reservation System</title>

</head>

<body>
	<div class="container text-center">
		<h1 class="wow pulse mt-5 pt-5"><b class="mache">AIRLINE <b class="pinktxt">.</b> RESERVATION <b class="pinktxt">.</b> SYSTEM</b></h1>
		<hr>
		<h3 class="pinktxt pb-5"><b> Welcome to Admin Panel</b></h3>
	</div>
	<!---------- FORM STARTS------------>
	<div class="container pb-5 mb-5">
		<div class="row">
		<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-xs-3">
		</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
				<form class="regiform" method="post" action="admin">

					<p class="textbox">Enter your admin  username</p>
					<div class="indiv_inputs">
						<i class="fas fa-user input-icon"></i> <input
							class="input input-field" type="text" name="adminname" 
							value="" required>
					</div>

					<p class="textbox">Enter your password</p>
					<div class="indiv_inputs">
						<i class="fas fa-key input-icon"></i> <input
							class="input input-field" type="password" name="pass"
							 required>
					</div>

					<p class="tiny_txt">
						<input type="checkbox" onclick="pass_vis_func()"
							class="text-right"> Show Password (Enter the password that
						you want for this site only)
					</p>

					<div class="text-center mt-5 mb-4">

						<button type="submit" class="register-btn" name="Login"
							id="">Log-in</button>
					</div>

				</form>

			</div>
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-xs-3">
		</div>

		</div>


	</div>

	<!---------- FORM ENDS------------>
	<!------password visibility------->
	<script>
		function pass_vis_func() {
			var x = document.getElementById("password");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
	</script>


	<!---------------FOOTER STARTS-------------->
	<footer class="footer">
	<div class="container">

		<div class="row wow zoomIn">
			<div
				class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 lefty_center">
				<p>&copy; 2019 COPYRIGHT AIRLINES</p>
			</div>

			<div
				class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 righty_center">
				<p>
					DESIGNED BY <strong>Anika <b class="pinktxt">.</b> Fariha
						<b class="pinktxt">.</b> Ashiq
					</strong>
				</p>
			</div>
		</div>
	</div>
	</footer>
	<!---------------FOOTER ENDS-------------->



	<script src="js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>


	<script src="//code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="js/countdown-timer.js"></script>
</body>
</html>