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
   
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	
	<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	
	<style>
	@charset "UTF-8";
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

* {
	font-family: 'Poppins', sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	border: none;
	text-decoration: none;
	text-transform: capitalize;
	transition: .2s linear;
}


.container3 {
	/*    background:linear-gradient(45deg, blueviolet, lightgreen);*/
	/*    padding:15px 9%;*/
	/*    padding-bottom: 100px;*/
}

.container3 .heading3 {
	text-align: center;
	padding-bottom: 15px;
	color: #fff;
	text-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	font-size: 50px;
}

.container3 .box-container {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(270px, 1fr));
	/*    gap:15px;*/
	gap: 2px;
	box-shadow: 0 5px 10px rgba(0, 0, 0, .2);
	/**/
}

.container3 .box-container .box {
	/*    box-shadow: 0 5px 10px rgba(0,0,0,.2);*/
	border-radius: 5px;
	background: #fff;
	text-align: center;
	padding: 30px 40px;
}

.container3 .box-container .box img {
	height: 80px;
}

.container3 .box-container .box h3 {
	color: #444;
	font-size: 26px;
	padding: 10px 0;
}

.container3 .box-container .box p {
	color: #777;
	font-size: 15px;
	line-height: 1.8;
}

.container3 .box-container .box .btn {
	margin-top: 10px;
	display: inline-block;
	background: #333;
	color: #fff;
	font-size: 17px;
	border-radius: 5px;
	padding: 8px 25px;
}

.container3 .box-container .box .btn:hover {
	letter-spacing: 1px;
}

.container3 .box-container .box:hover {
	box-shadow: 0 10px 15px rgba(0, 0, 0, .3);
	transform: scale(1.03);
}

@media (max-width:768px) {
	.container3 {
		padding: 20px;
	}
}

/* my */

.carddes {
	padding: 15px 9%;
	padding-bottom: 100px;
}

div .box .box1 {
	display: flex;
	align-items: flex-start;
	justify-content: right;
	text-align: right;
}

/*div .box h3{*/
/*	font-size: 50px;*/
/*}*/
div .box .box1 span {
	font-size: 14px;
	text-align: right;
	display: flex;
	right: 20px;
}

div .box .imgbox {
	display: flex;
	align-items: flex-left;
	justify-content: bottom;
	left: 200px;
	width: 40px;
	max-height: 55px;

}

