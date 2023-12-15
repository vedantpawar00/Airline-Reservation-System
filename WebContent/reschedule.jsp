<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags must come first in the head; any other head content must come after these tags -->

	<title>FlyHigh Airlines</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<body>
					<h3><center> &nbsp;&nbsp; &nbsp;<a href="">Home</a> &nbsp; &nbsp;  <a href="viewflightc.jsp">View Flights</a>&nbsp; &nbsp;<a href="bookflight.jsp">Book Flights</a> &nbsp; &nbsp;<a href="deleteflight.jsp">Cancel Flights</a> &nbsp; &nbsp;<a href="reschedulebook.jsp">Reschedule Flights</a>&nbsp; &nbsp;<a href="index.jsp">Logout</a></center></h3>

<%@ page import="java.sql.*" %>
<%@ page import="com.airline.*" %>
<div id="booking" class="section">
<%
Connection con=BConnection.connect();
	int rid=Integer.parseInt(request.getParameter("fid"));
	Values.setRid(rid);
	
	%>

<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					
					<div class="col-md-7 col-md-offset-1">
						<div class="booking-form">
							<form action="Reschedule"  method="post">
								<div class="form-group">
								<h3>Reschedule my flight</h3>		
								</div>
								<div class="row">
								<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">New Time</span>
											<input class="form-control" type="text" placeholder="new time" name="time">
										</div>
									</div>
									</div>
								<div class="row">
								<div class="col-md-4">
										<div class="form-group">
											<span class="form-label">Travel class</span>
											<select name="class2" class="form-control">
												<option>Economy class</option>
												<option>Business class</option>
												<option>First class</option>
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
								</div>
								
									
								
								
								<div class="form-btn">
									<button class="submit-btn">Reschedule
									 flight</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</body>
</html>