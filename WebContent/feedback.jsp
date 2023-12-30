

<%@ page import="com.DAO.FeedbackDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.FeedbackDtls" %>
<%@ page import="java.util.List" %>
<%@ page import="com.green.service.impl.*, com.green.service.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Feedback</title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Amaranth&family=Reem+Kufi:wght@400;500;600;700&display=swap"
        rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="feedstyle.css">
    <!-- Fontawesome Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
   


    <link rel="stylesheet" href="css/feed.css" />
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

    <style type="text/css">
     @import url('https://fonts.googleapis.com/css2?family=Amaranth&family=Reem+Kufi:wght@400;500;600;700&display=swap');
    .mainnav
{
    max-width: 100%; /* Adjust as needed */
}
        .carousel-container{
                z-index: 3;
        }

        .top-navbar {
            background-color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }
        .top-navbar-right {
            display: flex;
            align-items: center;
        }
        .top-navbar a {
            margin-right: 20px;
            text-decoration: none;
            color: black;
            transition: color 0.3s; /* Smooth transition for the underline effect */
        }

        .top-navbar a:hover {
          color: #04A702; 
          text-decoration: none;
        }
        .cart-total {
            font-size: 18px;
            margin-left: 5px;
        }

        .logo {
            width: 200px;
            height: 45px;
        }

        .search-bar {
        width: 400px;
    border: 1px solid grey; /* Add this line to set the border color */
    background-color: transparent;
    font-size: 16px;
    outline: none;
    border-top-left-radius: 20px;
    border-bottom-left-radius: 20px;
    padding-left: 10px;
    height:35px;
    }

    .btn5 {
        width: 100px;
        border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;
        font-size: 16px;
        background-color: #FEDE00;
        border-color: #FEDE00;
        height: 35px;
    }
        .top-navbar-right {
            display: flex;
            align-items: center;
            font-size: 20px;
        }

        .top-navbar-right a {
            margin-right: 20px;
            text-decoration: none;
            color: black;
        }

        
        
        .second-navbar2 {
            background-color: #04A702;
            padding: 10px 60px;
            display: flex;
            z-index: 2;
            
        }
        .second-navbar2 .nav-link2 {
           
            margin: 0; /* Remove default margin */
            padding-top: 5px;
            text-decoration: none;
            color: white;
            font-size: 20px;
            transition: color 0.3s;
            margin-left: 28px; /* Adjust the margin between navlinks */
        }

        .navlinks23 {
            
            padding-top: 5px;
            margin-left: 180px;
            font-size: 20px;
        }
        .wrap{
            padding-left: 40px;
        }

        .second-navbar2 .nav-link2:hover {
            color: yellow; 
        }
        .cart-icon {
            margin-right: 20px;
            color: black;
            text-decoration: none;
            position: relative;
            font-size: 24px;
        }
       .hamburger-menu-links {
            display: none;
        }

        .cart-count {
            position: absolute;
            top: -10px;
            right: -10px;
            background-color: red;
            color: white;
            border-radius: 50%;
            padding: 5px 10px;
            font-size: 14px;
        }
        .hamburger-menu {
            display: none;
            flex-direction: column;
            cursor: pointer;
            padding-top: 10px;
            padding-left: 15px;
        }
        .hamburger-menu div {
            width: 25px; /* Increase the width of the bars */
            height: 3px; /* Increase the height of the bars */
            background-color: black;
            margin: 3px 0; /* Increase the gap between bars */
            transition: 0.4s;
        }
        
        .dropdown-toggle {
    	  display: inline-block;
          padding: 7px 10px;
          width: 150px;
          font-size: 20px;
          cursor: pointer;
          text-align: center;
          text-decoration: none;
          outline: none;
          color: black;
          background-color: #FEDE00;
          border: none;
          border-radius: 15px;
          align-items: center;
          
       }
       .dropdown {
	    position: relative;
	    display: inline-block;
	    margin-left:35px;
	}
		.dropdown-menu {
		    background-color: #FEDE00 !important; /* Set the background color for the entire dropdown */
		    border-radius: 25px; /* Adjust the border-radius for oval shape */
		    width: 180px;
		    position: absolute;
		    padding: 20px 0;
		    position: absolute;
		    top: 100%;
		    left: 0;
		    display: none;
	}

		.dropdown-item {
		    color: black;
		    padding: 25px 15px;
		    transition: color 0.3s;
		    font-size:16px;
		    margin-left: 5px;
		   margin-right: 20px;
		    margin-bottom:10px;
		    border-radius: 10px; 
		}

			.dropdown-item:hover {
			    background-color: transparent !important; 
			    color: #04A702 !important; 
			    text-decoration: none;
			}


		.dropdown:hover .dropdown-menu {
		    display: block;
		}


    @media (max-width: 768px) {
    .dropdown-menu {
        background-color: white !important; /* Set the background color for the entire dropdown in mobile view */
        border-radius: 15px; /* Adjust the border-radius for curved edges in mobile view */
        padding: 10px 0; /* Adjust the top and bottom padding for space between links in mobile view */
    }
	.dropdown {
    
    margin-left:0px;
    background-color:white;
}
    .dropdown-item {
        padding: 10px 15px;
        border-radius: 10px; /* Adjust the border-radius for curved edges in mobile view */
    }

    .dropdown-toggle {
    
          
          font-size: 15px;
          cursor: pointer;
          text-align: left;
          text-decoration: none;
          outline: none;
          color: black;
          background-color:white;
          border: none;
          
          align-items: center;
		}
		.search-bar {
            width: 250px; /* Full width on small screens */
            height:25px;
            margin-top:10px;
            
        }

        

        .btn5 {
            width: 70px; /* Full width on small screens */
            height:25px;
            margin-top:10px;
        }     
        
        .top-navbar {
            flex-direction: column;
            align-items: flex-start;
        }

               
        .top-navbar-right {
            margin-top: 10px;
            display: none;
        }
        .second-navbar2{
            display: none;
        }

        .hamburger-menu {
            display: flex;
        }
		.hamburger-menu {
            display: flex;
        }

        .hamburger-menu-links {
            display: none;
            flex-direction: column;
            background-color: white;
            width: 100%;
            position: absolute;
            top: 60px;
            left: 0;
            z-index: 1;
            color: black;
        }

        .hamburger-menu-links a {
            margin: 0;
            padding: 10px 20px;
            text-align: left;
            color: black;
            z-index: 1;
            text-decoration: none;
            border-bottom: 1px solid #ccc;
            transition: background-color 0.3s;
        }

        .hamburger-menu-links.active {
            display: flex;
        }

            /* Restyle the dropdown menu */
        .hamburger-menu-links .categories-dropdown-content,
        .hamburger-menu-links .nav-link2 {
            margin: 0;
            padding: 10px 20px;
            text-align: left;
            color: black;
            text-decoration: none;
            border-bottom: 1px solid #ccc;
            transition: background-color 0.3s;
        }

        .hamburger-menu-links .categories-dropdown-content:last-child,
        .hamburger-menu-links .nav-link2:last-child {
            border-bottom: none;
        }

        .hamburger-menu-links .categories-dropdown-content:hover,
        .hamburger-menu-links .nav-link2:hover {
            background-color: #f2f2f2;
        }   

}
    

        #form{
            max-width: 100%;
            display: flow;
        }
        #form .container{
            margin:90px;
        }
        .container .content {
            max-width:100%;
        }


        @media (max-width: 950px) {
            .container{
                padding-bottom:50px ;
            }
        }

        @media (max-width: 800px) {
            .container{
                padding-bottom:790px ;
                margin-left: 20px;
            }
            .left-side,.address,.phone,.email,.details{
                font-size: 50%;

            }
        }
        @media (max-width: 480px) {
            .container{
                padding-bottom:1000px ;
                margin-left: 20px;
            }
        }
        @media (max-width: 350px) {
            .container{
                padding-bottom:1200px ;
                margin-left: 10px;
            }
        }




        /* Import Google font - Poppins */
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Amaranth', sans-serif;
        }
        body {
            display: block;
            
            align-items: center;
            justify-content: center;
            justify-items: center;
            min-height: 100vh;
            font-family: 'Amaranth', sans-serif;
            /*background: linear-gradient(to left top, #031A9A, #8B53FF);*/
            background: linear-gradient(to left top, #01D28E, #50dea9);
        }
        section{
            align-content: center;
            justify-content: center;
            justify-items: center;
        }
        .feedback-wrapper {
            max-width: 1100px;
            width: 100%;
            position: relative;
            justify-items: center;
            align-content: center;
            justify-content: center;
        }
        .feedback-wrapper i {
            top: 50%;
            height: 50px;
            width: 50px;
            cursor: pointer;
            font-size: 1.25rem;
            position: absolute;
            text-align: center;
            line-height: 50px;
            background: #fff;
            border-radius: 50%;
            box-shadow: 0 3px 6px rgba(0,0,0,0.23);
            transform: translateY(-50%);
            transition: transform 0.1s linear;
        }
        .feedback-wrapper i:active{
            transform: translateY(-50%) scale(0.85);
        }
        .feedback-wrapper i:first-child{
            left: -22px;
        }
        .feedback-wrapper i:last-child{
            right: -22px;
        }
        .feedback-wrapper .feedback-carousel{
            display: grid;
            grid-auto-flow: column;
            grid-auto-columns: calc((100% / 3) - 12px);
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            gap: 16px;
            border-radius: 8px;
            scroll-behavior: smooth;
            scrollbar-width: none;
        }
        .feedback-carousel::-webkit-scrollbar {
            display: none;
        }
        .feedback-carousel.no-transition {
            scroll-behavior: auto;
        }
        .feedback-carousel.dragging {
            scroll-snap-type: none;
            scroll-behavior: auto;
        }
        .feedback-carousel.dragging .feedback-card {
            cursor: grab;
            user-select: none;
        }
        .feedback-carousel :where(.feedback-card, .img) {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .feedback-carousel .feedback-card {
            scroll-snap-align: start;
            height: 342px;
            list-style: none;
            background: #fff;
            cursor: pointer;
            padding-bottom: 15px;
            flex-direction: column;
            border-radius: 8px;
        }
        .feedback-carousel .feedback-card .img {
            background: #8B53FF;
            height: 148px;
            width: 148px;
            border-radius: 50%;
        }
        .feedback-card .img img {
            width: 140px;
            height: 140px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #fff;
        }
        .feedback-carousel .feedback-card h2 {
            font-weight: 500;
            font-size: 1.56rem;
            margin: 30px 0 5px;
        }
        .feedback-carousel .feedback-card span {
            color: #6A6D78;
            font-size: 1.31rem;
        }

        @media screen and (max-width: 900px) {
            .feedback-wrapper .feedback-carousel {
                grid-auto-columns: calc((100% / 2) - 9px);
            }
        }

        @media screen and (max-width: 600px) {
            .feedback-wrapper .feedback-carousel {
                grid-auto-columns: 100%;
            }
        }

    </style>

</head>
<body>


<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	if (userType == null) { //LOGGED OUT
	%>
	<div class="mainnav">
	<div class="hamburger-menu">
        <div></div>
        <div></div>
        <div></div>
    </div>
    <div class="hamburger-menu-links">
        <a href="index.jsp">Home</a>
        <a href="AllProducts.jsp">All Products</a>
        <a href="teams.jsp">About Us</a>
        <a href="feedback.jsp">Contact Us</a>
        <div class="dropdown">
        <div class="dropdown-toggle" id="categories-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            &nbsp;Categories
        </div>
        <div class="dropdown-menu" aria-labelledby="categories-dropdown-toggle">
            <a class="dropdown-item" href="organicvege.jsp">Organic Vegetables </a>
            <a class="dropdown-item" href="organicfruits.jsp">Organic Fruits</a>
            <a class="dropdown-item" href="grocery.jsp">Grocery Items</a>
            <a class="dropdown-item" href="Bakery.jsp">Bakery Items</a>
            <a class="dropdown-item" href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
            <a class="dropdown-item" href="Drinks.jsp">Beverages & Drinks</a>
            <a class="dropdown-item" href="beauty.jsp">Beauty & Healthcare</a>
        </div>
    </div>
        <a href="register.jsp">Signup</a>
        <a href="Login.jsp">Login</a>
    </div>
	<div class="top-navbar">

        <div>
            <img src="images/logo.png" alt="Logo" class="logo">
        </div>
        <form class="form-inline" action="AllProducts.jsp" method="get">
    <input type="text" class="search-bar" size="50" name="search" placeholder="Search Products..." required>
<button class="btn5" type="submit" style="background-color: #FEDE00;">
    <i class="fas fa-search search-icon"></i> Search
</button>
</form>
        <div class="top-navbar-right">
            <a href="register.jsp">Signup</a>
            <a href="login.jsp">Login</a>
            <a href="#" class="cart-icon">
              <i class="fas fa-shopping-cart"></i>
              

              <span class="cart-total"></span> 

              <span class="cart-total">Rs:</span> 


          </a>
        </div>
    </div>

	<!-- Starting Navigation Bar -->
	<div class="second-navbar2">
        <div class="dropdown">
        <div class="dropdown-toggle" id="categories-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            &nbsp;Categories
        </div>
        <div class="dropdown-menu" aria-labelledby="categories-dropdown-toggle">
            <a class="dropdown-item" href="organicvege.jsp">Organic Vegetables</a>
            <a class="dropdown-item" href="organicfruits.jsp">Organic Fruits</a>
            <a class="dropdown-item" href="grocery.jsp">Grocery Items</a>
            <a class="dropdown-item" href="Bakery.jsp">Bakery Items</a>
            <a class="dropdown-item" href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
            <a class="dropdown-item" href="Drinks.jsp">Beverages & Drinks</a>
            <a class="dropdown-item" href="beauty.jsp">Beauty & Healthcare</a>
        </div>
    </div>

        
        <div class="navlinks23">
        <a href="index.jsp" class="nav-link2">Home</a>
        <a href="AllProducts.jsp" class="nav-link2">All Products</a>
        <a href="orderDetails.jsp" class="nav-link2">Track Orders</a>
        <a href="feedback.jsp" class="nav-link2">Contact Us</a>
        <a href="teams.jsp" class="nav-link2">About Us</a>
        </div>
    </div>
    </div>
    </div>
	<section>
    <div align="center"><h1 style="font-size:50px;margin-top: 30px;color:white;">Feedback Form</h1></div>
</section>
<section id="form" class="container" style="margin-top: 30px;" >
    <div class="content">
        <div class="left-side">
            <div class="address details">
                <i class="fas fa-map-marker-alt" style="color:#1FAB89"></i>
                <div class="topic">Address</div>
                <div class="text-one"><%--Surkhet, NP12--%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="phone details">
                <i class="fas fa-phone-alt" style="color:#1FAB89"></i>
                <div class="topic">Phone</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="email details">
                <i class="fas fa-envelope" style="color:#1FAB89"></i>
                <div class="topic">Email</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"> <%----%></div>
            </div>
        </div>
        <div class="right-side">
            <div class="topic-text " style="color:#1FAB89">Send us a message</div>
            <p>We value your feedback, you can send us message from here. It's our pleasure to help you.</p>

            <c:if test="${not empty added}">
                
            <p style="color:#1FAB89;align-items: center;justify-content: center;">${added}</p>
                <c:remove var="added" scope="session"/>
            </c:if>
            <c:if test="${not empty failed}">
               
                <p style="color:#c92f2f;align-items: center;justify-content: center;">${failed}</p>
                <c:remove var="failed" scope="session"/>

            </c:if>

            <form action="addFeedback" method="post">

                <div class="input-box">
                    <input type="text" placeholder="Enter your name" name="name"/>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Enter your email" name="email"/>
                </div>
                <div class="input-box message-box">
                    <textarea placeholder="Enter your message" name="message"></textarea>
                </div>
                <div class="button">
                    <input type="submit" value="Send Now" style="padding:8px 15px;background-color: #1FAB89;color: white;border:none;font-size: 18px;border-radius:5px;"/>
                </div>
            </form>
        </div>
    </div>
</section>
	<section style="margin-top: 30px;display: flex;margin-bottom: 50px;align-content: center;" >

<div class="feedback-wrapper">
    <i id="feedback-left"  class="fa-solid fa-arrow-left"></i>

    <ul class="feedback-carousel">

        <%
            FeedbackDAOImpl dao=new FeedbackDAOImpl(DBConnect.getConn());
            List<FeedbackDtls> list=dao.getFeedbacks();

            for(FeedbackDtls fdb:list)
            {%>
                <li class="feedback-card" style="padding:10px 15px;overflow-y:auto;">
                    <h2 style="color:#1FAB89"><%=fdb.getFeedname()%></h2>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedmessage()%></span></p>
                </li>
            <%
            }
        %>


    </ul>
    <i id="feedback-right" class="fa-solid fa-arrow-right"></i>
</div>
</section>
<%
	} else if ("customer".equalsIgnoreCase(userType)) { //CUSTOMER HEADER

	double notf = new CartServiceImpl().getCartSum((String) session.getAttribute("username"));
	
	
	%>
	<div class="mainnav">
	<div class="hamburger-menu">
        <div></div>
        <div></div>
        <div></div>
    </div>
    <div class="hamburger-menu-links">
        <a href="index.jsp">Home</a>
        <a href="AllProducts.jsp">All Products</a>
         <a href="orderDetails.jsp">Track Orders</a>
        <a href="teams.jsp">About Us</a>
         <a href="updateDeliveryDetails.jsp">Delivery Details</a>
        <a href="feedback.jsp">Contact Us</a>
        <div class="dropdown">
        <div class="dropdown-toggle" id="categories-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            &nbsp;Categories
        </div>
        <div class="dropdown-menu" aria-labelledby="categories-dropdown-toggle">
            <a class="dropdown-item" href="organicvege.jsp">Organic Vegetables </a>
            <a class="dropdown-item" href="organicfruits.jsp">Organic Fruits</a>
            <a class="dropdown-item" href="grocery.jsp">Grocery Items</a>
            <a class="dropdown-item" href="Bakery.jsp">Bakery Items</a>
            <a class="dropdown-item" href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
            <a class="dropdown-item" href="Drinks.jsp">Beverages & Drinks</a>
            <a class="dropdown-item" href="beauty.jsp">Beauty & Healthcare</a>
        </div>
    </div>
        <a href="register.jsp">Signup</a>
        <a href="./LogoutSrv">Logout</a>
    </div>
	<div class="top-navbar">

        <div>
            <img src="images/logo.png" alt="Logo" class="logo">
        </div>
        
    <form class="form-inline" action="AllProducts.jsp" method="get">
    <input type="text" class="search-bar" size="50" name="search" placeholder=" Search Products..." required>
<button class="btn5" type="submit" style="background-color: #FEDE00;">
    <i class="fas fa-search search-icon"></i> Search
</button>
</form>
        <div class="top-navbar-right">
            <a href="register.jsp">Signup</a>
            <a href="./LogoutSrv">Logout</a>
            <a href="cartDetails.jsp" class="cart-icon">
              <i class="fas fa-shopping-cart"></i>
              

             <span class="cart-total"></span> 

             <span class="cart-total">Rs:<%=notf%></span> 


          </a>
        </div>
    </div>

	<!-- Starting Navigation Bar -->
	<div class="second-navbar2">
        <div class="dropdown">
        <div class="dropdown-toggle" id="categories-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            &nbsp;Categories
        </div>
        <div class="dropdown-menu" aria-labelledby="categories-dropdown-toggle">
            <a class="dropdown-item" href="organicvege.jsp">Organic Vegetables</a>
            <a class="dropdown-item" href="organicfruits.jsp">Organic Fruits</a>
            <a class="dropdown-item" href="grocery.jsp">Grocery Items</a>
            <a class="dropdown-item" href="Bakery.jsp">Bakery Items</a>
            <a class="dropdown-item" href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
            <a class="dropdown-item" href="Drinks.jsp">Beverages & Drinks</a>
            <a class="dropdown-item" href="beauty.jsp">Beauty & Healthcare</a>
        </div>
    </div>

        
        <div class="navlinks23">
        <a href="index.jsp" class="nav-link2">Home</a>
        <a href="AllProducts.jsp" class="nav-link2">All Products</a>
        <a href="orderDetails.jsp" class="nav-link2">Track Orders</a>
        <a href="updateDeliveryDetails.jsp" class="nav-link2">Delivery Details</a>
        <a href="feedback.jsp" class="nav-link2">Contact Us</a>
        <a href="teams.jsp" class="nav-link2">About Us</a>
        </div>
    </div>
    </div>
    </div>
    <section>
    <div align="center"><h1 style="font-size:50px;margin-top: 30px;color:white;">Feedback Form</h1></div>
</section>
<section id="form" class="container" style="margin-top: 30px;" >
    <div class="content">
        <div class="left-side">
            <div class="address details">
                <i class="fas fa-map-marker-alt" style="color:#1FAB89"></i>
                <div class="topic">Address</div>
                <div class="text-one"><%--Surkhet, NP12--%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="phone details">
                <i class="fas fa-phone-alt" style="color:#1FAB89"></i>
                <div class="topic">Phone</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="email details">
                <i class="fas fa-envelope" style="color:#1FAB89"></i>
                <div class="topic">Email</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"> <%----%></div>
            </div>
        </div>
        <div class="right-side">
            <div class="topic-text " style="color:#1FAB89">Send us a message</div>
            <p>We value your feedback, you can send us message from here. It's our pleasure to help you.</p>

            <c:if test="${not empty added}">
                
            <p style="color:#1FAB89;align-items: center;justify-content: center;">${added}</p>
                <c:remove var="added" scope="session"/>
            </c:if>
            <c:if test="${not empty failed}">
               
                <p style="color:#c92f2f;align-items: center;justify-content: center;">${failed}</p>
                <c:remove var="failed" scope="session"/>

            </c:if>

            <form action="addFeedback" method="post">

                <div class="input-box">
                    <input type="text" placeholder="Enter your name" name="name"/>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Enter your email" name="email"/>
                </div>
                <div class="input-box message-box">
                    <textarea placeholder="Enter your message" name="message"></textarea>
                </div>
                <div class="button">
                    <input type="submit" value="Send Now" style="padding:8px 15px;background-color: #1FAB89;color: white;border:none;font-size: 18px;border-radius:5px;"/>
                </div>
            </form>
        </div>
    </div>
</section>
	<section style="margin-top: 30px;display: flex;margin-bottom: 50px;align-content: center;" >

<div class="feedback-wrapper">
    <i id="feedback-left"  class="fa-solid fa-arrow-left"></i>

    <ul class="feedback-carousel">

        <%
            FeedbackDAOImpl dao=new FeedbackDAOImpl(DBConnect.getConn());
            List<FeedbackDtls> list=dao.getFeedbacks();

            for(FeedbackDtls fdb:list)
            {%>
                <li class="feedback-card" style="padding:10px 15px;overflow-y:auto;">
                    <h2 style="color:#1FAB89"><%=fdb.getFeedname()%></h2>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedmessage()%></span></p>
                </li>
            <%
            }
        %>


    </ul>
    <i id="feedback-right" class="fa-solid fa-arrow-right"></i>
</div>
</section>
<%
	} else { //ADMIN HEADER
	%>
	<div class="mainnav">
			<div class="hamburger-menu">
		        <div></div>
		        <div></div>
		        <div></div>
		    </div>
		    <div class="hamburger-menu-links">
		        <a href="index.jsp">Home</a>
		        <a href="adminAllProducts.jsp">All Products</a>
		         <a href="addProduct.jsp">Add Product</a>
		        <a href="adminAllProducts.jsp">Update Products</a>
		        <a href="adminStock.jsp">Stock</a>
		        <a href="unshippedItems.jsp">Orders</a>
		        <div class="categories-dropdown">
    
    <div class="dropdown">
        <div class="dropdown-toggle" id="categories-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <i class="fa fa-chevron-circle-down" font-size="15"></i>&nbsp;Categories
        </div>
        <div class="dropdown-menu" aria-labelledby="categories-dropdown-toggle">
            <a class="dropdown-item" href="organicvege.jsp">Organic Vegetables</a>
            <a class="dropdown-item" href="organicfruits.jsp">Organic Fruits</a>
            <a class="dropdown-item" href="grocery.jsp">Grocery Items</a>
            <a class="dropdown-item" href="Bakery.jsp">Bakery Items</a>
            <a class="dropdown-item" href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
            <a class="dropdown-item" href="Drinks.jsp">Beverages & Drinks</a>
            <a class="dropdown-item" href="beauty.jsp">Beauty & Healthcare</a>
        </div>
    </div>

		        <a href="register.jsp">Signup</a>
		        <a href="./LogoutSrv">Logout</a>
		    </div>
		    
		    </div>
			<div class="top-navbar">
		
		        <div>
		            <img src="images/logo.png" alt="Logo" class="logo">
		        </div>
		        <form class="form-inline" action="AllProducts.jsp" method="get">
    <input type="text" class="search-bar" size="50" name="search" placeholder="Search Products..." required>
<button class="btn5" type="submit" style="background-color: #FEDE00;">
    <i class="fas fa-search search-icon"></i> Search
</button>
</form>




		        <div class="top-navbar-right">
		            <a href="register.jsp">Signup</a>
		            <a href="./LogoutSrv">Logout</a>
		            
		        </div>
		    </div>
		    <div class="second-navbar2">
		        <div class="dropdown">
        <div class="dropdown-toggle" id="categories-dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <i class="fa fa-chevron-circle-down" font-size="15"></i>&nbsp;Categories
        </div>
        <div class="dropdown-menu" aria-labelledby="categories-dropdown-toggle">
            <a class="dropdown-item" href="organicvege.jsp">Organic Vegetables</a>
            <a class="dropdown-item" href="organicfruits.jsp">Organic Fruits</a>
            <a class="dropdown-item" href="grocery.jsp">Grocery Items</a>
            <a class="dropdown-item" href="Bakery.jsp">Bakery Items</a>
            <a class="dropdown-item" href="SnacksandBiscuits.jsp">Biscuits & Snacks</a>
            <a class="dropdown-item" href="Drinks.jsp">Beverages & Drinks</a>
            <a class="dropdown-item" href="beauty.jsp">Beauty & Healthcare</a>
        </div>
    </div>
		        <div class="navlinks23">
		        <a href="index.jsp" class="nav-link2">Home</a>
		        <a href="adminAllProducts.jsp" class="nav-link2">All Products</a>
		        <a href="feedback.jsp" class="nav-link2">Feedbacks</a>
		        <a href="shippedItems.jsp" class="nav-link2">Dispatched</a>
		        <a href="unshippedItems.jsp" class="nav-link2">Undispatched</a>
		        <a href="addProduct.jsp" class="nav-link2">Add Product</a>
		        <a href="adminAllProducts.jsp" class="nav-link2">Update Products</a>
		        <a href="adminStock.jsp" class="nav-link2">Stock</a>
		        </div>
		    </div>
		    </div>
		      <section>
    <div align="center"><h1 style="font-size:50px;margin-top: 30px;color:white;">Feedback Form</h1></div>
</section>
<section id="form" class="container" style="margin-top: 30px;" >
    <div class="content">
        <div class="left-side">
            <div class="address details">
                <i class="fas fa-map-marker-alt" style="color:#1FAB89"></i>
                <div class="topic">Address</div>
                <div class="text-one"><%--Surkhet, NP12--%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="phone details">
                <i class="fas fa-phone-alt" style="color:#1FAB89"></i>
                <div class="topic">Phone</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"><%----%></div>
            </div>
            <div class="email details">
                <i class="fas fa-envelope" style="color:#1FAB89"></i>
                <div class="topic">Email</div>
                <div class="text-one"><%----%></div>
                <div class="text-two"> <%----%></div>
            </div>
        </div>
        <div class="right-side">
            <div class="topic-text " style="color:#1FAB89">Send us a message</div>
            <p>We value your feedback, you can send us message from here. It's our pleasure to help you.</p>

            <c:if test="${not empty added}">
                
            <p style="color:#1FAB89;align-items: center;justify-content: center;">${added}</p>
                <c:remove var="added" scope="session"/>
            </c:if>
            <c:if test="${not empty failed}">
               
                <p style="color:#c92f2f;align-items: center;justify-content: center;">${failed}</p>
                <c:remove var="failed" scope="session"/>

            </c:if>

            <form action="addFeedback" method="post">

                <div class="input-box">
                    <input type="text" placeholder="Enter your name" name="name"/>
                </div>
                <div class="input-box">
                    <input type="text" placeholder="Enter your email" name="email"/>
                </div>
                <div class="input-box message-box">
                    <textarea placeholder="Enter your message" name="message"></textarea>
                </div>
                <div class="button">
                    <input type="submit" value="Send Now" style="padding:8px 15px;background-color: #1FAB89;color: white;border:none;font-size: 18px;border-radius:5px;"/>
                </div>
            </form>
        </div>
    </div>
</section>
	<section style="margin-top: 30px;display: flex;margin-bottom: 50px;align-content: center;" >

<div class="feedback-wrapper">
    <i id="feedback-left"  class="fa-solid fa-arrow-left"></i>

    <ul class="feedback-carousel">

        <%
            FeedbackDAOImpl dao=new FeedbackDAOImpl(DBConnect.getConn());
            List<FeedbackDtls> list=dao.getFeedbacks();

            for(FeedbackDtls fdb:list)
            {%>
                <li class="feedback-card" style="padding:10px 15px;overflow-y:auto;">
                    <h2 style="color:#1FAB89"><%=fdb.getFeedname()%></h2>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedmessage()%></span></p>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedemail()%></span></p>
                </li>
            <%
            }
        %>


    </ul>
    <i id="feedback-right" class="fa-solid fa-arrow-right"></i>
</div>
</section>
<%
	}
	%>
	
<script>
const feedbackWrapper = document.querySelector(".feedback-wrapper");

const feedbackCarousel = document.querySelector(".feedback-carousel");
const firstCardWidth = feedbackCarousel.querySelector(".feedback-card").offsetWidth;
const arrowBtns = document.querySelectorAll(".feedback-wrapper i");
const carouselChildrens = [...feedbackCarousel.children];

let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

// Get the number of cards that can fit in the carousel at once
let cardPerView = Math.round(feedbackCarousel.offsetWidth / firstCardWidth);

// Insert copies of the last few cards to the beginning of the carousel for infinite scrolling
carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
    feedbackCarousel.insertAdjacentHTML("afterbegin", card.outerHTML);
});

