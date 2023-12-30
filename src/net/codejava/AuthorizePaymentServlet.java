package net.codejava;
import java.util.UUID;
import com.paypal.base.rest.PayPalRESTException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "authorize_payment", value = "/authorize_payment")
public class AuthorizePaymentServlet extends HttpServlet {

    private static final long serialVersionUID=1L;
    public AuthorizePaymentServlet() {
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String product = request.getParameter("product");
        String subtotal = request.getParameter("subtotal");
        String shipping = request.getParameter("shipping");
        String tax = request.getParameter("tax");
        String total = request.getParameter("total");

     // Generate a unique order ID
        String orderId = UUID.randomUUID().toString(); // You can use a more robust method to generate unique IDs

        OrderDetail orderDetail = new OrderDetail(product, subtotal, shipping, tax, total, orderId);

        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(orderDetail);

            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", "Invalid Payment Details");
            ex.printStackTrace();

            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String product = request.getParameter("product");
        String subtotal = request.getParameter("subtotal");
        String shipping = request.getParameter("shipping");
        String tax = request.getParameter("tax");
        String total = request.getParameter("total");

     // Generate a unique order ID
        String orderId = UUID.randomUUID().toString(); // You can use a more robust method to generate unique IDs

        OrderDetail orderDetail = new OrderDetail(product, subtotal, shipping, tax, total, orderId);

        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(orderDetail);

            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", "Invalid Payment Details");
            ex.printStackTrace();

            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}