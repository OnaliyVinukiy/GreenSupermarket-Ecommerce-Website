<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="css/styleTeam.css">

<jsp:include page="teamLinks.jsp" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Amaranth&family=Reem+Kufi:wght@400;500;600;700&display=swap');
*
{
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   font-family: 'Amaranth', sans-serif;
}
.icons:hover{
	background-color: #FEDE00;
}
.teamBody
{
   margin-top:20px;
   margin-bottom:50px;
   display: flex;
   justify-content: center;
   align-items: center;
   min-height: 50vh;

   width: 100%;
   background: #f2f3f7;
}
.team
{
   display: flex;
   justify-content: center;
   align-items: center;
   flex-wrap: wrap;
   
}
.team .card2
{
   width: calc(33.33% - 40px); /* 33.33% width for each card with some margin */
   height: 416px;
   padding: 60px 30px;
   margin: 20px;
   background: #f2f3f7;
   box-shadow: 0.6em 0.6em 1.2em #d2dce9,
               -0.5em -0.5em 1em #ffffff;
   border-radius: 20px;
}

.team .card2 .content2
{
   display: flex;
   justify-content: center;
   align-items: center;
   flex-direction: column;
}
.team .card2 .content2 .imgBx
{
   width: 180px;
   height: 180px;
   border-radius: 50%;
   position: relative;
   margin-bottom: 20px;
   overflow: hidden;
}
.team .card2 .content2 .imgBx img
{
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
   object-fit: cover;
}
.team .card2 .content2 .contentBx h4
{
   color: #36187d;
   font-size: 1.7rem;
   font-weight: bold;
   text-align: center;
   letter-spacing: 1px;
}
.team .card2 .content2 .contentBx h5
{
   color: #6c758f;
   font-size: 1.2rem;
   font-weight: bold;
   text-align: center;
}
.team .card2 .content2 .sci
{
   margin-top: 10px;
}
.team .card2 .content2 .sci a
{
   text-decoration: none;
   color: #6c758f;
   font-size: 30px;
margin: 30px;

   transition: color 0.4s;
}
.team .card2 .content2 .sci a:hover
{
   color: #04A702;
}
.topic{
	text-align:center;
	font-size:3rem;
	margin-top:10px;
}



/*   colors
         #f2f3f7
        #d2dce9
        #36187d
        #6c758f
        #0196e3
 */
</style>
</head>
<body>
<jsp:include page="header.jsp" />
<center><h2 class="topic">Our Team</h2></center>
<div class="teamBody">

	<div class="team" style="">
		<div class="card2">
			<div class="content2">
				<div class="imgBx">
					<img src="images/rashminda2.jpg" alt="">
				</div>
				<div class="contentBx">
					<h4>Chamindu Rashminda</h4>
					<h5>Developer</h5>
				</div>
				<div class="">
				<a href="https://www.linkedin.com/in/onaliy-vinukiy-jayawardana/"><i class="fa-brands fa-linkedin fa-xl" style="color: #04A702;"></i></a>
				<a href="https://github.com/OnaliyVinukiy"><i class="fa-brands fa-github fa-xl" style="color: #04A702;"></i></a>  
					<a href="#"><i class="fa-brands fa-facebook fa-xl" style="color: #04A702;"></i></a>  
					
				</div>
			</div>
		</div>
		<div class="card2">
			<div class="content2">
				<div class="imgBx">
					<img src="images/vinukiy.jpeg" alt="">
				</div>
				<div class="contentBx">
					<h4>Onaliy Jayawardana</h4>
					<h5>Developer</h5>
				</div>
				
				<div class="">
				<a href="https://www.linkedin.com/in/onaliy-vinukiy-jayawardana/"><i class="fa-brands fa-linkedin fa-xl" style="color: #04A702;"></i></a>
				<a href="https://github.com/OnaliyVinukiy"><i class="fa-brands fa-github fa-xl" style="color: #04A702;"></i></a>  
					<a href="#"><i class="fa-brands fa-facebook fa-xl" style="color: #04A702;"></i></a>  
					
				</div>
			</div>
		</div>
		<div class="card2">
			<div class="content2">
				<div class="imgBx">
					<img src="./images/av.jpeg" alt="">
				</div>
				<div class="contentBx">
					<h4>Avish Madushanka</h4>
					<h5>Developer</h5>
				</div>
				<div class="">
				<a href="#"><i class="fa-brands fa-linkedin fa-xl" style="color: #04A702;"></i></a>
				<a href="#"><i class="fa-brands fa-github fa-xl" style="color: #04A702;"></i></a>  
					<a href="#"><i class="fa-brands fa-facebook fa-xl" style="color: #04A702;"></i></a>  
					
				</div>
			</div>
		</div>
		<div class="card2">
			<div class="content2">
				<div class="imgBx">
					<img src="images/geeth.jpg" alt="">
				</div>
				<div class="contentBx">
					<h4>Geeth Induwara</h4>
					<h5>Developer</h5>
				</div>
				<div class="">
				<a href="#"><i class="fa-brands fa-linkedin fa-xl" style="color: #04A702;"></i></a>
				<a href="#"><i class="fa-brands fa-github fa-xl" style="color: #04A702;"></i></a>  
					<a href="#"><i class="fa-brands fa-facebook fa-xl" style="color: #04A702;"></i></a>  
					
				</div>
			</div>
		</div>
		<div class="card2">
			<div class="content2">
				<div class="imgBx">
					<img src="images/shanuu.jpeg" alt="">
				</div>
				<div class="contentBx">
					<h4>Shanushki Asinsala</h4>
					<h5>Developer</h5>
				</div>
				<div class="">
				<a href="#"><i class="fa-brands fa-linkedin fa-xl" style="color: #04A702;"></i></a>
				<a href="#"><i class="fa-brands fa-github fa-xl" style="color: #04A702;"></i></a>  
					<a href="#"><i class="fa-brands fa-facebook fa-xl" style="color: #04A702;"></i></a>  
					
				</div>
			</div>
		</div>
		<div class="card2">
			<div class="content2">
				<div class="imgBx">
					<img src="images/kalindu.jpeg" alt="">
				</div>
				<div class="contentBx">
					<h4>Kalindu Perera</h4>
					<h5>Developer</h5>
				</div>
				<div class="">
				<a href="#"><i class="fa-brands fa-linkedin fa-xl" style="color: #04A702;"></i></a>
				<a href="#"><i class="fa-brands fa-github fa-xl" style="color: #04A702;"></i></a>  
					<a href="#"><i class="fa-brands fa-facebook fa-xl" style="color: #04A702;"></i></a>  
					
				</div>
			</div>
		</div>

	</div>
</div>
<%@ include file="footer.html"%>
</body>
</html>