<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Remove Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	        <link href="css/footer.css" rel="stylesheet">
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
	<div class="container">
		<div class="row"
			style="margin-top: 15px; margin-left: 2px; margin-right: 2px;">
			<form action="./RemoveProductSrv" method="post"
				class="col-md-4 col-md-offset-4"
				style="border: 2px solid black; border-radius: 10px; background-color: #FFE5CC; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h3 style="color: green;">Product Deletion Form</h3>
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
				
			</form>
		</div>
	</div>

	<div class="footer" style="margin-top:90px;">
            <div class="container" >
                
                <div class="row">
                    <div class="col-md-6 col-lg-4">
                        <div class="footer-about">
                            <h3>About Us</h3>
                            <p>
                                Green Supermarket, where sustainability meets convenience. At Green Supermarket, we are committed to providing you with a diverse selection of high-quality, locally-sourced, and eco-friendly products. Our mission is to create a greener shopping experience that not only meets your needs but also aligns with your values.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-8">
                        <div class="row">
                            <div class="col-md-6 col-lg-4">
                                <div class="footer-link">
                                    <h3>Categories</h3>
                                    <a href="organicvege.jsp">Organic Vegetables </a>
						            <a href="organicfruits.jsp">Organic Fruits</a>
						            <a href="grocery.jsp">Grocery Items</a>
						            <a href="Bakery.jsp">Bakery Items</a>
						            <a href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
						            <a href="Drinks.jsp">Beverages & Juices</a>
						            <a href="beauty">Beauty & Healthcare</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="footer-link">
                                    <h3>Useful Links</h3>
                                    <a href="index.jsp">Home</a>
                                    <a href="AllProducts.jsp">All Products</a>
                                    <a href="teams.jsp">About Us</a>
                                    <a href="feedback.jsp">Contact Us</a>
                                    <a href="register.jsp">Sign Up</a>
                                    <a href="login.jsp">Login</a>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4">
                                <div class="footer-contact">
                                    <h3>Get In Touch</h3>
                                    <p><i class="fa fa-map-marker-alt"></i>&nbsp; &nbsp;Pitipana,Homagama</p>
                                    <p><i class="fa fa-phone-alt"></i>&nbsp; 011 123 1234</p>
                                    <p><i class="fa fa-envelope"></i>&nbsp; green@gmail.com</p>
                                    <div class="footer-social">
                                        <a href=""><i class="fab fa-twitter" style="font-size:15px; padding-right: 5px; color: #FEDE00;"></i></a>
                                        <a href=""><i class="fab fa-facebook-f" style="font-size:15px; padding-right: 5px; color: #FEDE00;"></i></a>
                                        <a href=""><i class="fab fa-youtube" style="font-size:15px; padding-right: 5px;color: #FEDE00;"></i></a>
                                        <a href=""><i class="fab fa-instagram" style="font-size:15px; padding-right: 5px; color: #FEDE00;"></i></a>
                                        <a href=""><i class="fab fa-linkedin-in" style="font-size:15px; padding-right: 5px; color: #FEDE00;"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container copyright">
                <div class="row">
                    <div class="col-md-6">
                        <p>&copy; <a href="#">Green Supermarket</a>, All Right Reserved.</p>
                    </div>
                    <div class="col-md-6">
                        <p>Developed By <a href="#">Group A19</a></p>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>