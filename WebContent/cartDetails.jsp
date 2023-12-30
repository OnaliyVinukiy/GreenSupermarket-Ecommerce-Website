<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.green.service.impl.*, com.green.service.*,com.green.beans.*,java.util.*,jakarta.servlet.ServletOutputStream,java.io.*"%>
<%@ page import="net.codejava.* "%>
<%@ page import="com.green.service.impl.CartServiceImpl" %>

<%@ page import="com.green.utility. *" %>
<!DOCTYPE html>
<html>
<head>
    <title>Green Supermarket</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
   
    <script src="https://www.paypal.com/sdk/js?client-id=AVHltGk1oH5MDHZCRUcZPm8IZ3Gm8IG5MQUEQfyWXr-mZuI_sLQGEjArXfBz4gjSR_idsupOHAnprPwv"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: #FFFFFF;">

<%
    /* Checking the user credentials */
    String userName = (String) session.getAttribute("username");
    String password = (String) session.getAttribute("password");

    if (userName == null || password == null) {
        response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");
    }

    String addS = request.getParameter("add");
    if (addS != null) {
        int add = Integer.parseInt(addS);
        String uid = request.getParameter("uid");
        String pid = request.getParameter("pid");
        int avail = Integer.parseInt(request.getParameter("avail"));
        int cartQty = Integer.parseInt(request.getParameter("qty"));
        CartServiceImpl cart = new CartServiceImpl();

        if (add == 1) {
            // Add Product into the cart
            cartQty += 1;
            if (cartQty <= avail) {
                cart.addProductToCart(uid, pid, 1);
            } else {
                response.sendRedirect("./AddtoCart?pid=" + pid + "&pqty=" + cartQty);
            }
        } else if (add == 0) {
            // Remove Product from the cart
            cart.removeProductFromCart(uid, pid);
        }
    }
 // Get the user ID from the session directly
    String userId = (String) session.getAttribute("username");

    // Create an instance of the CartService
    CartService cartService = new CartServiceImpl();

    // Check if the "Cancel" button is clicked
    String cancelAction = request.getParameter("cancelAction");

    if ("cancelCart".equals(cancelAction)) {
        // If "Cancel" button is clicked, remove all items from the cart
    	String removalStatus = cartService.removeAllItemsFromCart(userId, userName);
        
        session.setAttribute("statusMessage", removalStatus);
        response.sendRedirect("cartDetails.jsp");
    }
%>




<jsp:include page="header.jsp" />

<div class="text-center" style="color: black; font-size: 40px;">Cart Items</div>

<%
    String statusMessage = (String) session.getAttribute("statusMessage");
    if (statusMessage != null && !statusMessage.isEmpty()) {
%>
<div style="color: red; font-size: 16px; font-weight: bold; text-align:center;">
    <%= statusMessage %>
</div>
<%
    }
    session.removeAttribute("statusMessage"); // Clear the session attribute to avoid displaying the same message on subsequent requests
%>

<!-- Start of Product Items List -->
<div class="container">
    <table class="table table-hover">
        <thead style="background-color: #FEDE00; color: black; font-size: 16px; font-weight: bold;">
            <tr>
                <th>Picture</th>
                <th>Products</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Add</th>
                <th>Remove</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody style="background-color: #E6F9E6; font-size: 15px; font-weight: bold;">

<%
    CartServiceImpl cart = new CartServiceImpl();
    List<CartBean> cartItems = new ArrayList<CartBean>();
    cartItems = cart.getAllCartItems(userName);
    double subtotal = 0;
    double total = 0;
    double tax = 1;
    double shipping = 1;
    int prodQuantity = 0; // Initialize prodQuantity outside the loop
    
    String orderId = UUID.randomUUID().toString();

    for (CartBean item : cartItems) {
        String prodId = item.getProdId();
        prodQuantity = item.getQuantity(); // Update prodQuantity for each iteration

        ProductBean product = new ProductServiceImpl().getProductDetails(prodId);
        double currAmount = product.getProdPrice() * prodQuantity;
        subtotal += currAmount;
		total = subtotal+2;
        if (prodQuantity > 0) {
%>

<tr>
    <td><img src="<%=request.getContextPath()%>/images/<%=product.getProdImage()%>"
            style="width: 50px; height: 50px;"></td>
    <td><%=product.getProdName()%></td>
    <td><%=product.getProdPrice()%></td>
    <td>
        <form method="post" action="./UpdateToCart">
            <input type="number" name="pqty" value="<%=prodQuantity%>" style="max-width: 70px;" min="0">
            <input type="hidden" name="pid" value="<%=product.getProdId()%>">
            <input type="submit" name="Update" value="Update"
                    style="max-width: 80px; border-radius:25px; margin-left:25px;">
        </form>
    </td>
    <td><a href="cartDetails.jsp?add=1&uid=<%=userName%>&pid=<%=product.getProdId()%>&avail=<%=product.getProdQuantity()%>&qty=<%=prodQuantity%>"><i
                class="fa fa-plus"></i></a></td>
    <td><a href="cartDetails.jsp?add=0&uid=<%=userName%>&pid=<%=product.getProdId()%>&avail=<%=product.getProdQuantity()%>&qty=<%=prodQuantity%>"><i
                class="fa fa-minus"></i></a></td>
    <td><%=currAmount%></td>
</tr>

<%
        }
    }
