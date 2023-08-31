<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Leave Request Form</title>
  <link rel="stylesheet" href="Staffvalidate.css"> <!-- Link to your CSS file -->
</head>
<body>
  <h1>Leave Request Form</h1>
  <a href="staff_login.jsp" class="btn staff">LogOut</a>
  <form action="LeaveAppliedServlet" id="leaveForm" method="post">
  	<label for="Id">Enter Your Id</label>
  	<input type="number" id="Id" name="Id" required>
  	
    <label for="name">Enter your Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="leaveType">Leave Type:</label>
    <select id="leaveType" name="leaveType" required>
      <option value="" disabled selected>Select leave type</option>
      <option value="annual">Annual Leave</option>
      <option value="sick">Sick Leave</option>
      <option value="personal">Personal Leave</option>
      <option value="other">Other</option>
    </select>

    <label for="reason">Reason for Leave:</label>
    <textarea id="reason" name="reason" rows="4"></textarea>

    <input type="submit" value="Request Leave" class="btn form-submit-animation">
  </form>
</body>
</html>
