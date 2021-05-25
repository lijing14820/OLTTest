<%--
Created by IntelliJ IDEA.
User: 唐松林
Date: 2019/8/23
Time: 15:49
To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>

    <%--<script src="/SpringMVCTest/js/jquery.js"></script>--%>
    <%--<script>--%>
        <%--$(function () {//绑定onload事件--%>
            <%--// alert("绑定onload事件")--%>
            <%--$("#login").click(function () {--%>
                <%--console.log(11)--%>
                <%--var usernameVal = $("#username").val();--%>
                <%--var passwordAvl = $("#password").val();--%>
                <%--//向服务器发送Ajax请求--%>
                <%--$.getJSON("login", {username: usernameVal, password: passwordAvl}, getAjaxData)--%>
            <%--})--%>
        <%--})--%>

        <%--// ajax响应回调函数（用于接收Ajax响应的数据）--%>
        <%--function getAjaxData(data) {--%>
            <%--if (data) {--%>
                <%--alert("登录成功");--%>
                <%--location.href = "./index.jsp"--%>
            <%--}--%>
        <%--}--%>
    <%--</script>--%>
</head>
<style>
    .content {
        margin: 0 auto;
        width: 400px;
        height: 200px;
        background-image: url("/login.jpg");
        /*background-color: red;*/
    }
</style>
<body>
<div class="content">
    <div>
        <h2>登录</h2>
        <form action="login">
        <a href="/SpringMVCTest/register.jsp">注册</a>
        用户名：<input type="text" name="username"><br>
        密 码：<input type="password" name="password"><br>
        <input type="submit" id="login" value="登录系统"></input>
        </form>
    </div>

</div>
</body>
</html>