%>
<tr style="background-color: #FEDE00; color: black;">
    <td colspan="6" style="text-align: center;">Total Amount to Pay (in Rupees)</td>
    <td id="subtotal" value="<%=subtotal%>"><%=subtotal%></td>
</tr>
<tr style="background-color: #FEDE00; color: black;">
    <td colspan="6" style="text-align: center;">Shipping (in Rupees)</td>
    <td id="shipping" value="<%=shipping%>"><%=shipping%></td>
</tr>
<tr style="background-color: #FEDE00; color: black;">
    <td colspan="6" style="text-align: center;">Tax (in Rupees)</td>
    <td id="tax" value="<%=tax%>"><%=tax%></td>
</tr>
<tr style="background-color: #FEDE00; color: black;">
     <td colspan="6" style="text-align: center;">Total Amount:</td>
     <td id="total" value="<%=total%>" ><%=total%></td>
</tr>


<tr style="background-color: grey; color: white;">
    <td colspan="4" style="text-align: center;"></td>
    <td>
        <form action="./CancelOrder" method="post">
    <input type="submit" value="Cancel Order" style="background-color:blue; border-radius:20px; height:40px; width:140px;">
</form>

    </td>
    <td colspan="2" align="center">
       
     <!-- Start of PayPal Smart Payment Buttons -->
    <div id="paypal-button-container"></div>

    <%-- <script>
        paypal.Buttons({
            createOrder: function(data, actions) {
            	 // Generate a unique order ID for each transaction
               
                // This function sets up the details of the transaction
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: <%=total%> // Set the total amount dynamically
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                // This function captures the funds from the approved payment
                return actions.order.capture().then(function(details) {
                    // Call your server-side code to handle the successful payment
                    // You can pass the details object to your server for further processing
                    // Example: Send details to your server using Ajax
                    // $.post("your_server_endpoint", { paymentDetails: details });
                    //alert('Transaction completed by ' + details.payer.name.given_name);
                    // Redirect or perform any additional actions as needed
                    // Example: window.location.href = "success.jsp";
                    window.location.href = "authorize_payment?total=<%=total%>&subtotal=<%=subtotal%>&tax=<%=tax%>&shipping=<%=shipping%>&orderId=<%=orderId%>";
                });
            }
        }).render('#paypal-button-container');
    </script> --%>
    <script>
    // Load the PayPal SDK asynchronously
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (!d.getElementById(id)) {
        js = d.createElement(s);
        js.id = id;
        js.src = "https://www.paypal.com/sdk/js?client-id=AVHltGk1oH5MDHZCRUcZPm8IZ3Gm8IG5MQUEQfyWXr-mZuI_sLQGEjArXfBz4gjSR_idsupOHAnprPwv";
        js.onload = function() {
          console.log('PayPal SDK loaded');
          window.paypalSDKReady();
        };
        js.onerror = function() {
          console.error('Error loading PayPal SDK');
        };
        fjs.parentNode.insertBefore(js, fjs);
      }
    }(document, 'script', 'paypal-sdk'));

    // Render the PayPal button when the SDK is loaded
    window.paypalSDKReady = function() {
      console.log('Rendering PayPal button');
      paypal.Buttons({
        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{
              amount: {
                value: <%=total%> // Set the total amount dynamically
                
              }
            }]
          });
        },
        onApprove: function(data, actions) {
          return actions.order.capture().then(function(details) {
            alert('Transaction completed by ' + details.payer.name.given_name);
            // You can perform additional actions here, like updating your server or redirecting the user
            window.location.href = "receipt.jsp?total=<%=total%>&subtotal=<%=subtotal%>&tax=<%=tax%>&shipping=<%=shipping%>&orderId=<%=orderId%>";
          });
        }
      }).render('#paypal-button-container');
    };
  </script>
    <!-- End of PayPal Smart Payment Buttons -->


       
</tr>

        </tbody>
    </table>
    <div style="color: red; font-size: 18px; font-weight: bold; text-align:justify;">
   Important!: If you want to deliver the order to a different address other than the address mentioned in the registration form, please update your delivery address <a href="updateDeliveryDetails.jsp"> from here.</a>
</div>
</div>
<!-- End of Product Items List -->

<%@ include file="footer.html"%>

</body>
</html>
