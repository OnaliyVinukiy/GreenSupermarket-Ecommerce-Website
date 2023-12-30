package com.green.utility;

import jakarta.mail.MessagingException;

public class MailMessage {
	public static void registrationSuccess(String emailId, String name) {
		String recipient = emailId;
		String subject = "Registration Successful";
		String htmlTextMessage = "" + "<html>" + "<body>"
				+ "<h2 style='color:green;'>Welcome to Green Supermarket</h2>" + "" + "Hi " + name + ","
				+ "<br><br>Thanks for singing up with Green Supermarket<br>"
				+ "We are glad that you choose us. We provide the best products delivered to your doorstep"
				+ "<br>We are providing upto 20% OFF on most of the organic vegetables and fruits. So please visit our website and explore the items."
				+ "<br><br>Our Green Supermarket is growing day by day and we are in high demand so we thank all of you for "
				
				+ "Have a good shopping experience with Green Supermarket!<br>" + "" + "</body>" + "</html>";
		try {
			JavaMailUtil.sendMail(recipient, subject, htmlTextMessage);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static void orderCancel(String emailId, String name) {
		String recipient = emailId;
		String subject = "Order Cancelled!";
		String htmlTextMessage = "" + "<html>" + "<body>"
				+ "<h2 style='color:green;'>Welcome to Green Supermarket</h2>" + "" + "Hi " + name + ","
				+ "<p>We regret to inform you that your recent order with us has been canceled. We understand that circumstances may have led to this decision, and we want to assure you that we are here to assist you in any way possible.</p>"

+"<p>Your cart has been updated, and all the items have been removed. If you have any specific feedback or encountered any issues during the ordering process, please feel free to share them with us. We value your input and are committed to improving our services based on customer experiences.</p>"



+"<p>Thank you for considering Green Supermarket. We appreciate your interest in our products, and we hope to have the opportunity to serve you better in the future.<p>"
				
				+ "Best Regards!<br> Green Supermarket." + "" + "</body>" + "</html>";
		try {
			JavaMailUtil.sendMail(recipient, subject, htmlTextMessage);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void transactionSuccess(String recipientEmail, String name, String transId, String amount) {
		String recipient = recipientEmail;
		String subject = "Order Placed at Green Supermarket";
		String htmlTextMessage = "<html>" + "  <body>" + "    <p>" + "      Hey " + name + ",<br/><br/>"
				+ "      We are glad that you shop with Green Supermarket!" + "      <br/><br/>"
				+ "      Your order has been placed successfully and under process to be delivered."
				+ "<br/>"
				+ "      <br/>" + "      Here is Your Transaction Details:<br/>" + "      <br/>"
				+ "      <font style=\"color:red;font-weight:bold;\">Order Id:</font>"
				+ "      <font style=\"color:green;font-weight:bold;\">" + transId + "</font><br/>" + "      <br/>"
				+ "      Thanks for shopping with us!<br/><br/>"
				+ "      Come Shop Again! <br/<br/> <font style=\"color:green;font-weight:bold;\">Green Supermarket.</font>"
				+ "    </p>" + "    " + "  </body>" + "</html>";

		try {
			JavaMailUtil.sendMail(recipient, subject, htmlTextMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public static void orderShipped(String recipientEmail, String name, String transId, String total) {
		String recipient = recipientEmail;
		String subject = "Hurray!!, Your Order has been Dispatched from Green Supermarket";
		String htmlTextMessage = "<html>" + "  <body>" + "    <p>" + "      Hey " + name + ",<br/><br/>"
				+ "      We are glad that you shopped with Green Supermarket!" + "      <br/><br/>"
				+ "      Your order has been dispatched successfully and on the way to be delivered."
				+ "<br/>"
				+ "      <br/>" + "      Here is Your Transaction Details:<br/>" + "      <br/>"
				+ "      <font style=\"color:red;font-weight:bold;\">Order Id:</font>"
				+ "      <font style=\"color:green;font-weight:bold;\">" + transId + "</font><br/>" + "      <br/>"
				+ "      Thanks for shopping with us!<br/><br/>"
				+ "      Come Shop Again! <br/<br/> <font style=\"color:green;font-weight:bold;\">Green Supermarket.</font>"
				+ "    </p>" + "    " + "  </body>" + "</html>";

		try {
			JavaMailUtil.sendMail(recipient, subject, htmlTextMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public static void productAvailableNow(String recipientEmail, String name, String prodName, String prodId) {
		String recipient = recipientEmail;
		String subject = "Product " + prodName + " is Now Available at Green Supermarket";
		String htmlTextMessage = "<html>" + "  <body>" + "    <p>" + "      Hey " + name + ",<br/><br/>"
				+ "      We are glad that you shop with Green Supermarket!" + "      <br/><br/>"
				+ "      As per your recent browsing history, we seen that you were searching for an item that was out of stock"
				+ " at that time. <br/><br/>"
				+ "We are glad to say that the product named <font style=\"color:green;font-weight:bold;\">" + prodName
				+ "</font> with " + "product Id <font style=\"color:green;font-weight:bold;\">" + prodId
				+ "</font> is now available to shop in our online store!"
				
				+ "      <br/>" + "      Here is The product detail which is now available to shop:<br/>"
				+ "      <br/>"
				+ "      <font style=\"color:red;font-weight:bold;\">Product Id: </font><font style=\"color:green;font-weight:bold;\">"
				+ prodId + " " + "      </font><br/>" + "      <br/>"
				+ "      <font style=\"color:red;font-weight:bold;\">Product Name: </font> <font style=\"color:green;font-weight:bold;\">"
				+ prodName + "</font>" + "      <br/><br/>" + "      Thanks for shopping with us!<br/><br/>"
				+ "      Come Shop Again! <br/<br/><br/> <font style=\"color:green;font-weight:bold;\">Green Supermarket.</font>"
				+ "    </p>" + "    " + "  </body>" + "</html>";

		try {
			JavaMailUtil.sendMail(recipient, subject, htmlTextMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	public static String sendMessage(String toEmailId, String subject, String htmlTextMessage) {
		try {
			JavaMailUtil.sendMail(toEmailId, subject, htmlTextMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
			return "FAILURE";
		}
		return "SUCCESS";
	}
}
