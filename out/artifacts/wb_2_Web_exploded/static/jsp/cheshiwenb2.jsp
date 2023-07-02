<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>搜索</title>
    <style>
        #search-box {
            width: 400px;
            margin: 20px auto;
        }

        #title-list {
            margin: 20px auto;
            width: 400px;
            height: auto;
        }

        .title-item {
            cursor: pointer;
            margin-bottom: 10px;
        }

        #content-box {
            position: fixed;
            right: 0;
            top: 0;
            bottom: 0;
            width: 50%;
            padding: 20px;
            background-color: #fff;
            box-shadow: -2px 0 5px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

<div id="search-box">
    <input type="text" id="search-input" placeholder="请输入搜索关键词"/>
</div>

<div id="title-list"></div>

<div id="content-box"></div>

<!-- 在这里引入外部js文件-->
<script src="js/search.js"></script>

</body>
</html>
