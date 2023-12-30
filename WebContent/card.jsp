<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<!-- custom css file link  -->
<link rel="stylesheet" href="card.css">

</head>
<body>
	<div class="container carddes">

		<!-- 		<h1 class="heading">our services</h1> -->

		<div class="box-container">

			<div class="box"
				style="background: url(./images/p.jpg) no-repeat; background-size: cover; background-position: center;">
				<div class="box1">
					<h3 style="width: 100%; text-align: right; color: white;">
						Secure Payments <br> with Paypal<br><br>
							<p style="color: #D1CFCF;">Don't
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
					<a href="https://www.paypal.com/" class="btn"
						style="width: 100%; margin-top: 14px; background-color: white; color:#ff9933; font-weight: 500;">Feedback</a>
				</div>

			</div>

		</div>

	</div>

</body>
</html>