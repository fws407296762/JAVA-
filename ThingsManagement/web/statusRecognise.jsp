<%--
  Created by IntelliJ IDEA.
  User: fws
  Date: 2018/3/11
  Time: 17:41
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
    <title>企业日常事务管理系统-身份识别</title>
</head>
<body>
    <div id="shenfenshibie">
        <font color="red">${requestScope.error}</font>
        <form action="StatusRecogniseAction" method="post">
            <p>员工编号：<input type="text" name="employeeID" value="${param.employeeID}"></p>
            <p>&nbsp;</p>
            <p>系统口令： <input type="password" name="password" id=""></p>
            <p><input type="submit" value="提交"><input type="reset" value="重置"></p>
        </form>
    </div>
</body>
</html>
