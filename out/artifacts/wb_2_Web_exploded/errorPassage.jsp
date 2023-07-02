<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="static/css/error.css" type="text/css">
  <title>errorPassage</title>
</head>
<body>
<div class="dongh">
  <div class="b" style="--i:2;background-image: url(static/images/zhanshi1.png);"></div>
  <div class="c" style="--i:4;--s:1; background-image: url(static/images/lb2.png);"></div>
  <div class="d" style="--i:3;--s:2; background-image: url(static/images/lb1.png);"></div>
  <div class="e" style="--i:2;--s:3; background-image: url(static/images/lb3.png);"></div>
  <div class="f" style="--i:1;--s:4; background-image: url(static/images/lb4.png);"></div>
</div>
<div class="box">
  <div class="and">
    <h1>Ops，出错了！</h1>
    <p class="sorry">很抱歉，上传失败 T·T</p>
    <p class="exa"></p>
    <ul>
      <li>Tips:  输入的标题或内容不能为空哦</li>
    </ul>
    <p class="so">你可以&nbsp;</p>
    <a href="functionPage.jsp">返回集锦页面</a>
  </div>
</div>
</body>
</html>
