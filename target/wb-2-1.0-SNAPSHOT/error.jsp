<%--
  Created by IntelliJ IDEA.
  User: jiangle
  Date: 2023/4/23
  Time: 9:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>error</title>
    <link rel="stylesheet" href="static/css/error.css" type="text/css" >
</head>
<body>
<div class="dongh">
    <div class="onep" style="--i:2;background-image: url(static/images/lb5.jpg);"></div>
    <div class="twop" style="--i:4;--s:1; background-image: url(static/images/lb2.png);"></div>
    <div class="threep" style="--i:3;--s:2; background-image: url(static/images/lb1.png);"></div>
    <div class="fourp" style="--i:2;--s:3; background-image: url(static/images/lb3.png);"></div>
    <div class="fivep" style="--i:1;--s:4; background-image: url(static/images/lb4.png);"></div>
</div>
<div class="box">
    <div class="and">
        <h1>啊哦，出错了！</h1>
        <p class="sorry">很抱歉，登录失败 T·T</p>
        <p class="exa">可能有以下原因：</p>
        <ul>
            <li>输入用户名不正确</li>
            <li>密码输入错误</li>
            <li>未录入用户信息</li>
        </ul>
        <p class="so">你还可以&nbsp;</p>
        <a href="index.jsp">返回主页</a>
        <p class="or">&nbsp;or&nbsp;</p>
        <a href="register.jsp">返回注册</a>
    </div>
</div>
</body>
</html>
