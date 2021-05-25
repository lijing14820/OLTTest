<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 2019/8/26
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="/forest/layui-v2.5.4/layui/css/layui.css">
</head>
<body>
<div class="layui-container">

    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input name="username" type="text" required  lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-block">
                    <input name="name" type="text" required  lay-verify="required" placeholder="姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input name="sex" type="text" required  lay-verify="required" placeholder="性别" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">手机</label>
                <div class="layui-input-block">
                    <input name="mobile" type="text" required  lay-verify="required" placeholder="手机" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">Email</label>
                <div class="layui-input-block">
                    <input name="email" type="text" required  lay-verify="required" placeholder="Email" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">QQ号码</label>
                <div class="layui-input-block">
                    <input name="qq" type="text" required  lay-verify="required" placeholder="QQ号码" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">工作单位</label>
                <div class="layui-input-block">
                    <input name="company" type="text" required  lay-verify="required" placeholder="工作单位" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
    </div>

    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-block">
                    <input name="address" type="text" required  lay-verify="required" placeholder="地址" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-form-item">
                <label class="layui-form-label">邮编</label>
                <div class="layui-input-block">
                    <input name="postcode" type="text" required  lay-verify="required" placeholder="邮编" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
    </div>

</div>
<script>
    console.log(document.getElementById("ssi-upload3").value)
</script>
</body>
</html>
