<%--
  Created by IntelliJ IDEA.
  User: fws
  Date: 2018/3/6
  Time: 22:18
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
  <div id="employee">
    <c:choose>
      <c:when test="${empty sessionScope.employee}">
        没有进行身份识别，请先进行身份识别！
      </c:when>
      <c:otherwise>
        <ul>
          <li>员工编号：${employee.employeeID}</li>
          <li>员工姓名：${employee.employeeName}</li>
          <li>员工性别：${employee.employeeSex ? "男" : "女"}</li>
          <li>出生日期：${employee.employeeBirth}</li>
          <li>办公室电话：${employee.employeePhone}</li>
          <li>住址：${employee.employeePlace}</li>
          <li>管理层领导：${employee.lead ? "是" : "否"}</li>
        </ul>
      </c:otherwise>
    </c:choose>
  </div>
</body>
</html>