div .box .box3 {
	position: relative;
	float: right;
	justify-content: space-around;
	align-items: flex-start;
}
div .box .box3 span{
	font-size: 14px;
	
}
.item-img2{
		height: 50%; /* Adjust this value based on your design */
    position: relative;
    overflow: hidden;
    border-radius: 2rem;
	}
	.item-info h3 {
    color: black;
    margin-left: 1.5rem;
    margin-top: 0rem;
    margin-bottom: 0rem; /* Adjusted margin-bottom */
    font-size: 1.5rem;
    font-weight: bold;
   
    
}
.item-info h4 {
    margin-left: 1.5rem;
    margin-top: 0rem; /* Adjusted margin-top */
    font-size: 1.2rem;
    padding-top:0.8rem;
    
}
.topic{
	text-align:center;
	font-size:2rem;
}
    .cart-btn2 i {
        font-size: 2rem;
    }

    .food-menu2 {
        padding: 2rem 0;
    }

    .food-item2 {
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
/*.box4 a {*/
/*	padding-bottom: 40px;*/
/*}*/

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

* {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
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

.column {
  float: left;
  width: 30%; /* Adjust the width as needed */
  padding-left: 10px; /* Adjust the left padding as needed */
  padding-right: 10px; /* Adjust the right padding as needed */
  box-sizing: border-box; /* Include padding in the width calculation */
  margin-bottom: 20px; /* Add some margin between columns */
}

@media only screen and (max-width: 600px) {

    * {
        font-size: 13px;
    }

    h1 {
        font-size: 2rem !important;
    }
	.item-img2{
		height: 50%; /* Adjust this value based on your design */
    position: relative;
    overflow: hidden;
    border-radius: 2rem;
	}
	.item-info h3 {
    color: black;
    margin-left: 1.5rem;
    margin-top: 0rem;
    margin-bottom: 0rem; /* Adjusted margin-bottom */
    font-size: 1.5rem;
    font-weight: bold;
   
    
}
.item-info h4 {
    margin-left: 1.5rem;
    margin-top: 0rem; /* Adjusted margin-top */
    font-size: 1.2rem;
    padding-top:0.8rem;
    
}
.topic{
	text-align:center;
	font-size:2rem;
}
    .cart-btn2 i {
        font-size: 2rem;
    }

    .food-menu2 {
        padding: 2rem 0;
    }

    .food-item2 {
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
  padding-left: 70px;
  padding-top: 25px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

.row {
  max-width: 100%;
  overflow-x: hidden; /* Hide horizontal overflow */
}
@media only screen and (max-width: 700px) {
  .column {
   float: left;
  width: 33.3%;
  padding-left: 45px;
  padding-top: 15px;
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
<body style="background-color: #FFFFFF;">


	<%
	/* Checking the user credentials */
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
    String type = request.getParameter("type");

    
    String message = "All Products";

    if (search != null) {
        products = prodDao.searchAllProducts(search);

        if (!products.isEmpty()) {
            // If products are found, redirect to the first product page
            String productId = products.get(0).getProdId();
            response.sendRedirect("AllProducts.jsp?productId=" + productId);
            return; // Stop further processing after the redirect
        }
    } else if (type != null) {
        // Handle type-based search or display all products
        products = prodDao.getAllProductsByType(type);
        message = "Showing Results for '" + type + "'";
    } else {
        products = prodDao.getAllProducts();
    }
	%>

	<jsp:include page="header.jsp" />
	 <!-- Carousel Slider -->
<div id="imageCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">

        <!-- Carousel Items -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/110.png" class="d-block w-100" alt="Image 1">
            </div>
            <div class="carousel-item">
                <img src="images/112.png" class="d-block w-100" alt="Image 2">
            </div>
            <div class="carousel-item">
                <img src="images/114.png" class="d-block w-100" alt="Image 3">
            </div>
            <div class="carousel-item">
                <img src="images/115.png" class="d-block w-100" alt="Image 4">
            </div>
        </div>

        <!-- Previous and Next Buttons -->
        <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>

    </div>

	<!-- wrap starts -->
<div class="row">
  <div class="column" >
    <img src="images/frame1.png" alt="Snow" style="width:70%">
  </div>
  <div class="column">
    <img src="images/frame2.png" alt="Forest" style="width:70%">
  </div>
  <div class="column">
    <img src="images/frame3.png" alt="Mountains" style="width:70%">
  </div>
</div>


	<!-- wrap ends -->
	<div class="container3 carddes">

		<!-- 		<h1 class="heading">our services</h1> -->

		<div class="box-container">

			<div class="box"
				style="background: url(./images/p.jpg) no-repeat; background-size: cover; background-position: center;">
				<div class="box1">
					<h3 style="width: 100%; text-align: right; color: white;">
						Secure Payments <br> with Paypal<br><br>
							<p style="color: #D1CFCF;"> Don't
							have a papal account?<br>Click here to create paypal
								account</p>
					</h3>
				</div>

				<div class="box2">
					<a href="https://www.paypal.com/"
						style="width: 100%; background-color: white; color: blue; font-weight: 500;"
						class="btn">Create Account</a>
				</div>
			</div>

			<div class="box"
				style="background: url(./images/f.jpg) no-repeat; background-size: cover; background-position: center;">
				<div class="box3">
					<h3 style="text-align: right; padding-top: 5px; color: white;">
						We value your <br> feedback<br> <br> <span
							style="font-size: 14px; text-align: right;">
							<p style="padding-left:90px;color:#f2f2f2;">Click
								here to send all your feedbacks and complaints</p></span>
					</h3>
				</div>
				<div class="box4">
					<a href="feedback.jsp" class="btn"
						style="width: 100%; margin-top: 14px; background-color: white; color:#ff9933; font-weight: 500;">Feedback</a>
				</div>

			</div>

		</div>

	</div>
	
	<!-- Best deals starts -->
	 <h1 class="heading">4 Best Deals</h1>
    <section class="align-items-center" id="food-menu-section">
    <div class="container">
   
        <div class="food-menu2">
            <div class="food-item-wrap2 all">
                
                <div class="food-item2 salad-type">
                    <div class="item-wrap2 bottom-up play-on-scroll">
                        <div class="item-img2">
                            <div class="img-holder2 bg-img2" style="background-image: url('images/Pic924007.jpg');"></div>
                        </div>
                        <div class="item-info">
                            <div>
                                <h3>Red Apple - 1Kg</h3>
                                <h4>Rs.1380.00</h4>
                            </div>
                           <form method="post">
                                <button type="submit"
                                    formaction=""
                                    class="cart-btn2"><i class="bx bx-cart-alt"></i></button>
                            </form>
                           
                        </div>
                    </div>
                </div>
                <div class="food-item2 salad-type">
                    <div class="item-wrap2 bottom-up play-on-scroll">
                        <div class="item-img2">
                            <div class="img-holder2 bg-img2" style="background-image: url('images/coco1.jpg');"></div>
                        </div>
                        <div class="item-info">
                            <div>
                                <h3>Fortune Coconut Oil - 1L</h3>
                                <h4>Rs.700.00</h4>
                            </div>
                            
                            <form method="post">
                                <button type="submit"
                                    formaction=""
                                    class="cart-btn2"><i class="bx bx-cart-alt"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="food-item2 salad-type">
                    <div class="item-wrap2 bottom-up play-on-scroll">
                        <div class="item-img2">
                            <div class="img-holder2 bg-img2" style="background-image: url('images/Pic913014.jpg');"></div>
                        </div>
                        <div class="item-info">
                            <div>
                                <h3>Cauliflower</h3>
                                <h4>Rs.990.00</h4>
                            </div>
                            
                            <form method="post">
                                <button type="submit"
                                    formaction=""
                                    class="cart-btn2"><i class="bx bx-cart-alt"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="food-item2 salad-type">
                    <div class="item-wrap2 bottom-up play-on-scroll">
                        <div class="item-img2">
                            <div class="img-holder2 bg-img2" style="background-image: url('images/30.jpg');"></div>
                        </div>
                        <div class="item-info">
                            <div>
                                <h3>Cheese Buttons</h3>
                                <h4>Rs.300.00</h4>
                            </div>
                            <form method="post">
                                <button type="submit"
                                    formaction=""
                                    class="cart-btn2"><i class="bx bx-cart-alt"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                </div>
                </div>
                </div>
                
           
    
</section>

                   
    <!-- best deals ends -->


	
	<jsp:include page="index2.jsp" />
	<%@ include file="footer.html"%>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>