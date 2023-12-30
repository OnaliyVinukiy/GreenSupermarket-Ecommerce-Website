<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<%@ page import="net.codejava.* "%>
<!DOCTYPE html>
<html>
<head>
<title>Green Supermarket</title>
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
    flex-direction: column;
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
	String emailId = (String) session.getAttribute("email");
	/* String emailId = request.getParameter("email") */;
	%>
	<%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
	}

	UserService dao = new UserServiceImpl();
	UserBean user = dao.getUserDetails(userName, password);
	if (user == null)
		user = new UserBean("Test User", 98765498765L, "test@gmail.com", "ABC colony, Patna, bihar", 87659, "lksdjf");
	%>
	<section class="container1">
		<header>Update Delivery Details</header>
		
		<form action="./UpdateProfileSrv" class="form" method="post">

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
    <input type="email" name="email" id="email" placeholder="Enter email address" value="<%=user.getEmail()%>" disabled />
    <input type="hidden" name="email" value="<%=user.getEmail()%>" />
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
			
			<button type="submit" class="bdesign">Update</button>
			
		</form>
	</section>
</div>
	<div class="footercontainer">
	<%@ include file="footer.html"%>
	</div>
</body>
</html>