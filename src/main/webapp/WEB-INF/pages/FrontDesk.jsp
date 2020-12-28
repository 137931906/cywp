<%--
  Created by IntelliJ IDEA.
  User: 泡泡
  Date: 2020/12/12
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>前台菜单</title>
    <link rel="stylesheet" href="../layui/css/layui.css" type="text/css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">欢迎来到传一网盘</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">个人信息</a>
                    <dl class="layui-nav-child">
                        <dd><a title="Mymessage.jsp" onclick="tiaoZhuang(this)">我的信息</a></dd>
                        <dd><a title="MyFile.jsp" onclick="tiaoZhuang(this)">我的文档</a></dd>
                        <dd><a title="MyScore.jsp" onclick="tiaoZhuang(this)">我的积分</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">文档中心</a>
                    <dl class="layui-nav-child">
                        <dd><a >上传文档</a></dd>
                        <dd><a href="javascript:;">搜索文档</a></dd>
                        <dd><a href="javascript:;">下载文档</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 5px;">
            <iframe id="iframe" src="" style="width: 100%;height: 100%"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        xxx
    </div>
</div>
<script src="../layui/layui.js" charset="UTF-8" type="text/javascript"></script>
<script src="../JS/jquery-3.5.1.js" charset="utf-8"></script>
<script src="../JS/FrontDesk.js" charset="UTF-8" type="text/javascript"></script>
<script>
    //JavaScript代码区域
    function tiaoZhuang(node){
        $('#iframe').attr('src',node.title);
    }
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>
