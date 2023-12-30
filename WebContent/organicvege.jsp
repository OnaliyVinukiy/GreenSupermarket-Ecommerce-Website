<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Green Supermarket</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="stylesheet" href="css/bestdeals.css">
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="css/Navbar.css">
	<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/Navbar.css">
	<style>
	@charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Amaranth&family=Reem+Kufi:wght@400;500;600;700&display=swap');

* {
	font-family: 'Amaranth', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	border: none;
	text-decoration: none;
	text-transform: capitalize;
	transition: .2s linear;
}
.nonebut{
	background-color:none;
}
.topic{
	font-size: 4.5rem;
}
.ts {
	font-size: 14px;
}
	:root {
    --primary-color: #0F9D58;
    --background-color: #f0f3f7;
    --secon-color: #9da2ad;
    --grey: #7a7a7b;
    --white: #ffffff;
}


.container{
	padding-top:10px;
	padding-bottom:20px;
	height:100%;
}

.heading {
    color: #000000;
    font-size: 3rem;
    font-weight: 600;
    margin-top: 1rem; /* Adjust the margin-top value as needed */
    text-align: center;
}

.cart-form {
    display: inline-block; /* Ensures the form doesn't take full width */
}



.cart-btn2:hover {
    background-color: var(--primary-color);
    color: var(--white);
}
.cart-btn2 {
    width: 3rem;
    height: 3rem;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--primary-color);
    font-size: 2.5rem;
    cursor: pointer;
    margin-right:2rem;
    margin-bottom:1.5rem;
    transition: .5s ease-in-out;
    padding: 2rem; /* Add padding to the cart button */
    border-radius: 50%; /* Make the cart button circular */
     background-color: transparent;
}

.cart-btn2:hover {
    background-color: var(--primary-color);
    color: var(--white);
    border-radius: 50%;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Add a subtle shadow on hover */
}

.fullheight {
    height: 100vh;
}

.bg-img2 {
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
}


.food-menu2 {
    margin-top: 1rem; /* Adjust the margin-top value as needed */
}

.food-item-wrap2 {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-start;
    margin-top: 1rem; /* Adjust the margin-top value as needed */
}

.food-item2 {
    width: 25%;
    height: 40rem;
    padding: 1rem;
}

.item-wrap2 {
    height: 100%;
    transition: .4s ease-in-out;
    cursor: pointer;
    border-radius: 2rem;
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px,
        rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
}

.item-wrap2:hover {
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px,
        rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
}

.item-img2 {
    height: 70%; /* Adjust this value based on your design */
    position: relative;
    overflow: hidden;
    border-radius: 2rem;
}


.img-holder2 {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    transition: .5s ease-in-out;
    border-radius: 2rem;
    
}



.item-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
   padding-bottom:15px;
    padding: 0 1rem;
    margin-bottom: 0rem;
    width: 100%;
    padding-left:10px;
}


.item-info h3 {
    color: black;
    margin-left: 1.5rem;
    margin-top: 0rem;
    margin-bottom: 0rem; /* Adjusted margin-bottom */
    font-size: 2rem;
    font-weight: bold;
   
    
}

.item-info h4 {
    margin-left: 1.5rem;
    margin-top: 0rem; /* Adjusted margin-top */
    font-size: 1.8rem;
    padding-top:0.8rem;
    
}

.item-info>div:first-child {
    text-align: left;
}

#food-menu-section {
    
    height:100%;
    margin-top:1px;

}

.food-item-wrap2>div {
    display: none;
}

.food-item-wrap2.all>div {
    display: block;
}

.food-item-wrap2.salad>div.salad-type {
    display: block;
}

.food-item-wrap2.lorem>div.lorem-type {
    display: block;
}

.food-item-wrap2.ipsum>div.ipsum-type {
    display: block;
}

.food-item-wrap2.dolor>div.dolor-type {
    display: block;
}


