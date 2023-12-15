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

<div id="booking" class="section">

		<div class="section-center">
		
			<div class="container">
				<div class="row">
					
					<div class="col-md-7 col-md-offset-1" style="float:left; padding-top:120x">
						<div class="booking-form" style="width:400px ;height:390px">
							
							<form action="AddCustomer" method="post">
							
								<div class="form-group">
									<h4>Customer Registration</h4>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Enter Username</span>
											<input class="form-control" type="text" placeholder="Username" name="name">
										</div>
									</div>
								
								
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Enter Email</span>
											<input class="form-control" type="text" placeholder="Email ID" name="mail">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Enter Mobile No</span>
											<input class="form-control" type="text" placeholder="Mobile No" name="mob">
										</div>
									</div>
								
							
									<div class="col-md-6">
										<div class="form-group">
											<span class="form-label">Password</span>
											<input class="form-control" type="password" required name="psd" placeholder="Password">
										</div>
									</div>
									
								</div>
								
								
								<div class="form-btn">
									<button class="submit-btn"  style="width:280px">Create Account</button>
								</div>
							</form>
						</div>
							
						</div>
					
						
					</div>
					
					
			</div>
			
			
			
							</div>
		
		</div>
		
		
	</div>
	
</body>
</html>