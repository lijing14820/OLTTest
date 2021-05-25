
<%--
Created by IntelliJ IDEA.
User: 唐松林
Date: 2019/8/23
Time: 15:49
To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>

</head>
<body>
    <div>用户${user.username}，你好</div>
    <a href="exit">退出</a>
    <%--<c:forEach var="address" items="address">--%>
        <%--<div>${address.getId}</div>--%>
    <%--</c:forEach>--%>
    <div class="layui-container">
        <div style="text-align: center">
            <table class="layui-table">
                <caption>
                    <h2>个人通讯录</h2>
                </caption>
            </table>
            <table id="demo" lay-filter="test" lay-data="{id:'addressFilter'}"></table>
            <script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-xs" lay-event="edit">查看</a>
                <a class="layui-btn layui-btn-xs" lay-event="modify">修改</a>
                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
            </script>
        </div>
    </div>
    <%--${address}--%>
</body>
</html>
