<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- admin_home.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Admin Home</title>
    <link rel="stylesheet" href="admin_add_staff.css">
</head>
<body>
    <h1>Add Staff
   	<button class="logoutbtn">Logout</button>
   	</h1>
    <form action="AdminAddStaffServlet" method="post">
        <label for="adminId">Enter Id of Staff to add:</label>
        <input type="text" id="adminId" name="staffid" required><br>

        <label for="adminName">Enter name of Staff to add</label>
        <input type="text" id="adminName" name="staffname" required><br>
        <br>

        <input type="submit" value="Add Staff">
    </form>
    <script>
    	var login = document.querySelector(".logoutbtn");
    	login.addEventListener("click",()=>{
    		window.location.href = "admin_login.jsp"
    	})
    </script>
</body>
</html>
