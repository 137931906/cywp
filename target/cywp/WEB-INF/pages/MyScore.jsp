<%--
  Created by IntelliJ IDEA.
  User: 泡泡
  Date: 2020/12/13
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
</head>
<body>
    <div class="layui-form-item">
        <label class="layui-form-label">当前积分：</label>
        <div class="layui-input-block">
            <input id="nowScore" type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>
    </div>
<table class="layui-hide" id="MyScore"></table>
<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="../JS/jquery-3.5.1.js" charset="UTF-8"></script>
<script src="../JS/MyScore.js" charset="UTF-8"></script>
</body>
</html>
