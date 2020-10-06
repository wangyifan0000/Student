<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/20
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <table border="1px">
        <tr>
            <td>学员信息列表</td>
        </tr>
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>住址</td>
            <td>email</td>

        </tr>
        <c:forEach var="student" items="${list}">
            <tr>
                <td><a href="javascript:void(0)" onclick="showStudent(${student.sid})">${student.sid}</a></td>
                <td>${student.sname}</td>
                <td>${student.sgender}</td>
                <td>${student.sage}</td>
                <td>${student.saddress}</td>
                <td>${student.semail}</td>
            </tr>
        </c:forEach>
        <tr>
    </table>
</form>
<script>
    $(function () {
        $("tr:odd").css("background-color", "gray");
    })

    function showStudent(id) {
        alert(id);
        location.href = "/updateSelectById/" + id;
    }
</script>
</body>
</html>
