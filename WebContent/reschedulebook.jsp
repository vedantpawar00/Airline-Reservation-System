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

					<h3><center> &nbsp;&nbsp; &nbsp;<a href="">Home</a> &nbsp; &nbsp;  <a href="viewflightc.jsp">View Flights</a>&nbsp; &nbsp;<a href="bookflight.jsp">Book Flights</a> &nbsp; &nbsp;<a href="deleteflight.jsp">Cancel Flights</a> &nbsp; &nbsp;<a href="reschedulebook.jsp">Reschedule Flights</a>&nbsp; &nbsp;<a href="index.jsp">Logout</a></center></h3>

<div id="booking" class="section">
<%
	Connection con=BConnection.connect();
	
	PreparedStatement psmt=con.prepareStatement("select * from flight");
	ResultSet rs=psmt.executeQuery();
	PreparedStatement psmt1=con.prepareStatement("select * from book where cid=?");
	psmt1.setInt(1,Values.getCid());
	ResultSet rs1=psmt1.executeQuery();

%>	
			
				
					
					<table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Flight ID</th>
                                           <th scope="col">Customer ID</th>
                                        <th scope="col">Flight Name</th>
                                        <th scope="col">Departure</th>
                                        <th scope="col">Arrival</th>
                                        <th scope="col">Time</th>
                                        <th scope="col">Seats</th>
                                        <th scope="col">Class</th> 
                                        <th scope="col">Reschedule</th>
                                        
                                        
                                    </tr>
                                </thead>
                               
		<% while(rs.next() && rs1.next())
			{ %>
			<tr>
			<td><%= rs.getInt(1)%></td>
			<td><%= rs1.getInt(4)%></td>
			<td><%= rs.getString(2)%></td>
			<td><%= rs.getString(3)%></td>
			<td><%= rs.getString(4)%></td>
			<td><%= rs.getString(5)%></td>
			<td><%= rs1.getInt(2)%></td>
			<td><%= rs1.getString(3)%></td>
		
			<td><a href="reschedule.jsp?fid=<%=rs.getInt(1)%>">Reschedule</a></td>
		</tr>		
		<%} %>
		
		
	
                            </table>
                            </div>
                            </div>
                            </div>
                            </div>
                            
                       

</body>
</html>