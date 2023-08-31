

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

//AdminLoginServlet.java
//import javax.servlet.*;
//import javax.servlet.http.*;
//import java.io.*;

public class AdminLoginServlet extends HttpServlet {
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     int sno = Integer.parseInt(request.getParameter("adminId"));
     String name = request.getParameter("adminName");

     // Validate admin credentials (you can use your existing Admin class here)
     if (sno == 576 && name.equals("harsha")) {
         // Set a session attribute to indicate successful login
         HttpSession session = request.getSession();
         session.setAttribute("loggedInAdmin", true);

         // Redirect to a new page or do any other necessary actions
         response.sendRedirect("admin_add_staff.jsp");
     } else {
         // Redirect back to the login page with an error message
    	 //response.sendRedirect("admin_login.jsp");
    	 response.sendRedirect("Invalid_admin.jsp");
         
     }
 }
}
