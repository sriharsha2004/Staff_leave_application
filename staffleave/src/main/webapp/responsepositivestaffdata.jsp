<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Accepted</title>
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
            color: #008000; /* Green color for positive message */
        }
        .info {
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
        <div class="message">Leave Request Accepted</div>
        <div class="info">Your leave request has been accepted by the management.</div>
        <div class="footer">You can proceed with your planned leave.</div>
    </div>
</body>
</html>
