<%--
  Created by IntelliJ IDEA.
  User: 泡泡
  Date: 2020/12/14
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
    <meta charset="utf-8">
    <title>文档上传</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css"  media="all">
    <script src="../layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="../js/jquery-3.5.1.js" charset="UTF-8"></script>
    <script src="../js/FileUpload.js" charset="UTF-8"></script>
</head>
<body>
<form class="layui-form" action="">
<div class="layui-form-item">
    <label class="layui-form-label">文档标题：</label>
    <div class="layui-input-block">
        <input id="titleName" type="text" name="title" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
    </div>
</div>
<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">文档简介：</label>
    <div class="layui-input-block">
        <textarea id="content" placeholder="请输入内容" class="layui-textarea"></textarea>
    </div>
</div>

<div class="layui-upload" id="fileName">
    <button type="button" class="layui-btn layui-btn-normal" id="test8">选择文件</button>
</div>
    <div class="layui-form-item">
        <label class="layui-form-label">下载积分：</label>
        <div class="layui-input-block">
            <input id="downScore" type="text" name="title" required  lay-verify="required|number"  autocomplete="off" class="layui-input">
        </div>
    </div>
<div align="center">
<button type="button" class="layui-btn" id="test9" lay-submit lay-filter="formDemo">开始上传</button>
<%--<button type="button" class="layui-btn layui-btn-normal">返回</button>--%>
</div>>
</form>
</body>
</html>