// Insert copies of the first few cards to the end of the carousel for infinite scrolling
carouselChildrens.slice(0, cardPerView).forEach(card => {
    feedbackCarousel.insertAdjacentHTML("beforeend", card.outerHTML);
});

// Scroll the carousel to the appropriate position to hide the first few duplicate cards on Firefox
feedbackCarousel.classList.add("no-transition");
feedbackCarousel.scrollLeft = feedbackCarousel.offsetWidth;
feedbackCarousel.classList.remove("no-transition");

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        feedbackCarousel.scrollLeft += btn.id == "feedback-left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    feedbackCarousel.classList.add("dragging");
    // Records the initial cursor and scroll position of the carousel
    startX = e.pageX;
    startScrollLeft = feedbackCarousel.scrollLeft;
}

const dragging = (e) => {
    if (!isDragging) return; // if isDragging is false return from here
    // Updates the scroll position of the carousel based on the cursor movement
    feedbackCarousel.scrollLeft = startScrollLeft - (e.pageX - startX);
}

const dragStop = () => {
    isDragging = false;
    feedbackCarousel.classList.remove("dragging");
}

const infiniteScroll = () => {
    // If the carousel is at the beginning, scroll to the end
    if (feedbackCarousel.scrollLeft === 0) {
        feedbackCarousel.classList.add("no-transition");
        feedbackCarousel.scrollLeft = feedbackCarousel.scrollWidth - (2 * feedbackCarousel.offsetWidth);
        feedbackCarousel.classList.remove("no-transition");
    }
    // If the carousel is at the end, scroll to the beginning
    else if (Math.ceil(feedbackCarousel.scrollLeft) === feedbackCarousel.scrollWidth - feedbackCarousel.offsetWidth) {
        feedbackCarousel.classList.add("no-transition");
        feedbackCarousel.scrollLeft = feedbackCarousel.offsetWidth;
        feedbackCarousel.classList.remove("no-transition");
    }

    // Clear the existing timeout & start autoplay if the mouse is not hovering over the carousel
    clearTimeout(timeoutId);
    if (!feedbackWrapper.matches(":hover")) autoPlay();
}