@media only screen and (max-width: 600px) {

    * {
        font-size: 13px;
    }

    h1 {
        font-size: 2rem !important;
    }

    .cart-btn i {
        font-size: 2rem;
    }

    .food-menu {
        padding: 2rem 0;
    }

    .food-item {
        width: 50%;
        height: 25rem;
    }

    .food-category {
        overflow-y: scroll;
    }

    .food-category button {
        width: max-content;
    }
}
	.column {
  float: left;
  width: 33.33%;
  padding-left: 80px;
  padding-top: 25px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}


@media only screen and (max-width: 700px) {
  .column {
  float: left;
  width: 33.33%;
  padding-left: 0px;
  
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}





	
	</style>
</head>
<body>
<%
    String userName = (String) session.getAttribute("username");
    String password = (String) session.getAttribute("password");
    String userType = (String) session.getAttribute("usertype");

    boolean isValidUser = true;

    if (userType == null || userName == null || password == null || !userType.equals("customer")) {
        isValidUser = false;
    }

    ProductServiceImpl prodDao = new ProductServiceImpl();
    List<ProductBean> products = new ArrayList<ProductBean>();

    String search = request.getParameter("search");
    String type = "OrganicVegetables"; // Set the type to "mobile" to fetch only mobile products
    String message = "Mobile Products"; // Change the message accordingly
    products = prodDao.getAllProductsByType(type);

    if (products.isEmpty()) {
        message = "No Organic Vegetables available";
    }
%>

<jsp:include page="header.jsp" />
<%
	
if ("customer".equalsIgnoreCase(userType) || userType == null) { //CUSTOMER HEADER

	double notf = new CartServiceImpl().getCartSum((String) session.getAttribute("username"));
	%>
<section class="align-items-center" id="food-menu-section">
	<center><h2 class="topic">Organic Vegetables</h2></center>
    <div class="container">
        <div class="food-menu2">
            <div class="food-item-wrap2 all">
                <%
                    for (ProductBean product : products) {
                        int cartQty = new CartServiceImpl().getCartItemCount(userName, product.getProdId());
                %>
                <div class="food-item2 salad-type">
                    <div class="item-wrap2 bottom-up play-on-scroll">
                        <div class="item-img2">
                            <div class="img-holder2 bg-img2" style="background-image: url('<%=request.getContextPath()%>/images/<%=product.getProdImage()%>');"></div>

                        </div>
                        <div class="item-info">
                            <div>
                                <h3><%=product.getProdName()%></h3>
                                <h4>USD <%=product.getProdPrice()%></h4>
                            </div>
                            <form method="post">
                                <button type="submit"
                                    formaction="./AddtoCart?uid=<%=userName%>&pid=<%=product.getProdId()%>&pqty=1"
                                    class="cart-btn2"><i class="bx bx-cart-alt"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</section>
<%
	} else { //ADMIN HEADER
	%>
	<section class="align-items-center" id="food-menu-section">
	<center><h2 class="topic">Organic Vegetables</h2></center>
    <div class="container">
        <div class="food-menu2">
            <div class="food-item-wrap2 all">
                <%
                    for (ProductBean product : products) {
                        int cartQty = new CartServiceImpl().getCartItemCount(userName, product.getProdId());
                %>
                <div class="food-item2 salad-type">
                    <div class="item-wrap2 bottom-up play-on-scroll">
                        <div class="item-img2">
                            <div class="img-holder2 bg-img2" style="background-image: url('<%=request.getContextPath()%>/images/<%=product.getProdImage()%>');"></div>

                        </div>
                        <div class="item-info">
                            <div>
                                <h3><%=product.getProdName()%></h3>
                                <h4>USD <%=product.getProdPrice()%></h4>
                            </div>
                            <form method="post">
                                <button type="submit" formaction="./RemoveProductSrv?prodid=<%=product.getProdId()%>" style="background-color:red; padding:5px; color:white;">Remove
								</button>
								<br>
								<br>
							<button type="submit" formaction="updateProduct.jsp?prodid=<%=product.getProdId()%>" style="background-color:blue; padding:5px; color:white;">Update
							</button>
								<br>
								<br>
							</form>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</section>
<%
	}
	%>
<%@ include file="footer.html"%>
</body>
</html>