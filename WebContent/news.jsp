<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.DAO.FeedbackDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.FeedbackDtls" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Green Supermarket</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
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

#form{
            max-width: 100%;
            display: flow;
        }
        #form .container{
            margin:90px;
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
section{
            align-content: center;
            justify-content: center;
            justify-items: center;
        }
.wrapper4 {
  max-width: 1100px;
            width: 100%;
            position: relative;
            justify-items: center;
            align-content: center;
            justify-content: center;
}
.wrapper4 i {
  top: 50%;
  height: 50px;
  width: 100px;
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
.wrapper4 i:active{
  transform: translateY(-50%) scale(0.85);
}
.wrapper4 i:first-child{
  left: -22px;
}
.wrapper4 i:last-child{
  right: -22px;
}
.wrapper4 .carousel4{
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
.wrapper4 .carousel4{
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
.carousel4::-webkit-scrollbar {
  display: none;
}
.carousel4.no-transition {
  scroll-behavior: auto;
}
.carousel4.dragging {
  scroll-snap-type: none;
  scroll-behavior: auto;
}
.carousel4.dragging .card4 {
  cursor: grab;
  user-select: none;
}
.carousel4 :where(.card4, .img) {
  display: flex;
  justify-content: center;
  align-items: center;
}
.carousel4 .card4 {
  scroll-snap-align: start;
  height: 342px;
  list-style: none;
  background: #fff;
  cursor: pointer;
  padding-bottom: 15px;
  flex-direction: column;
  border-radius: 8px;
}
.carousel4 .card4 .img {
  background: #8B53FF;
  height: 148px;
  width: 148px;
  border-radius: 50%;
}
.card4 .img img {
  width: 140px;
  height: 140px;
  border-radius: 50%;
  object-fit: cover;
  border: 4px solid #fff;
}
.carousel4 .card4 h2 {
  font-weight: 500;
  font-size: 1.56rem;
  margin: 30px 0 5px;
}
.carousel4 .card4 span {
  color: #6A6D78;
  font-size: 1.31rem;
}
.container4 .content4 .left-side {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-top: 15px;
  position: relative;
}
.content4 .left-side::before {
  content: "";
  position: absolute;
  height: 70%;
  width: 2px;
  right: -15px;
  top: 50%;
  transform: translateY(-50%);
  background: #afafb6;
}
.content4 .left-side .details {
  margin: 14px;
  text-align: center;
}
.content4 .left-side .details i {
  font-size: 30px;
  /*color: #3e2093;*/
  color: #1FAB89;
  margin-bottom: 10px;
}
.content4 .left-side .details .topic {
  font-size: 18px;
  font-weight: 500;
}
.content4 .left-side .details .text-one,
.content4 .left-side .details .text-two {
  font-size: 14px;
  color: #afafb6;
}
.container4 .content4 .right-side {
  width: 75%;
  margin-left: 75px;
}
.content4 .right-side .topic-text {
  font-size: 23px;
  font-weight: 600;
  /*color: #3e2093;*/
  color: #1FAB89;
}
.right-side .input-box4 {
  height: 55px;
  width: 100%;
  margin: 12px 0;
}
.right-side .input-box4 input,
.right-side .input-box4 textarea {
  height: 100%;
  width: 100%;
  border: none;
  outline: none;
  font-size: 16px;
  background: #f0f1f8;
  border-radius: 6px;
  padding: 0 15px;
  resize: none;
}
.right-side .message-box {
  min-height: 110px;
}
.right-side .input-box4 textarea {
  padding-top: 6px;
}
.right-side .button {
  display: inline-block;
  margin-top: 12px;
}
.right-side .button input[type="button"] {
  color: #fff;
  font-size: 18px;
  outline: none;
  border: none;
  padding: 8px 16px;
  border-radius: 6px;
  /*background: #3e2093;*/
  background: #1FAB89;
  cursor: pointer;
  transition: all 0.3s ease;
}
.button input[type="button"]:hover {
  /*background: #5029bc;*/
  background: #1FAB89;
}
.container4 {
  max-width: 100%;
  width: 100%;
  background: #fff;
  border-radius: 6px;
  
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.container4 .content4{
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width:1000px;
}

@media (max-width: 950px) {
  .container4 {
    width: 90%;
    margin-left: 0;
    padding: 30px 40px 40px 35px;
  }
  .container4 .content4 .right-side {
    width: 75%;
    margin-left: 55px;
  }

}
@media (max-width: 820px) {
  .container4 {
    margin: 40px 0 0;/**/
    height: 100%;
    margin-left: 0;
  }
  .container4 .content4 {
    flex-direction: column-reverse;
  }
  .container4.content4 .left-side {
    width: 100%;
    flex-direction: row;
    margin-top: 40px;
    justify-content: center;
    flex-wrap: wrap;
  }
  .container4 .content4 .left-side::before {
    display: none;
  }
  .container4 .content4 .right-side {
    width: 100%;
    margin-left: 0;
  }
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


<jsp:include page="header.jsp" />
<div class="feedback-container">
<section>
    <div align="center"><h1 style="font-size:50px;margin-top: 30px;color:white;">Feedback Form</h1></div>
</section>
<section id="form2" class="container4" style="margin-top: 30px;" >
    <div class="content4">
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

                <div class="input-box4">
                    <input type="text" placeholder="Enter your name" name="name"/>
                </div>
                <div class="input-box4">
                    <input type="text" placeholder="Enter your email" name="email"/>
                </div>
                <div class="input-box4 message-box4">
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

<div class="wrapper4">
    <i id="left"  class="fa-solid fa-arrow-left"></i>
    <ul class="carousel4">

        <%
            FeedbackDAOImpl dao=new FeedbackDAOImpl(DBConnect.getConn());
            List<FeedbackDtls> list=dao.getFeedbacks();

            for(FeedbackDtls fdb:list)
            {%>
                <li class="card4" style="padding:10px 15px;overflow-y:auto;">
                    <h2 style="color:#1FAB89"><%=fdb.getFeedname()%></h2>
                    <p><span style="font-size: 15px;text-align: justify;"><%=fdb.getFeedmessage()%></span></p>
                </li>
            <%
            }
        %>


    </ul>
    <i id="right" class="fa-solid fa-arrow-right"></i>
</div>
</section>
</div>
<%@ include file="footer.html"%>
<script>
const wrapper4 = document.querySelector(".wrapper4");
const carousel4 = document.querySelector(".carousel4");
const firstCardWidth = carousel.querySelector(".card4").offsetWidth;
const arrowBtns = document.querySelectorAll(".wrapper4 i");
const carousel4Childrens = [...carousel4.children];

let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

// Get the number of cards that can fit in the carousel at once
let cardPerView = Math.round(carousel4.offsetWidth / firstCardWidth);

// Insert copies of the last few cards to beginning of carousel for infinite scrolling
carousel4Childrens.slice(-cardPerView).reverse().forEach(card4 => {
    carousel4.insertAdjacentHTML("afterbegin", card4.outerHTML);
});

// Insert copies of the first few cards to end of carousel for infinite scrolling
carousel4Childrens.slice(0, cardPerView).forEach(card4 => {
    carousel4.insertAdjacentHTML("beforeend", card4.outerHTML);
});

// Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
carousel4.classList.add("no-transition");
carousel4.scrollLeft = carousel4.offsetWidth;
carousel4.classList.remove("no-transition");

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel4.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    carousel4.classList.add("dragging");
    // Records the initial cursor and scroll position of the carousel
    startX = e.pageX;
    startScrollLeft = carousel4.scrollLeft;
}

const dragging = (e) => {
    if(!isDragging) return; // if isDragging is false return from here
    // Updates the scroll position of the carousel based on the cursor movement
    carousel4.scrollLeft = startScrollLeft - (e.pageX - startX);
}

const dragStop = () => {
    isDragging = false;
    carousel4.classList.remove("dragging");
}

const infiniteScroll = () => {
    // If the carousel is at the beginning, scroll to the end
    if(carousel4.scrollLeft === 0) {
        carousel4.classList.add("no-transition");
        carousel4.scrollLeft = carousel4.scrollWidth - (2 * carousel4.offsetWidth);
        carousel4.classList.remove("no-transition");
    }
    // If the carousel is at the end, scroll to the beginning
    else if(Math.ceil(carousel4.scrollLeft) === carousel4.scrollWidth - carousel4.offsetWidth) {
        carousel4.classList.add("no-transition");
        carousel4.scrollLeft = carousel4.offsetWidth;
        carousel4.classList.remove("no-transition");
    }

    // Clear existing timeout & start autoplay if mouse is not hovering over carousel
    clearTimeout(timeoutId);
    if(!wrapper.matches(":hover")) autoPlay();
}

const autoPlay = () => {
    if(window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
    // Autoplay the carousel after every 2500 ms
    timeoutId = setTimeout(() => carousel4.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

carousel4.addEventListener("mousedown", dragStart);
carousel4.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
carousel4.addEventListener("scroll", infiniteScroll);
wrapper4.addEventListener("mouseenter", () => clearTimeout(timeoutId));
wrapper4.addEventListener("mouseleave", autoPlay);

</script>
</body>
</html>