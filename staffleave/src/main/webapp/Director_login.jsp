<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="admin_login.css">
</head>
<body>
	<h1>Director Login</h1>
    <a href="Main_File.jsp" class="btn staff">Home Page</a>
    <form action="DirectorLoginServlet" method="post">
        <label for="adminId">Enter your ID:</label>
        <input type="text" id="adminId" name="DirectorId" required><br>
        <br>
        <label for="adminName">Enter your password:</label>
        <input type="password" id="adminName" name="DirectorName" required><br>
		<br>		
        <input type="submit" value="Login">
    </form>
</body>
</html>