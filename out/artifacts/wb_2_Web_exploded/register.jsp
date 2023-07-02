<%--
  Created by IntelliJ IDEA.
  User: jiangle
  Date: 2023/4/23
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/css/register.css" type="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>快来加入我们</title>
    <style>
        body{
            background-image: url(static/images/blue.jpg);
        }
    </style>
</head>
<body>
<form action="register" method="post" class="login">
    <div class="why">
        <p class="biaoti">开始你的创作！</p>
        <br>
        <label>
            <input type="text" placeholder="用户名" name="username" value="">
        </label>
        <label>
            <input type="text" placeholder="密码"  name="password" value="">
        </label>
        <br>
        <input type="submit" value="注册" class="go">
    </div>
</form>
</body>
</html>
