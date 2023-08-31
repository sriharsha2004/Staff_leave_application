<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Invalid Credentials</title>
    <style>
        body {
		    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
		    background-color: #f0f0f0;
		    margin: 0;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    min-height: 100vh;
		}
		
		.container {
		    padding: 30px;
		    border-radius: 8px;
		    background-color: #fff;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		    max-width: 400px;
		}
		
		h1 {
		    color: #d9534f; /* Red color for the error message */
		    font-size: 28px;
		    margin-top: 0;
		}
		
		p {
		    font-size: 16px;
		    margin: 10px 0;
		}
		
		.button-container {
		    text-align: center;
		    margin-top: 20px;
		}
		
		.btn {
		    display: inline-block;
		    padding: 12px 24px;
		    background-color: #007bff;
		    color: #fff;
		    text-decoration: none;
		    border-radius: 6px;
		    font-size: 16px;
		    transition: background-color 0.2s ease;
		}
		
		.btn:hover {
		    background-color: #0056b3;
		}
	
	    </style>
</head>
<body>
    <div class="container">
        <h1>Invalid Credentials</h1>
        <p>Your UserId or Password is incorrect.</p>
        <p>Please try again with the correct credentials.</p>
        <div class="button-container">
            <a href="staff_login.jsp" class="btn">Back to Login</a>
        </div>
    </div>
</body>
</html>
