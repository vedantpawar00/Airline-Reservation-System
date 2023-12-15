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
<%@ page import="java.sql.*" %>
<%@ page import="com.airline.*" %>
					<h3><center> &nbsp;&nbsp; &nbsp;<a href="">Home</a> &nbsp; &nbsp;  <a href="">Add Flights</a>&nbsp; &nbsp;<a href="">View Flights</a>&nbsp; &nbsp;<a href="">Logout</a></center></h3>

<div id="booking" class="section">
<%
Connection con=BConnection.connect();
	int fid=Integer.parseInt(request.getParameter("fid"));
	PreparedStatement psmt=con.prepareStatement("delete from flight where fid=?");
	psmt.setInt(1,fid);
	int i=psmt.executeUpdate();
	if(i>0){
		response.sendRedirect("viewflight.jsp");
	}else{
		response.sendRedirect("fail.html");
	}
%>	
			
				
					
					<table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Flight ID</th>
                                        <th scope="col">Flight Name</th>
                                        <th scope="col">Departure</th>
                                        <th scope="col">Arrival</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Business Price</th>
                                        <th scope="col">Economy Price</th>
                                        <th scope="col">First class Price</th>
                                        <th scope="col">Reschedule</th>
                                        <th scope="col">Delete</th>
                                        
                                        
                                    </tr>
                                </thead>
                               
		
			
		
		
	
                            </table>
                            </div>
                            </div>
                            </div>
                            </div>
                            
                       

</body>
</html>