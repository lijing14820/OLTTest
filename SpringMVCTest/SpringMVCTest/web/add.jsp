<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>添加通讯信息</title>
    <link rel="stylesheet" href="/forest/layui-v2.5.4/layui/css/layui.css">
</head>
<style>
    h1 {
        text-align: center;
        margin: 20px;
    }

    .btn-row {
        margin-top: 20px;
    }
</style>

<body>
<div class="layui-container main">
    <h1>添加通讯信息</h1>
    <form class="layui-form" action="add" method="post">

        <div class="layui-row">
            <div class="layui-col-md6">
                <div class="layui-form-item">
                    <label class="layui-form-label">用户名</label>
                    <div class="layui-input-block">
                        <input type="text" name="username" required lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">姓名</label>
                    <div class="layui-input-block">
                        <input type="text" name="name" required lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">性别</label>
                    <div class="layui-input-block">
                        <input type="text" name="sex" required lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">手机</label>
                    <div class="layui-input-block">
                        <input type="text" name="mobile" required lay-verify="required" autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">Email</label>
                    <div class="layui-input-block">
                        <input type="text" name="email" required lay-verify="required" autocomplete="off" class="layui-input" >
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">QQ号码</label>
                    <div class="layui-input-block">
                        <input type="text" name="qq" required lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">工作单位</label>
                    <div class="layui-input-block">
                        <input type="text" name="company" required lay-verify="required" autocomplete="off" class="layui-input" id="loss">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">地址</label>
                    <div class="layui-input-block">
                        <input type="text" name="address" required lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
            <div class="layui-col-md6">
                <div class="layui-form-item">
                    <label class="layui-form-label" >邮编</label>
                    <div class="layui-input-block">
                        <input type="text" name="postcode" required lay-verify="required" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-form-item layui-row btn-row">
            <div class="layui-col-md2 layui-col-md-offset5" id="btn">

                <button class="layui-btn" lay-submit lay-filter="formDemo">添加</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>



</div>
<script src="/forest/layui-v2.5.4/layui/layui.all.js"></script>
<script src="/forest/js/jquery-3.4.1.min.js"></script>
<script>
    layui.use(['form','laydate'], function () {
        var form = layui.form;
        laydate = layui.laydate;
        //执行一个laypage实例
        laydate.render({     //创建时间选择框
            //指定元素
            elem: '#date',
        });
    });

</script>
</body>
</html>
