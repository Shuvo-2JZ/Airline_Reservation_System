<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import=" java.io.IOException" import="java.io.PrintWriter"
	import="java.sql.Connection" import="java.sql.DriverManager"
	import="java.sql.ResultSet" import="java.sql.SQLException"
	import="javax.servlet.ServletException"
	import="javax.servlet.annotation.WebServlet"
	import="javax.servlet.http.HttpServlet"
	import="javax.servlet.http.HttpServletRequest"
	import="javax.servlet.http.HttpServletResponse"
	import=" com.mysql.jdbc.Statement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


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
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light bg-success ">
			<a class="navbar-brand" href="index.html"><img
				src="images/logo.png" height="40" alt="logo" class="logo"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto  pb-3 pt-3">
					<li class="nav-item active"><a class="nav-link whttxt"
						href="index.html">Airline Reservation System <span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle whttxt" href=""
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Options </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="FlightInsert.jsp">Add flight</a> <a
								class="dropdown-item" href="DeleteFlight.jsp">Delete flight</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="">Cancel</a>
						</div></li>
				</ul>

			</div>
		</nav>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xl-2 col-lg-2 col-md-2 col-sm-12 col-xs-12 vl">

				<p class="mt-5 pinktxt">
					<i class="fas fa-calendar-plus"></i><a class="viotxt"
						href="FlightInsert.jsp"> Add Flight </a>
				</p>
				<p class="mt-5 pinktxt">
					<i class="fas fa-backspace"></i><a class="viotxt"
						href="DeleteFlight.jsp"> Delete Flight </a>
				</p>



			</div>
			<div class="col-xl-10 col-lg-10 col-md-10 col-sm-12 col-xs-12">
				<div class="">
					<h3 class="mb-5">
						<b class="viotxt">Available Flights</b>
					</h3>
					<div class="table-responsive wow fadeInUp">
						<table class="table">
							<thead>
								<tr class="table-primary">
									<th>ID</th>
									<th>Source</th>
									<th>Destination</th>
									<th>Departure Time</th>
									<th>Departure Date</th>
									<th>Ticket Price</th>
									<th>Airport Name</th>
									<th>AirLine Name</th>
								</tr>
							</thead>

							<%
								String source = (String) request.getAttribute("source");

								String src = "", destination = "", dep_price = "", dep_date = "", dep_time = "", Flt_id = "";

								String airlinename = "", airport = "";
								//String departure_Type=request.getParameter("DepartureType");
								String departure_city = (String) request.getAttribute("DepartureCity");
								String arrival_city = (String) request.getAttribute("ArrivalCity");
								//String DepartureDate=request.getParameter("DepartureDate");

								//out.println(departure_city+arrival_city);	

								try {
									Class.forName("com.mysql.jdbc.Driver");
									//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket", "root", "");

									Statement st = (Statement) con.createStatement();

									ResultSet rs = st.executeQuery(
											"SELECT * FROM `flight_info` INNER JOIN route_info as r ON flight_info.Flight_id=r.Flight_id");
									//		+ " where r.Source='"+departure_city+"' and"
									//	+ " Destination='"+arrival_city+"'");

									Statement st1 = (Statement) con.createStatement();

									//String s = "SELECT * FROM airport_info as b INNER JOIN airline_info as a ON b.Flight_id=a.Flight_id where b.Flight_id IN(SELECT r.`Flight_id` FROM `flight_info` INNER JOIN route_info as r ON flight_info.Flight_id=r.Flight_id)";
									String s = "SELECT * FROM `flight_details`";
									ResultSet rs1 = st1.executeQuery(s);

									while (rs1.next()) {

										Flt_id = (rs1.getString(1));

										dep_time = (rs1.getString(5));
										dep_date = (rs1.getString(4));
										dep_price = (rs1.getString(8));

										src = (rs1.getString(2));
										destination = (rs1.getString(3));

										airlinename = (rs1.getString(6));

										airport = (rs1.getString(7));
							%>
							<tbody>
								<tr>
									<td>
										<%
											out.println(Flt_id);
										%>
									</td>

									<td>
										<%
											out.println(src);
										%>
									</td>
									<td>
										<%
											out.println(destination);
										%>
									</td>
									<td>
										<%
											out.println(dep_time);
										%>
									</td>
									<td>
										<%
											out.println(dep_date);
										%>
									</td>
									<td>
										<%
											out.println(dep_price);
										%>
									</td>
									<td>
										<%
											out.println(airlinename);
										%>
									</td>
									<td>
										<%
											out.println(airport);
										%>
									</td>




								</tr>
							</tbody>
							<%
								}

								} catch (ClassNotFoundException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}

								HttpSession session1 = request.getSession();
								session1.setAttribute("src", src);
								session1.setAttribute("destination", destination);
								session1.setAttribute("dep_time", dep_time);
								session1.setAttribute("dep_date", dep_date);
								session1.setAttribute("dep_price", dep_price);

								session1.setAttribute("airlinename", airlinename);
								session1.setAttribute("airport", airport);
							%>



						</table>


						<div class=" text-right">
						<form action="delete" method="post">


							<b>Enter ID:</b> <input type="text" name="ID"><br> <input
								type="submit" value="Delete" class="btn btn-danger mt-3">


						</form>
						</div>

					</div>


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