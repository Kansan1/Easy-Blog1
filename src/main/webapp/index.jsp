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
    <link rel="stylesheet" href="static/css/index.css" type="text/css" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>大学生创作平台</title>
</head>
<body>
<div class="header wrapper">
    <img src="static/images/logo(1).png" alt="" class="buding">
    <h1>大学生创作平台</h1>

    <div class="nav"><ul>
        <li><a th:href="@{/}">主页</a></li>
        <li><a th:href="@{/show}">展示</a></li>
        <li><a th:href="@{/create}">创作</a></li>
    </ul></div>

    <!-- 提交 -->
    <!--        此处界面不完整-->
    <div class="sign">
        <ul>
            <li><a href="login.jsp">登录</a></li>
            <li><a th:href="@{/#}" id="greeting">greeting</a></li>
        </ul>
    </div>

    <!-- 实例图片 -->
    <img src="static/images/zhuyephoto.png" alt="" class="meihua">
</div>
<!-- 中部 -->
<div class="middle wrapper">
    <h2>欢迎来到大学生创作平台</h2>
    <p>大学生创作平台是一款免费的大学生创作软件，我们将竭诚为您提供</p>
    <p>稳定可信赖的创作平台。希望我们的点滴努力，能换得您的满意。点</p>
    <p>击下方按钮开启你的创作之旅</p>
    <a class="kais" href="login.jsp">开始</a>
    <a class="zhuc" href="register.jsp">or&emsp;→注册</a>
</div>

<!-- 功能体验区 -->
<div class="gongneng wrapper">
    <h2>功能介绍</h2>
    <p class="p1">我们将会为您提供以下功能让你可以更好的进行创作，如果在使用过程中出现问题或有任何相关建议，欢迎通过官方信箱联系我们，您的每一次反馈都在让平台变得更好，感谢您的使用</p>
    <ul>
        <li>
            <img src="static/images/zhanshi1.png" alt="">
            <p>发布动态</p>
        </li>
        <li>
            <img src="static/images/zhanshi2.png" alt="">
            <p>互动交流</p>
        </li>
        <li>
            <img src="static/images/zhanshi3.png" alt="">
            <p>分区标签</p>
        </li>
        <li> <img src="static/images/zhanshi4.png" alt="">
            <p>创作存储</p>
        </li>
        <li>
            <img src="static/images/zhanshi5.png" alt="">
            <p>查找达人</p>
        </li>
        <li>
            <img src="static/images/zhanshi6.png" alt="">
            <p>其他功能等</p>
        </li>
    </ul>
</div>
<script>
    const click = document.getElementById("greeting");

    click.addEventListener("click", function() {
        const now = new Date();
        const hour = now.getHours();
        let word;

        if(hour >= 0 && hour < 6) {
            word = "凌晨好,时间不早了早点休息吧";
        } else if(hour >= 6 && hour < 12) {
            word = "早上好，一日之际在于晨，又是新的一天啦";
        } else if(hour >= 12 && hour < 18) {
            word = "下午好，开始你的创作吧";
        } else {
            word = "晚上好，欢迎来到大学生创作平台";
        }
        alert(word);
    });

    const links = document.querySelectorAll(".nav a");
    for(let i = 0; i < links.length; i++) {
        links[i].addEventListener("click", function(event) {
            if(links[i].textContent === "展示" || links[i].textContent === "创作") {
                alert("登录后查看此页面");
                event.preventDefault(); // 阻止跳转
            }
        });
    }

</script>
</body>
</html>
