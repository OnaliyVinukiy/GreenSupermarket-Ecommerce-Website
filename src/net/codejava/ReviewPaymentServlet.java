package net.codejava;
import java.net.URLEncoder;

import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;







 

 
@WebServlet("/review_payment")
public class ReviewPaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ReviewPaymentServlet() {
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
        String orderId = request.getParameter("orderId");
        try {
            PaymentServices paymentServices = new PaymentServices();
            
            Payment payment = paymentServices.executePayment(paymentId, payerId);
            
            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);
             
           
            ShippingAddress shippingAddress = transaction.getItemList().getShippingAddress();
             
            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);   
            request.setAttribute("orderId", orderId);

            request.setAttribute("shippingAddress", shippingAddress);
            request.getRequestDispatcher("review.jsp").forward(request, response);
            
            System.out.println("Payment ID " +paymentId);
            System.out.println("Payer ID " +payerId);
            System.out.println("PayerInfo: " + payerInfo);
            System.out.println("Transaction: " + transaction);
            System.out.println("ShippingAddress: " + shippingAddress);

//            String url = "review.jsp?paymentId=" + paymentId + "&PayerID=" + payerId;
//             
//            request.getRequestDispatcher(url).forward(request, response);
             
        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }      
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
        String orderId = request.getParameter("orderId");
        try {
            PaymentServices paymentServices = new PaymentServices();
            
            Payment payment = paymentServices.executePayment(paymentId, payerId);
             
            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);
             
           
            ShippingAddress shippingAddress = transaction.getItemList().getShippingAddress();
             
            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);   
            request.setAttribute("orderId", orderId);

            request.setAttribute("shippingAddress", shippingAddress);
            request.getRequestDispatcher("review.jsp").forward(request, response);
//            String url = "review.jsp?paymentId=" + paymentId + "&PayerID=" + payerId;
//             
//            request.getRequestDispatcher(url).forward(request, response);
             
        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }      
    }
 
}