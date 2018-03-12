<%--
  Created by IntelliJ IDEA.
  User: fws
  Date: 2018/3/12
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <div id="messageBox">
        <p><font color="red">${requestScope.error}</font></p>
        <form action="MsgPublish" method="post">
            <p>消息标题：<input type="text" name="title" size="50" id=""></p>
            <p>消息内容：</p>
            <p><FCK:editor instanceName="content" basePath="/fckedit" toolbarSet="myToolbar" height="400" width="750"></FCK:editor></p>
            <p align="center">
                <input type="submit" value="提交">
                <input type="reset" value="充值">
            </p>
        </form>
    </div>
</body>
</html>