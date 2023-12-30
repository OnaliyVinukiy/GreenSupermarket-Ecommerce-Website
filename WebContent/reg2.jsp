<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/reg.css">
	<style>
	.container1 {
    position: relative;
    max-width: 800px;
    width: 100%;
    padding: 25px;
    backdrop-filter: blur(9px);
    border: 2px solid rgba(255, 255, 255, .2);
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    margin-top: 40px;
    margin-bottom: 30px;
    margin-left: 22%;
    background: url('images/b.jpg'); /* Add the path to your background image */
    background-size: cover; /* Ensure the background image covers the container */
    background-repeat: no-repeat; /* Prevent background image repetition */
    background-position: center; /* Center the background image */
    
    
}
	
	</style>
</head>
<body style="background-color: #FFFFFF;">

	<%@ include file="header.jsp"%>
	<%
	String message = request.getParameter("message");
	%>
	<section class="container1">
		<header>Registration Form</header>
		
		<form action="./RegisterSrv" class="form" method="post">
		<div style="font-weight: bold;" class="text-center">
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div></div>
			<div class="input-box">

				<input type="text" name="username" name="first_name" id="first_name"
					placeholder="Enter full name" required />
			</div>

			<div class="input-box">
				
				<input type="email" name="email"  id="last_name" name="last_name"
					placeholder="Enter email address" required />
			</div>
			<div class="column">
				<div class="input-box">
					 <input type="password" name="password" id="last_name"
							name="last_name"
						placeholder="Enter password" required />
				</div>
				<div class="input-box">
					 <input type="password" name="confirmPassword" name="confirmPassword"
						placeholder="Enter password again" required />
				</div>
			</div>

			<div class="column">
				<div class="input-box">
					 <input type="number" name="mobile" id="last_name"
							name="last_name"
						placeholder="Enter phone number" required />
				</div>
				<div class="input-box">
					<input type="number" name="pincode" id="last_name" name="last_name"
						placeholder=" Enter pin code" required />
				</div>
			</div>
			<div class="input-box">
				
				<input type="text" name="address"  id="last_name" name="last_name"
					placeholder="Enter the address" required />
			</div>
			
			<button type="submit" class="bdesign">Submit</button>
			<div class="login-link">
				<p>
					Already have an account? <a href="login2.jsp" >Login</a>
				</p>
			</div>
		</form>
	</section>


	<%@ include file="footer.html"%>
</body>
</html>