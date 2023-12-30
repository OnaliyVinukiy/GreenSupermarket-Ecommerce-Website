<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">
    <link rel="stylesheet" href="css/imagegal.css">


</head>
<body>

<div class="cont gallery-cont">
    <h1 style="font-family:'Amaranth',sans-serif;" class="heading">Shop by category</h1>

    <div class="tz-gallery">

        <div class="rowss">

             <div class="col-sm-12 col-md-4">

                <a class="lightbox" href="organicfruits.jsp">
                    <img src="images/furit.png" alt="organic furit">
                </a>
            </div>

            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="Drinks.jsp">
                    <img src="images/Beverage card 2.png" alt="beverage">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="SnacksandBiscuits.jsp">
                    <img src="images/Biscuit card 2.png" alt="biscuit and snacks">

                    </a>
            </div>
            
            <div class="col-sm-12 col-md-8">
                <a class="lightbox" href="organicvege.jsp">
                    <img src="images/vege.png" alt="organic vegetables">
                </a>
            </div>
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="Bakery.jsp">
                    <img src="images/bakery.png" alt="Bakery Item">
                </a>
            </div> 
            <div class="col-sm-6 col-md-4">
                <a class="lightbox" href="beauty.jsp">
                    <img src="images/Beauty card 2.png" alt="Beauty and healthcare">
                </a>
            </div>

        </div>

    </div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>

</body>
</html>