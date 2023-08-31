<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Addition Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 40px;
        }
        h1 {
            color: #007BFF;
        }
        p {
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #F9F9F9;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Staff Member Successfully Added</h1>
        <p>The new staff member has been added to the system.</p>
        <p>Thank you for taking the necessary action to keep our records up-to-date.</p>
        <p>If you have any further queries or require assistance, please feel free to contact our support team.</p>
        <p>
            <a href="admin_add_staff.jsp" class="btn">Go to Dashboard</a>
        </p>
    </div>
</body>
</html>
