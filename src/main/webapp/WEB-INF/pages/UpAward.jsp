<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/10
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
</head>
<body>
<form class="layui-form" action=" " >
    <br>
    <br>
    <br>
    <div class="demoTable" align="center">

        <div class="demoTable" align="center">
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right"> .doc/.docx：</label>
            </div>

            <div class="layui-inline">

                <input class="layui-input" name="docTitle" id="docTitle" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right"> .xls/.xlsx：</label>
            </div>
            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle1" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">.ppt/.pptx：</label>
            </div>

            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle2" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right"> .jpg：</label>
            </div>

            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle3" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">   .txt：</label>
            </div>

            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle4" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">.war：</label>
            </div>

            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle6" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">.zip：</label>
            </div>

            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle7" autocomplete="off">
            </div>
            <br>
            <br>
            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">.7z：</label>
            </div>

            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle8" autocomplete="off">
            </div>
            <br>
            <br>

            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">.java：</label>
            </div>
            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle9" autocomplete="off">
            </div>
            <br>
            <br>

            <div class="layui-inline">
                <label class="layui-form-label" style="text-align: right">.class：</label>
            </div>
            <div class="layui-inline">
                <input class="layui-input" name="docTitle" id="docTitle10" autocomplete="off">
            </div>
        </div>
        <br>
        <div class="layui-inline">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>

</form>
<script src="../JS/jquery-3.5.1.js" charset="utf-8"></script>
<script src="../layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>

    layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form

    })


</script>
</body>
</html>
