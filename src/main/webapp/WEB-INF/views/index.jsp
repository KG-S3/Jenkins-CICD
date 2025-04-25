<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KG-S3 CI/CD Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f7fa;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        h1, h2, h3 {
            margin-bottom: 10px;
        }
        .box {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            max-width: 600px;
        }
        .footer {
            margin-top: 50px;
            font-size: 0.9em;
            color: #777;
        }
    </style>
</head>
<body>

    <div class="box">
        <h2>🚀 Welcome to <strong>KG-S3</strong> Server</h2>
        <hr>
        <h1>CI/CD Deployment Dashboard</h1>

        <h2>📅 Today is <fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></h2>

        <h3>🛠 Version: <span style="color: green;">20</span></h3>

        <h3>📦 Deployment Targets:</h3>
        <ul style="list-style: none; padding: 0;">
            <li>✅ Windows Tomcat</li>
            <li>✅ Ubuntu Tomcat</li>
            <li>✅ Dockerized Tomcat</li>
        </ul>

        <p>This project is built using <strong>Maven</strong> and deployed via <strong>Jenkins Deploy Plugin</strong>.</p>
    </div>

    <div class="footer">
        &copy; 2025 KG-S3 Team. All rights reserved.
    </div>

</body>
</html>ss