const autoPlay = () => {
    if (window.innerWidth < 800 || !isAutoPlay) return; // Return if the window is smaller than 800 or isAutoPlay is false
    // Autoplay the carousel after every 2500 ms
    timeoutId = setTimeout(() => feedbackCarousel.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

feedbackCarousel.addEventListener("mousedown", dragStart);
feedbackCarousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
feedbackCarousel.addEventListener("scroll", infiniteScroll);
feedbackWrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
feedbackWrapper.addEventListener("mouseleave", autoPlay);

const hamburgerMenu = document.querySelector('.hamburger-menu');
const hamburgerMenuLinks = document.querySelector('.hamburger-menu-links');

hamburgerMenu.addEventListener('click', () => {
    hamburgerMenu.classList.toggle('active');
    hamburgerMenuLinks.classList.toggle('active');
});
const categoriesDropdownToggle = document.getElementById('categories-dropdown-toggle');
const categoriesDropdownContent = document.querySelector('.categories-dropdown-content1');

categoriesDropdownToggle.addEventListener('click', () => {
    // Calculate the right position of the dropdown relative to the left edge of the button
    const rect = categoriesDropdownToggle.getBoundingClientRect();
    const dropdownWidth = categoriesDropdownContent.offsetWidth;
    const rightPosition = rect.left + dropdownWidth;

    // Set the right position and toggle active class
    categoriesDropdownContent.style.left = `${rightPosition}px`; // Use left instead of right
    categoriesDropdownContent.classList.toggle('active');
});
</script>



</body>
</html>