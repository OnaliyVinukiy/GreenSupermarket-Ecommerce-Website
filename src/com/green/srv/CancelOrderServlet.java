package com.green.srv;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.green.service.impl.CartServiceImpl;

@WebServlet("/CancelOrder")
public class CancelOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        String userType = (String) session.getAttribute("usertype");

        if (userName == null || password == null || userType == null || !userType.equalsIgnoreCase("customer")) {
            response.sendRedirect("login.jsp?message=Session Expired, Login Again to Continue!");
            return;
        }

        // Login check successful

        String userId = userName;

        CartServiceImpl cart = new CartServiceImpl();

        // Perform the cancellation logic in the CartServiceImpl or another service class
        String cancellationStatus = cart.removeAllItemsFromCart(userId, userName);

        // Set status message in the session
        session.setAttribute("statusMessage", cancellationStatus);

        // Redirect to a page after cancellation (e.g., cartDetails.jsp)
        response.sendRedirect("cartDetails.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
