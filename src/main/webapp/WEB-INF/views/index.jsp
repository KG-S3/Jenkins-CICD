<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
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
            max-width: 700px;
        }
        .footer {
            margin-top: 50px;
            font-size: 0.9em;
            color: #777;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        ul li {
            margin: 5px 0;
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
        <ul>
            <li>✅ Windows Tomcat</li>
            <li>✅ Ubuntu Tomcat</li>
            <li>✅ Dockerized Tomcat</li>
        </ul>

        <p>This project is built using <strong>Maven</strong> and deployed via <strong>Jenkins Deploy Plugin</strong>.</p>

        <hr>

        <h3>About KG-security3 Team</h3>
        <p>We are a cloud security team dedicated to building secure, stable, and resilient service environments. Our primary focus is on enhancing security and reliability across infrastructure and deployment pipelines</p>

        <h3>🔧 Key Technologies</h3>
        <ul>
            <li>🔧 Maven for build automation</li>
            <li>⚙️ Jenkins for Continuous Integration/Deployment</li>
        </ul>
    </div>

    <div class="footer">
        &copy; 2025 KG-S3 Team. All rights reserved.
    </div>

</body>
</html>
