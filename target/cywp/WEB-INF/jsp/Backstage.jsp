<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/2
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <script type="text/javascript" src="../JS/jquery-3.5.1.js"></script>
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">传一网盘后台管理系统</div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    张三
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
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
                    <a class="" href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a title="Admin.jsp" onclick="tiaoZhuang(this)">用户查询</a></dd>
                        <dd><a title="DocmentAudit.jsp" onclick="tiaoZhuang(this)">用户管控</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">文档管理</a>
                    <dl class="layui-nav-child">
                        <dd><a title="MyDoc.jsp" onclick="tiaoZhuang(this)">文档审核</a></dd>
                        <dd><a title="DocmentType.jsp" onclick="tiaoZhuang(this)">文档配置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">日志管理</a>
                    <dl class="layui-nav-child">
                        <dd><a title="LogManagement.jsp" onclick="tiaoZhuang(this)">日志列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">系统配置</a>
                    <dl class="layui-nav-child">
                        <dd><a title="UpAward.jsp" onclick="tiaoZhuang(this)">上传奖励配置</a></dd>
                        <dd><a title="RsAward.jsp" onclick="tiaoZhuang(this)">注册奖励配置</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <!-- 内容主体区域 -->
    <div class="layui-body">
        <div style="padding: 15px;">
            <iframe id="iframe" src="" style=" width:98%;height:calc(100vh - 60px)"></iframe>
        </div>
        <div style="padding: 15px;">
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->

    </div>
</div>
<script type="text/javascript" src="../layui/layui.js"></script>
<script>
    function tiaoZhuang(node){
        $('#iframe').attr('src',node.title);
    }
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
