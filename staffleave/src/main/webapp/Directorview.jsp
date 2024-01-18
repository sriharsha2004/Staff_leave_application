<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View Page</title>
    <link rel="stylesheet" type="text/css" href="coordinatorview.css">
</head>
<body>
    <h1>Staff Leave Details</h1>
    <a href="Director_login.jsp" id="logout">Logout</a>
    <ul>
        <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project", "****", "****");
            PreparedStatement ps = con.prepareStatement("SELECT * FROM Staff WHERE coordinator=1");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                %>
                <li><%= rs.getString("sname") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <h4>leaves left : <%= rs.getInt("leaves") %></h4>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%= rs.getString("reason") %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <button class="btn staff" type="button" onclick="updatedirector(<%= rs.getInt("sno") %>);">Grant Leave</button>
                    <button class="btn staffreject" type="button" onclick="updatedirectorreject(<%= rs.getInt("sno") %>);">Reject Leave</button>
                </li>
                <%
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions properly, either by logging or displaying an error page
        }
        %>
    </ul>

    <script>
        function updatedirector(snoValue) {
            // Create an XMLHttpRequest object
            var xhttp = new XMLHttpRequest();

            // Configure the request
            xhttp.open("POST", "Directorchangestatus.jsp", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            // Set up a callback function to handle the server's response
            xhttp.onreadystatechange = function() {
                if (xhttp.readyState === 4 && xhttp.status === 200) {
                    // Optionally, you can handle the response from the server here
                    // For example, display a success message or update the page content
                    alert("Leave Granted successfully!");
                    // Optionally, you can reload the page after the update to reflect the changes immediately
                    window.location.reload();
                }
            };

            // Send the request to the server with the snoValue as a query parameter
            xhttp.send("sno=" + snoValue);
        }
        function updatedirectorreject(snoValue) {
            // Create an XMLHttpRequest object
            var xhttp = new XMLHttpRequest();

            // Configure the request
            xhttp.open("POST", "Directorrejectchangestatus.jsp", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            // Set up a callback function to handle the server's response
            xhttp.onreadystatechange = function() {
                if (xhttp.readyState === 4 && xhttp.status === 200) {
                    // Optionally, you can handle the response from the server here
                    // For example, display a success message or update the page content
                    alert("Leave has been rejected!");
                    // Optionally, you can reload the page after the update to reflect the changes immediately
                    window.location.reload();
                }
            };

            // Send the request to the server with the snoValue as a query parameter
            xhttp.send("sno=" + snoValue);
        }
    </script>
</body>
</html>
