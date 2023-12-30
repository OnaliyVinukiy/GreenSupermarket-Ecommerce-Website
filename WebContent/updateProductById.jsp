<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
	<link rel="stylesheet" href="css/changes.css">
</head>
<body style="background-color: #FFFFFF;">
	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userType == null || !userType.equals("admin")) {
		response.sendRedirect("login.jsp?message=Access Denied, Login As Admin!!");
		return;

	} else if (userName == null || password == null) {
		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
		return;
	}
	%>

	<jsp:include page="header.jsp" />

	<%
	String message = request.getParameter("message");
	%>
	<section class="container1">
		
			<form action="updateProduct.jsp" method="post"
				class="col-md-4 col-md-offset-4"
				style="border: 2px solid black; border-radius: 10px;  padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h3 style="color: green;">Product Update Form</h3>
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
					
						<label for="last_name">Product Id</label> <input type="text"
							placeholder="Enter Product Id" name="prodid" class="form-control"
							id="last_name" required>
					
				</div>
				<div class="input-box">
					
						<a href="adminViewProduct.jsp" class="btn btn-info">Cancel</a>
					</div>
					<div class="input-box">
						<button type="submit" class="btn btn-danger">Update
							Product</button>
					</div>
				
			</form>
		
	</section>

	<%@ include file="footer.html"%>
</body>
</html>