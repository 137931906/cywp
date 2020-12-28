<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/12/21
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
    <form action="/file/upload" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
        选择文件:<input type="file" name="uploadFile">
        <input type="submit" value="提交">
    </form>
    <h1>文件下载</h1>
    <a href="/file/download?filename=教学案例-传一网盘.pdf">下载</a>
    <a href="/file/download2?filename=教学案例-传一网盘.pdf">下载</a>
</body>
</html>
