<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/reg.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/Navbar.css">
	
	<style>
	/* Import Google font - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Amaranth&family=Reem+Kufi:wght@400;500;600;700&display=swap');


body {
           
    font-family: 'Amaranth', sans-serif;
    
        }




/* edited  */
.container1 {
    position: relative;
    max-width: 800px;
    width: 100%;
    height:500px;
    padding: 25px;
    backdrop-filter: blur(9px);
    border: 2px solid rgba(255, 255, 255, .2);
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    margin-top: 40px;
    margin-bottom: 30px;
    margin-left: 22%;
    background: url('images/b.jpg'); /* Add the path to your background image */
    background-size: cover; /* Ensure the background image covers the container */
    background-repeat: no-repeat; /* Prevent background image repetition */
    background-position: center; /* Center the background image */
    z-index: 2;
    
    
}


.container1 header {
    font-size: 3.5rem;
    color: green;
    font-weight: 500;
    text-align: center;
}

.container1 .form {
	margin-top: 30px;
	padding: 20px 50px;
	/* --- */
}

.form .input-box {
	width: 50%;
	margin-top: 20px;
	margin-left:140px;
}

.input-box label {
	color: #333;
}
.form {
    margin-top: 30px;
    padding: 20px 50px;
    margin: 0 auto; /* Center the form */
}

.form :where(.input-box input, .select-box) {
	position: relative;
	height: 50px;
	width: 100%;
	outline: none;
	font-size: 1rem;
	color: #707070;
	margin-top: 8px;
	border: 2px solid rgba(255, 255, 255, .2);
	border-radius: 40px;
	padding: 0 15px;
}

.input-box input:focus {
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
}

.form .column2 {
	display: flex;
	column-gap: 15px;
}

.form .gender-box {
	margin-top: 20px;
}

.gender-box h3 {
	color: #333;
	font-size: 1rem;
	font-weight: 400;
	margin-bottom: 8px;
}

.form :where(.gender-option, .gender) {
	display: flex;
	align-items: center;
	column-gap: 50px;
	flex-wrap: wrap;
}

.form .gender {
	column-gap: 5px;
}

.gender input {
	accent-color: rgb(130, 106, 251);
}

.form :where(.gender input, .gender label) {
	cursor: pointer;
}

.gender label {
	color: #707070;
}

.address :where(input, .select-box) {
	margin-top: 15px;
}

.select-box select {
	height: 100%;
	width: 100%;
	outline: none;
	border: none;
	color: #707070;
	font-size: 1rem;
}

.form button {
	height: 40px;
	width: 20%;
	color: #fff;
	font-size: 1rem;
	font-weight: 400;
	margin-top: 30px;
	margin-left:240px;
	border: none;
	cursor: pointer;
	transition: all 0.2s ease;
	background: green;
	/* colour change */
}

/*.form button:hover {*/
/*	background: rgb(0, 255, 128);*/
/*}*/

/*Responsive*/
@media screen and (max-width: 500px) {
	.form .column {
		flex-wrap: wrap;
	}

	.form :where(.gender-option, .gender) {
		row-gap: 15px;
	}
}

/* -my- */

.adesign {
	width: 100%;
	min-width: 100%;
	max-width: 100%;

	min-height: 52px;
}

div .address textarea {
	border-color: rgb(88, 56, 250);
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	
}

.container1 label{
	color: white;
}

.container1 input{
	background-color: transparent;
	color: #fff;
	font-size: 15px;
	
}

.input-box input::placeholder {
	color: #fff;
}
.input-box textarea::placeholder {
	padding: 15px 0px 10px 15px ;
	color: #fff;
	
}
.input-box textarea{
	background: transparent;
	border-radius: 40px;
	border: 2px solid rgba(255, 255, 255, .2);
}

form .bdesign{
	font-size: 16px;
	font-weight: 600;
	border-radius: 40px;
}
form .login-link{
	text-align: center;
	align-items: center;
	margin-top: 10px;
	
}
form .login-link p{
	color:#fff;
}
form .login-link p a{
	font-weight: 900;
	font-size: 16px;
	color: green;
}
.login-link p a:hover {
	text-decoration: underline;

}
.container1 header{
	margin-top:15px;
}


</style>
</head>
<body style="background-color: #FFFFFF;">

    <%@ include file="header.jsp"%>

    <%
        String message = request.getParameter("message");
    %>
    <div class="maincontainer">
    <section class="container1">
		<header>Login Form</header>
        <%
                            if (message != null) {
                        %>
                        <center><p style="color: white; margin-top:30px; font-size:20px;">
                            <%=message%>
                        </p></center>
                        <%
                            }
                        %>
            <form action="./LoginSrv" method="post" class="form">
            <div class="input-box">
            	<input type="email" name="username"  class="form-control"  placeholder="Enter your email" id="email" required/>
			</div>
                <div class="input-box">
                	<input type="password" name="password"  class="form-control" placeholder="Enter your password" id="password" required/>
			</div>
                
                 <div class="input-box">
                 	<label for="userrole">Login As</label>
						<select name="usertype" id="userrole" class="form-control" required>
                                <option value="customer" selected>CUSTOMER</option>
                                <option value="admin">ADMIN</option>
                        </select>
				</div>
                    
             <button type="submit" class="bdesign">Login</button>
               
            </form>
      </section>
      </div>

    <%@ include file="footer.html"%>

</body>
</html>
