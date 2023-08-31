<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Rejected</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            padding: 20px;
            border: 2px solid #ccc;
            background-color: #fff;
            border-radius: 5px;
            max-width: 400px;
        }
        .message {
            font-size: 24px;
            margin-bottom: 20px;
            color: #ff0000;
        }
        .reason {
            font-size: 18px;
        }
        .footer {
            margin-top: 20px;
            color: #777;
        }
        .btn {
        position:absolute;
        	left:50px;
        	top:100px;
		  display: inline-block;
		  padding: 12px 24px;
		  background-color: #007bff;
		  color: #fff;
		  text-decoration: none;
		  border-radius: 6px;
		  font-size: 18px;
		  margin: 8px;
		  transition: background-color 0.2s ease;
		}
		
		/* Button hover effect */
		.btn:hover {
		  background-color: #0056b3;
		}
		
		/* Staff-specific button style */
		.btn.staff {
		  background-color: #17a2b8;
		}
    </style>
</head>
<body>
	<a href="staff_login.jsp" class="btn staff">Logout</a>
    <div class="container">
        <div class="message">Leave Rejected</div>
        <div class="reason">Unfortunately, your leave application has been rejected.</div>
        <div class="footer">Please contact the HR department for more information.</div>
    </div>
</body>
</html>
