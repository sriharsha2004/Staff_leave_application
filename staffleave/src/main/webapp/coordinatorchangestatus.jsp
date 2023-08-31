<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%!
    void updateCoordinator(int sno){    
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project", "root", "nms@2000");
            PreparedStatement ps = con.prepareStatement("UPDATE Staff SET coordinator=1, appliedstatus=0 WHERE sno=?");
            ps.setInt(1, sno);
            int rowsAffected = ps.executeUpdate();
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
%>

<%
    // Handle the POST request from ViewPage.jsp
    if ("POST".equals(request.getMethod())) {
        String snoParam = request.getParameter("sno");
        if (snoParam != null && !snoParam.isEmpty()) {
            int sno = Integer.parseInt(snoParam);
            // Call the Java method to update the database
            updateCoordinator(sno);
        }
    }
%>

<!-- Respond with a message or redirect back to the previous page -->
<%
    response.setContentType("text/plain");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write("Leave forwarded to director successfully!");
%>
