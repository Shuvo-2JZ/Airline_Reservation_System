<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>Airline Reservation System</title>

</head>

<body>

<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-success ">
  <a class="navbar-brand" href="index.html"><img src="images/logo.png" height="40" alt="logo" class="logo"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto  pb-3 pt-3">
      <li class="nav-item active">
        <a class="nav-link whttxt" href="index.html">Airline Reservation System <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle whttxt" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Options
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="FlightInsert.jsp">Add flight</a>
          <a class="dropdown-item" href="DeleteFlight.jsp">Delete flight</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="">Cancel</a>
        </div>
      </li>
    </ul>

  </div>
</nav>
</div>

	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 col-xs-12 vl">
			
			<p class="mt-5 pinktxt"><i class="fas fa-calendar-plus"></i><a class="viotxt" href="FlightInsert.jsp"> Add a new Flight </a></p>
			<p class="mt-5 pinktxt"><i class="fas fa-backspace"></i><a class="viotxt" href="DeleteFlight.jsp"> Delete an existing Flight </a></p>
		
			
				
			</div>
			<div class="col-xl-9 col-lg-9 col-md-9 col-sm-12 col-xs-12">
				<div class="">
				<h1><b class="viotxt">Welcome to Admin Panel</b></h1>
				<p> Its an admin-specific platform in an application that allows for access and manipulation of data within the user interface of the site. The admin panel can help user-related functions, such as providing insight into user behavior, dealing with profiles that violate the site’s terms and conditions, and tracking transactions. But you should know that admin sites are not just limited to user-related tasks.</p>
				<p>A well-built admin panel will increase productivity, give insight into data, and help you catch bugs; adding up to greater revenue for your business. By investing in the admin panel early, you are going to build your application much more efficiently and allow your team to do what they need to make your business grow.</p>
				</div>

			</div>
		</div>

	</div>

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