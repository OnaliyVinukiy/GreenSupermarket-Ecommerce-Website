<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Update Product</title>
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
	String utype = (String) session.getAttribute("usertype");
	String uname = (String) session.getAttribute("username");
	String pwd = (String) session.getAttribute("password");
	String prodid = request.getParameter("prodid");
	ProductBean product = new ProductServiceImpl().getProductDetails(prodid);
	if (prodid == null || product == null) {
		response.sendRedirect("updateProductById.jsp?message=Please Enter a valid product Id");
		return;
	} else if (utype == null || !utype.equals("admin")) {
		response.sendRedirect("login.jsp?message=Access Denied, Login as admin!!");
		return;
	} else if (uname == null || pwd == null) {
		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
		return;
	}
	%>

	<jsp:include page="header.jsp" />

	<%
	String message = request.getParameter("message");
	%>
	<section class="container1">
		
			<form action="./UpdateProductSrv" method="post"
				class="col-md-6 col-md-offset-3"
				style="border: 2px solid black; border-radius: 10px; background-color:#FEDE00; padding: 10px; margin-left:25px;">
				<div style="font-weight: bold;" class="text-center">
					<div class="form-group">
						<img src="<%=request.getContextPath()%>/images/<%=product.getProdImage()%>"
							alt="Product Image" height="100px" />
						<h2 style="color: green;">Product Update Form</h2>
					</div>

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
				<div class="input-box">
					<input type="hidden" name="pid" class="form-control"
						value="<%=product.getProdId()%>" id="last_name" required>
				</div>
				<div class="input-box">
						<label for="last_name" style="color:black; font-size:15px; padding-top:10px; padding-left:5px;">Product Name</label> <input type="text"
							placeholder="Enter Product Name" name="name" class="form-control"
							value="<%=product.getProdName()%>" id="last_name" required>
					</div>
					<div class="input-box">
						<%
						String ptype = product.getProdType();
						%>
						<label for="producttype" style="color:black; font-size:15px; padding-top:10px; padding-left:5px;">Product Type</label> <select name="type"
							id="producttype" class="form-control" required>
							<option value="OrganicVegetables"
								<%="OrganicVegetables".equalsIgnoreCase(ptype) ? "selected" : ""%>>Organic Vegetables</option>
							<option value="OrganicFruits"
								<%="OrganicFruits".equalsIgnoreCase(ptype) ? "selected" : ""%>>Organic Fruits</option>
							<option value="SnacksandBiscuits"
								<%="SnacksandBiscuits".equalsIgnoreCase(ptype) ? "selected" : ""%>>Snacks and Biscuits</option>
							<option value="GroceryItem"
								<%="laptop".equalsIgnoreCase(ptype) ? "selected" : ""%>>Grocery Items</option>
							<option value="other"
								<%="tablet".equalsIgnoreCase(ptype) ? "selected" : ""%>>Bakery</option>
							<option value="Drinks"
								<%="speaker".equalsIgnoreCase(ptype) ? "selected" : ""%>>Beverage and Drinks</option>
							<option value="beauty"
								<%="other".equalsIgnoreCase(ptype) ? "selected" : ""%>>Beauty & Healthcare</option>
						</select>
					</div>
				
				<div class="input-box">
					<label for="last_name" style="color:black; font-size:15px; padding-top:10px; padding-left:5px;">Product Description</label>
					<textarea name="info" class="form-control text-align-left"
						id="last_name" required><%=product.getProdInfo()%></textarea>
				</div>
				<div class="input-box">
						<label for="last_name" style="color:black; font-size:15px; padding-top:10px; padding-left:5px;">Unit Price</label> <input type="number"
							value="<%=product.getProdPrice()%>"
							placeholder="Enter Unit Price" name="price" class="form-control"
							id="last_name" required>
					</div>
					<div class="input-box">
						<label for="last_name" style="color:black; font-size:15px; padding-top:10px; padding-left:5px;">Stock Quantity</label> <input type="number"
							value="<%=product.getProdQuantity()%>"
							placeholder="Enter Stock Quantity" class="form-control"
							id="last_name" name="quantity" required>
					</div>
				
				
			<div class="input-box">
					<div class="col-md-6 text-center" style="margin-bottom: 2px;">
						<button formaction="adminViewProduct.jsp" class="btn btn-danger" style="margin-top:10px;" >Cancel</button>
					</div>
					</div>
					<div class="col-md-6 text-center">
						<button type="submit" class="btn btn-success" style="margin-top:10px;">Update
							Product</button>
					</div>
				
			</form>
		
	</section>

	<%@ include file="footer.html"%>
</body>
</html>