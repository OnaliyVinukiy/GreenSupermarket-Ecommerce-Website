
package net.codejava;

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
import java.util.UUID;
import java.io.IOException;
@WebServlet("/execute_payment")
public class ExecutePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public ExecutePaymentServlet() {
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
        System.out.println("Payment id" +paymentId);
        System.out.println("Received paymentId: " + paymentId);
        System.out.println("Received payerId: " + payerId);

        String transactionId = UUID.randomUUID().toString();
        request.setAttribute("transaction_id", transactionId);

        try {
            PaymentServices paymentServices = new PaymentServices();
            Payment payment = paymentServices.executePayment(paymentId, payerId);

            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);

            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);
            request.getRequestDispatcher("receipt.jsp").forward(request, response);

        } catch (PayPalRESTException ex) {
            if ("PAYMENT_ALREADY_DONE".equals(ex.getDetails().getName())) {
                // Payment has already been done, handle accordingly
                request.setAttribute("errorMessage", "Payment has already been done for this cart.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
                ex.printStackTrace();
             // Log the complete PayPal API response
             System.err.println("PayPal API Response: " + ex.getResponsecode());

            } else {
                // Handle other errors
                ex.printStackTrace();
                request.setAttribute("errorMessage", ex.getMessage());
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        }
    }

 
}