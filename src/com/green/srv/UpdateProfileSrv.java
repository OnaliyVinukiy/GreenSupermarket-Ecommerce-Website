package com.green.srv;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.green.beans.UserBean;
import com.green.service.UserService;
import com.green.service.impl.UserServiceImpl;

@WebServlet("/UpdateProfileSrv")
public class UpdateProfileSrv extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        // Retrieve updated user details from the form
        String userName = request.getParameter("username");
        String emailId = request.getParameter("email");
        Long mobileNo = Long.parseLong(request.getParameter("mobile"));
        int pinCode = Integer.parseInt(request.getParameter("pincode"));
        String address = request.getParameter("address");

        // Create a new UserBean with the updated details
        UserBean updatedUser = new UserBean(userName, mobileNo, emailId, address, pinCode, null);

        // Update the user in the database
        UserService userService = new UserServiceImpl();
        boolean isUpdated = userService.updateUser(updatedUser);

        // Redirect to the update form with a success or error message
        if (isUpdated) {
            RequestDispatcher rd = request.getRequestDispatcher("updateDeliveryDetails.jsp?message=Profile updated successfully");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("updateDeliveryDetails.jsp?message=Failed to update profile");
            rd.forward(request, response);
        }
    }
}
