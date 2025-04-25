<%@ page isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            margin-top: 20px;
        }
        .footer {
            margin-top: 50px;
            font-size: 0.9em;
            color: #777;
        }
        .highlight {
            color: #007bff;
        }
    </style>
</head>
<body>

    <div class="box">
        <h2>🚀 Welcome to the <strong class="highlight">KG-S3</strong> Server</h2>
        <hr>
        <h1>CI/CD Deployment Dashboard</h1>

        <h3>🛠 Version: <span style="color: green;">20</span></h3>

        <h3>📦 Deployment Targets:</h3>
        <ul style="list-style: none; padding: 0;">
            <li>✅ Windows Tomcat</li>
            <li>✅ Ubuntu Tomcat</li>
            <li>✅ Dockerized Tomcat</li>
        </ul>

        <p>This project is built using <strong>Maven</strong> and deployed via <strong>Jenkins Deploy Plugin</strong>.</p>

        <hr>

        <h4>About <strong>KG-S3</strong> Team:</h4>
        <p>We are a passionate team of developers, working to automate and streamline deployment processes. Our goal is to improve efficiency and reduce errors in production environments.</p>

        <h4>Key Technologies:</h4>
        <ul style="list-style: none; padding: 0;">
            <li>🔧 Maven for build automation</li>
            <li>⚙️ Jenkins for Continuous Integration/Continuous Deployment</li>
            <li>🐳 Docker for containerization</li>
            <li>🖥️ Apache Tomcat for web application hosting</li>
        </ul>
    </div>

    <div class="footer">
        &copy; 2025 <strong>KG-S3 Team</strong>. All rights reserved.
    </div>

</body>
</html>