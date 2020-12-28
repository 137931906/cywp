<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/3
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<br>
<div align="center">

</div>
<div class="demoTable" align="center">

    <div class="layui-inline">
        <label class="layui-form-label">上传日期：</label>
        <div class="layui-input-inline" style="width: 200px;">
            <input type="text" class="layui-input" id="beginTime" placeholder="yyyy-MM-dd">
        </div>
        至
        <div class="layui-input-inline" style="width: 200px;">
            <input type="text" class="layui-input" id="endTime" placeholder="yyyy-MM-dd">
        </div>
    </div>

</div>
</br>
<div class="demoTable" align="center">
    文档类型：
    <div class="layui-inline">
        <div class="layui-form" lay-filter="myDiv">
            <select name="" id="2" lay-filter="mySelect">
                <option value="">请选择</option>
                <option value="zhang">txt</option>
                <option value="wang">doc</option>
                <option value="li">png</option>
            </select>
        </div>
    </div>
    审核状态：
    <div class="layui-inline">
        <div class="layui-form" lay-filter="myDiv">
            <select name=""  lay-filter="mySelect">
                <option value="">请选择</option>
                <option value="">已审核</option>
                <option value="">未审核</option>
            </select>
        </div>
    </div>
</div>
<br>
<div  class="demoTable" align="center">
    <button class="layui-btn" data-type="reload">搜索</button>
</div>

<table class="layui-hide" id="LAY_table_user" lay-filter="user"></table>


<script src="../layui/layui.js" charset="utf-8"></script>
<script>
    layui.use('element', function(){
        var element = layui.element;
    });
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#endTime', //指定元素
        });
        laydate.render({
            elem: '#beginTime'
        });
    });
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#MyScore'
            ,url:'/MyFileServlet?methodName=selectTable'
            ,cols: [[
                {field:'fileName',  title: '文档标题'}
                ,{field:'uploadTime',  title: '上传时间'}
                ,{field:'loadScore',  title: '下载积分'}
                ,{field:'fileType',title: '文档类型'}
                ,{field:'checkState', title: '审核状态'}
            ]]
            ,id:'testReload'
            ,page: true
        });
        var $ = layui.$, active = {
            reload: function(){
                var demoReload = $('#demoReload');
                var beginTime = $('#beginTime');
                var endTime = $('#endTime');
                var FileType=$("select[name='FileType'] option:selected").val();
                var checkState=$("select[name='checkState'] option:selected").val();
                //执行重载
                table.reload('testReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        beginTime: beginTime.val(),
                        endTime:endTime.val(),
                        FileType:FileType,
                        checkState:checkState,
                    }
                }, 'data');
            }
        };
        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">待审核</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">已审核</a>
</script>
</body>
</html>