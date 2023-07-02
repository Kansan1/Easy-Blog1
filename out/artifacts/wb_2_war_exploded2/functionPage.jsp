<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String url="jdbc:mysql://localhost:3306/itcast";
    String user = "root";
    String password = "gt040311";
    Connection conn = DriverManager.getConnection(url, user, password);
%>
<%
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM passage");
%>

<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>functionPage</title>
    <style>
        body{
            background-image: url("./static/images/newstar.jpg");
        }
        .button{
            margin-top: 20px;
            margin-left: 40%;
        }
        .button div{
            float: left;
            color: white;
        }
        .button a{
            display: inline-block;
            width: 300px;
            height: 30px;
            background-color: black;
            color:white;
            font-size: 20px;
            font-weight: 800;
            text-align: center;}

        table {
            float: left;
            margin-top: 3%;
            margin-left: 12%;
            margin-right: 20px;
            border: 10px solid #ddd;
        }

        tr {
            float: left;
            margin-right: 10px;
        }


        .block {
            width: 400px;
            height: 100%;
            padding: 10px;
        }

        .title {
            text-align: center;
            font-weight: bold;
            font-size: 24px;
            margin-bottom: 10px;
            color: white;
        }

        .context {
            font-size: 18px;
            word-wrap: break-word;
            color: white;
        }

    </style>
</head>
<body>
<div class="button">
<th><a href="${pageContext.request.contextPath}/toAdd">点击进入创作页面</a></th>
</div>
<%
    while (rs.next()) {
        String title = rs.getString("title");
        String context = rs.getString("context");
%>
<table border="9" cellpadding="9" cellspacing="9" style="text-align: center;" id="dataTable">
    <tr>
        <td>
            <div class="block">
                <div class="title"><%= title %></div>
                <div class="context"><%= context %></div>
            </div>
        </td>
    </tr>
</table>
<%
    }
%>

</body>
</html>
