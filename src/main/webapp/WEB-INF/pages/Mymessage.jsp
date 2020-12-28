<%--
  Created by IntelliJ IDEA.
  User: 泡泡
  Date: 2020/12/13
  Time: 0:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的信息</title>
    <link href="../layui/css/layui.css" rel="stylesheet" type="text/css">
    <script src="../layui/layui.js"></script>
    <script type="text/javascript" src="../JS/jquery-3.5.1.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../JS/jquery-3.5.1.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../JS/Mymseeage.js" charset="UTF-8"></script>
</head>
<body>
<form class="layui-form" action="" lay-filter="example">
    <div class="layui-form-item">
        <label class="layui-form-label">账号：</label>
        <div class="layui-input-block">
            <input type="text" name="Account" lay-verify="title" autocomplete="off"  class="layui-input" disabled>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">昵称：</label>
        <div class="layui-input-block">
            <input type="text" name="name" lay-verify="title" autocomplete="off" class="layui-input" disabled>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">性别：</label>
        <div class="layui-input-block">
            <input type="radio" name="sex" value="男" title="男" disabled>
            <input type="radio" name="sex" value="女" title="女" disabled>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">学历：</label>
        <div class="layui-input-block">
            <input type="text" name="educational" lay-verify="title" autocomplete="off" class="layui-input" disabled>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">职业：</label>
        <div class="layui-input-block">
            <input type="text" name="job" lay-verify="title" autocomplete="off" class="layui-input" disabled>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">手机：</label>
        <div class="layui-input-block">
            <input type="text" name="phoneNumber" lay-verify="title" autocomplete="off" class="layui-input" disabled>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">邮箱：</label>
        <div class="layui-input-block">
            <input type="text" name="Email" lay-verify="title" autocomplete="off" class="layui-input" disabled>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="button" class="layui-btn layui-btn-normal" id="LAY-component-form-setval">查看</button>
        </div>
    </div>
</form>
</body>
</html>
