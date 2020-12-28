<%--
  Created by IntelliJ IDEA.
  User: 泡泡
  Date: 2020/12/13
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <title>我的文档</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../CSS/MyFile.css">
</head>
<body>
<div class="demoTable">
        <div class="layui-inline">
            <label class="layui-form-label">上传时间：</label>
            <div class="layui-input-inline">
                <input type="text" class="layui-input" id="beginTime" placeholder="yyyy-MM-dd">
            </div>
        </div>
    <div class="layui-inline">
        <label class="layui-form-label">至：</label>
        <div class="layui-input-inline">
            <input type="text" class="layui-input" id="endTime" placeholder="yyyy-MM-dd">
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">文档类型：</label>
        <div class="layui-input-inline">
            <select name="FileType" lay-verify="required" lay-search="">
                <option value=""></option>
                <option value="ppt">ppt</option>
            </select>
        </div>
    </div>
    <div class="layui-inline">
        <label class="layui-form-label">审核状态：</label>
        <div class="layui-input-inline">
            <select name="checkState" lay-verify="required" lay-search="">
                <option value=""></option>
                <option value="未审核">未审核</option>
            </select>
        </div>
    </div>
    <button class="layui-btn" data-type="reload">搜索</button>
</div>
<table class="layui-hide" id="MyScore"></table>
<script src="../layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="../JS/jquery-3.5.1.js" charset="UTF-8"></script>
<script src="../JS/MyFile.js" charset="UTF-8"></script>
</body>
</html>
