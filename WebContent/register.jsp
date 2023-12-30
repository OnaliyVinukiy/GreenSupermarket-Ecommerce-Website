<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/reg.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/Navbar.css">
	
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Amaranth&family=Reem+Kufi:wght@400;500;600;700&display=swap');



    .maincontainer {
    display: flex;
    flex-direction: column; /* or row, depending on your desired layout */
}
	
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
    margin-left: 24%;
    background: url('images/b.jpg'); /* Add the path to your background image */
    background-size: cover; /* Ensure the background image covers the container */
    background-repeat: no-repeat; /* Prevent background image repetition */
    background-position: center; /* Center the background image */
    z-index:2;
    display: flex;
    flex-direction: column;
    align-items: center;
    
    
}
</style>
</head>
<body style="background-color: #FFFFFF;">
<div class="maincontainer">
   
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
					<p style="color: white; font-size:25px;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div></div>
			<div class="input-box">

				<input type="text" name="username" id="first_name"
					placeholder="Enter full name" required />
			</div>

			<div class="input-box">
				
				<input type="email" name="email"  id="email" 
					placeholder="Enter email address" required />
			</div>
			<div class="column2">
				<div class="input-box">
					 <input type="password" name="password" id="password" placeholder="Enter password" required />
				</div>
				<div class="input-box">
					 <input type="password" name="confirmPassword" placeholder="Enter password again" required />
				</div>
			</div>

			<div class="column2">
				<div class="input-box">
					 <input type="number" name="mobile" id="mobile" placeholder="Enter phone number" required />
				</div>
				<div class="input-box">
					<input type="number" name="pincode" id="pincode" placeholder=" Enter postal code" required />
				</div>
			</div>
			<div class="input-box">
				
				<input type="text" name="address"  id="address" placeholder="Enter the address" required />
			</div>
			
			<button type="submit" class="bdesign">Submit</button>
			<div class="login-link">
				<p style="color: white; font-size:15px;">
					Already have an account? <a href="login.jsp" style="font-size:15px;">Login</a>
				</p>
			</div>
		</form>
	</section>
</div>
	<div class="footercontainer">
	<%@ include file="footer.html"%>
	</div>
</body>
</html>