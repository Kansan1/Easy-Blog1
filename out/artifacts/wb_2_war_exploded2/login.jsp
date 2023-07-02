
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="static/css/login.css" type="text/css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎登录</title>
    <style>
        body{
            background-image: url(static/images/moon.jpg);
        }
    </style>
</head>
<body>
<form action="login" method="post" class="login">
    <div class="why">
        <p class="biaoti">欢迎登录</p>
        <br>
        <label>
            <input type="text" placeholder="用户名" name="username" value="">
        </label>
        <label>
            <input type="text" placeholder="密码"  name="password" value="">
        </label>
        <br>
        <input type="submit" value="登录" class="go">
        <a href="register.jsp" class="zuc">没注册？点这里</a>
    </div>
</form>
</body>
</html>
