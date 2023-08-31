<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- admin_login.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" href="admin_login.css">
</head>
<body>
    <h1>Admin Login</h1>
    <a href="Main_File.jsp" class="btn staff">Home Page</a>
    <form action="AdminLoginServlet" method="post">
        <label for="adminId">Enter your ID:</label>
        <input type="text" id="adminId" name="adminId" required value="${empty adminId ? '' : adminId}"><br>

        <label for="adminName">Enter your passsword:</label>
        <input type="password" id="adminName" name="adminName" required value="${empty adminName ? '' : adminName}""><br>
		<br>		
        <input type="submit" value="Login">
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
