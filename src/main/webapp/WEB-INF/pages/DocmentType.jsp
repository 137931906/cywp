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
<form class="layui-form" action="" >
    请选择文档类型:
    <div class="layui-form-item"  align="center">
        <br>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title=".doc/.docx" value=".doc/.docx">
            <input type="checkbox" name="like[read]" title=".xls/.xlsx" value=".xls/.xlsx">
            <input type="checkbox" name="like[game]" title=".ppt/.pptx" value=".ppt/.pptx">
        </div>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title=".jpg" value=".jpg">
            <input type="checkbox" name="like[read]" title=".txt" value=".txt">
            <input type="checkbox" name="like[game]" title=".png" value=".png">
        </div>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title=".war" value=".war">
            <input type="checkbox" name="like[read]" title=".zip" value=".zip">
            <input type="checkbox" name="like[game]" title=".7z" value=".7z">
        </div>
        <div class="layui-input-block">
            <input type="checkbox" name="like[write]" title=".java" value=".java">
            <input type="checkbox" name="like[read]" title=".class" value=".class">
        </div>
    </div>

    <div class="layui-form-item"  align="center">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
<script src="../JS/jquery-3.5.1.js" charset="utf-8"></script>
<script src="../layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>

    $(function () {
        $.ajax({
            url:"/backstageServlet?whatName=findDocType",
            data:"",
            type:"post",
            dataType:"text",
                  success:function   (data) {

                    // $("input[type='checkbox']").each(function () {
                    //     console.log($(this).val())
                    //     if ($(this).val()=="1"){
                    //         $(this).attr("checked","checked")
                    //     }
                    // })

            },
            error:function () {
                // alert("网络错误")
            }
        })

    })
   layui.use(['form', 'layedit', 'laydate'], function() {
        var form = layui.form

    })


</script>
</body>
</html>
