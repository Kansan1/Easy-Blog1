<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>viewPage</title>
</head>
<body>
<a href="functionPage.jsp">返回</a>
<%--<form action="/passage" method="post">--%>
<%--    <input type="hidden" name="_method" value="put">--%>
<%--    <input type="hidden" name="id" th:value="${passage.id}">--%>
<%--    title:<input type="text" name="title" th:value="${passage.title}"><br>--%>
<%--    context:<input type="text" name="context" th:value="${passage.context}"><br>--%>
<%--</form>--%>

<div id="content">
    <tr>
        <td>title</td>
        <td>context</td>
    </tr>
</div>

<script>
    // 获取查询字符串中的参数
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const title = urlParams.get('title');
    const context = urlParams.get('context');
    // 插入行数据到页面
    const contentDiv = document.getElementById("content");
    contentDiv.innerHTML = "标题：" + title + "<br>内容：" + context ;
</script>
</body>
</html>
