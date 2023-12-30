<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Add Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
	

</head>
<body style="background-color: #FFFFFF;">
	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userType == null || !userType.equals("admin")) {

		response.sendRedirect("login.jsp?message=Access Denied, Login as admin!!");

	}

	else if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");

	}
	%>

	<jsp:include page="header.jsp" />

	<%
	String message = request.getParameter("message");
	%>
	<section class="container1">
		
			<form action="./AddProductSrv" method="post"
				enctype="multipart/form-data" class="col-md-6 col-md-offset-3"
				style="border: 2px solid black; border-radius: 10px; background-color:#FEDE00; padding: 30px; margin-right:25%;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: green;">Product Addition Form</h2>
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
						<label for="name" style="color:black; font-size:15px;">Product Name</label> <input type="text"
							placeholder="Enter Product Name" name="name" class="form-control"
							id="name" required>
					</div>
					<div class="input-box">
						<label for="producttype" style="color:black; font-size:15px; padding-top:10px;">Product Type</label> <select name="type"
							id="producttype" class="form-control" required>
							<option value="OrganicVegetables">Organic Vegetables</option>
							<option value="OrganicFruits">Organic Fruits</option>
							
							<option value="SnacksandBiscuits">Snacks and Biscuits</option>
							<option value="GroceryItem">Grocery Items</option>
							<option value="other">Bakery</option>
							<option value="Drinks">Beverages & Drinks</option>
							<option value="beauty">Beauty & Healthcare</option>
						</select>
					</div>
			
				<div class="input-box">
					<label for="info" style="color:black; font-size:15px; padding-top:10px;">Product Description</label>
					<textarea name="info" class="form-control" id="info" required></textarea>
				</div>
				<div class="input-box">
					
						<label for="price" style="color:black; font-size:15px; padding-top:10px;">Unit Price</label> <input type="number"
							placeholder="Enter Unit Price" name="price" class="form-control"
							id="price" required>
					</div>
					<div class="input-box">
						<label for="quantity" style="color:black; font-size:15px; padding-top:10px;">Stock Quantity</label> <input type="number"
							placeholder="Enter Stock Quantity" name="quantity"
							class="form-control" id="quantity" required>
					</div>
				
				
					<div class="input-box">
						<label for="image" style="color:black; padding-top:10px; font-size:15px;">Product Image</label> <input type="file"
							placeholder="Select Image" name="image" class="form-control"
							id="image" required>
					</div>
				
				<div class="input-box">
					<div class="col-md-6 text-center" style="margin-bottom: 2px;">
						<button type="reset" class="btn btn-danger" style="margin-top:10px;">Reset</button>
					</div>
					</div>
					<div class="col-md-6 text-center">
						<button type="submit" class="btn btn-success" style="margin-top:10px;">Add Product</button>
					</div>
				
			</form>
		
	</section>

	<%@ include file="footer.html"%>
</body>
</html>