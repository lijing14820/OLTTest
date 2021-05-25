<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人通讯录</title>
    <link rel="stylesheet" href="/SpringMVCTest/layui-v2.5.4/layui/css/layui.css">
    <style>
        .likeInfo {
            width: 450px;
            overflow: hidden;
            float: right;
            margin-right: 50px;
            border: 1px solid #e6e6e6;
        }

        form {
            width: 380px;
            overflow: hidden;
            padding-right: 50px;
        }
        caption h2 {
            font-size: 22px;
            margin: 16px;
            text-align: center;
        }
        .likeInfo h2 {
            font-size: 22px;
            margin: 16px;
        }
    </style>
    <script src="/SpringMVCTest/js/jquery.js"></script>
    <script>
    $(function () {//绑定onload事件
    // alert("绑定onload事件")
        <c:forEach var="address" items="${address}">
        $("#modify${address.id}").click(function () {
            console.log(111)
            var myId =this.value;
            //向服务器发送Ajax请求
            $.getJSON("modify", {id:myId}, getAjaxData1)
        });
        </c:forEach>

        <c:forEach var="address" items="${address}">
    $("#delete${address.id}").click(function () {
    var myId =this.value;
    //向服务器发送Ajax请求
    $.getJSON("delete", {id:myId}, getAjaxData)
    });
        </c:forEach>
    });
    function getAjaxData1(data1) {
        if (data1) {
            layer.open({
                type:2,
                title:'修改通讯信息',
                content:'modify.jsp',
                area: ['600px', '500px'],
                success: function(layero, index){
                    var body = layer.getChildFrame('body', index);
                    body.find("input[name=username]").val(data1.username);
                    body.find("input[name=name]").val(data1.name);
                    body.find("input[name=sex]").val(data1.sex);
                    body.find("input[name=mobile]").val(data1.mobile);
                    body.find("input[name=email]").val(data1.email);
                    body.find("input[name=qq]").val(data1.qq);
                    body.find("input[name=company]").val(data1.company);
                    body.find("input[name=address]").val(data1.address);
                    body.find("input[name=postcode]").val(data1.postcode);
                },
                btn:['确定','取消'],
                yes:function(index,layero){
                    var body = layer.getChildFrame('body', index);
                    var username=body.find("input[name=username]").val();
                    var name=body.find("input[name=name]").val();
                    var sex=body.find("input[name=sex]").val();
                    var mobile=body.find("input[name=mobile]").val();
                    var email=body.find("input[name=email]").val();
                    var qq=body.find("input[name=qq]").val();
                    var company=body.find("input[name=company]").val();
                    var address=body.find("input[name=address]").val();
                    var postcode=body.find("input[name=postcode]").val();
                    $.ajax({
                        url: 'modify1',
                        data: {'id':data1.id,'username':username,'name':name,'sex':sex,'mobile':mobile,'email':email,'qq':qq,'company':company,'address':address,'postcode':postcode},
                        type: 'get',
                        success: function (txt) {
                            if (txt == "ok") {
                                layer.msg("修改成功");
                            }else{
                                layer.msg("修改失败");
                            }
                        }
                    });
                },
                btn2:function(index){
                    layer.close(index);
                }
                ,cancel:function(index){
                    layer.close(index);
                }
            });
        }
    }

    // ajax响应回调函数（用于接收Ajax响应的数据）
    function getAjaxData(data) {
    if (data>0) {
    alert("删除成功");
    location.href = "./address.jsp"
    }
    }
    </script>
</head>

<body>
<div>用户${user.username}，你好</div>
<a href="exit">退出</a>
<div>
    <a href="./add.jsp">添加通讯信息</a>
</div>
<div class="layui-container">
    <div style="text-align: center">
        <table class="layui-table">
            <caption>
                <h2>个人通讯录</h2>
            </caption>
            <table class="layui-table">
                <thead>
                <tr>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>手机</th>
                    <th>Email</th>
                    <th>qq号码</th>
                    <th>工作单位</th>
                    <th>地址</th>
                    <th>邮编</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="address" items="${address}">
                <tr>
                    <td>${address.username}</td>
                    <td>${address.sex}</td>
                    <td>${address.mobile}</td>
                    <td>${address.email}</td>
                    <td>${address.qq}</td>
                    <td>${address.company}</td>
                    <td>${address.address}</td>
                    <td>${address.postcode}</td>
                    <td><button id="delete${address.id}" value="${address.id}">删除</button>
                        <button id="modify${address.id}" value="${address.id}">修改</button>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </table>
    </div>
</div>

<script src="/SpringMVCTest/layui-v2.5.4/layui/layui.all.js"></script>
<script src="/SpringMVCTest/js/jquery-3.4.1.min.js"></script>
</body>
</html>