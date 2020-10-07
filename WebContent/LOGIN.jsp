<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
<title>Airline Reservation System</title>

</head>


<body>
	<!---------------HEADER STARTS---------------->

	<header class="fixed-top navigation">
		<div class="container">
			<!-- A grey horizontal navbar that becomes vertical on small screens -->
			<nav class="navbar navbar-expand-md navbar-expand-lg">

				<!-- Brand/logo -->
				<a class="navbar-brand wow bounceInLeft" href="#"> <img
					src="images/logo.png" height="50" alt="logo" class="logo">
				</a>

				<!----navbar toggle starts----->
				<button class="navbar-toggler wow fadeIn delay_small" type="button"
					data-toggle="collapse" data-target="#collapsibleNavbar">
					<span><i class="fas fa-bars menubar"></i></span>

				</button>
				<!----navbar toggle ends----->

				<!-- Links -->
				<div class="collapse navbar-collapse" id="collapsibleNavbar">

					<ul class="navbar-nav ml-auto wow fadeInDown">
						<li class="nav-item"><a class="nav-link nav-active"
							href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="aboutus.html">About
								us</a></li>

						<li class="nav-item"><a class="nav-link"
							href="Online_Reservation.jsp">Online Reservation</a></li>

						<li class="nav-item"><a class="nav-link" href="LOGIN.jsp">Login</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>

	<!---------------HEADER ENDS---------------->

	<!----------BANNER AREA STARTS------------>

	<div class="banner_pinkarea text-center text-black">
		<section class="banner_area d-flex align-items-center"
			style="background-image: url(images/banner.jpg);">

			<div class="container align-items-center text-center">
				<div class="logincontainer">
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="banner_texts">
								<h1 class="wow pulse">
									<b class="pinktxt">.</b> <b class="mache"> Login</b> <b
										class="pinktxt">.</b>
								</h1>
								<hr>
								<form class="regiform wow fadeIn delay_small" method="post" action="Login">
									<p class="textbox text-left">Enter your user name</p>
									<div class="indiv_inputs">
										<i class="fas fa-user input-icon"></i> <input
											class="input input-field" type="text" name="username"
											value="" required>
									</div>

									<p class="textbox text-left">Enter your password</p>
									<div class="indiv_inputs">
										<i class="fas fa-key input-icon"></i> <input
											class="input input-field" type="password" name="password"
											 required>
									</div>

									<p class="tiny_txt">
										<input type="checkbox" onclick="pass_vis_func()"
											class="text-right"> Show Password (Enter the password
										that you want for this site only)
									</p>
									
									<input type="submit" value="LOGIN" class="register-btn">

								</form>
								<div class="text-right">
								<h5 class="mt-5"><b>New here? Signup now!</b></h5>
								<button class="btn btn-success"><a href="Registration.jsp" class="whttxt">Sign-up</a></button>
								</div>

								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!---------- BANNER AREA ENDS------------>



	<br>
	<a class="nav-link" href="Registration.jsp">Sign Up</a>
	
	<footer class="footer">
        <div class="container">

            <div class="row wow zoomIn">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 lefty_center">
                    <p>&copy; 2019 COPYRIGHT AIRLINES</p>
                </div>

                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 righty_center">
                    <p>DESIGNED BY <strong>Anika <b class="pinktxt">.</b> Fariha <b class="pinktxt">.</b> Ashiq</strong></p>
                </div>
            </div>
        </div>
    </footer>
    <!---------------FOOTER ENDS-------------->
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



    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();

    </script>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


    <script src="//code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="js/countdown-timer.js"></script>

</body>
</html>