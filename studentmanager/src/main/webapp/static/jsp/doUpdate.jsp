<%--
  Created by IntelliJ IDEA.
  User: 86150
  Date: 2020/9/20
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="/static/js/jquery-1.12.4.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doupdateStudentInfo" method="post">
    <table border="1px">
        <tr>
            <td style="text-align: center">学员信息</td>
        </tr>
        <tr>
            <td>编号<input type="text" name="sid" value="${studentInfo.sid}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>姓名<input type="text" name="sname" value="${studentInfo.sname}" readonly="readonly"></td>
        </tr>
        <tr>
            <td>年龄<input type="text" name="sage" value="${studentInfo.sage}"></td>
        </tr>
        <tr>
            <td>性别<input type="text" name="sgender" value="${studentInfo.sgender}"></td>
        </tr>
        <tr>
            <td>家庭住址<input type="text" name="saddress" value="${studentInfo.saddress}"></td>
        </tr>
        <tr>
            <td>email<input type="text" name="semail" value="${studentInfo.semail}"></td>
        </tr>
        <tr>
            <td><input type="submit" value="保存"><input type="button" value="重置"><input type="button" value="返回"></td>
        </tr>
    </table>
</form>
<script>
    $("form").submit(function () {
        var sname = $("[name='sname']").val();
        var sage = $("[name='sage']").val();
        var sgender = $("[name='sgender']").val();
        var saddress = $("[name='saddress']").val();
        if (sname == "") {
            alert("姓名不能为空");
            return false;
        }
        if (sage == "") {
            alert("年龄不能为空");
            return false;
        }
        if (sgender == "") {
            alert("性别不能为空");
            return false;
        }

        if (saddress == "") {
            alert("请填写家庭地址");
            return false;
        }
        if (semail == "") {
            alert("请填写email");
            return false;
        }
    })
</script>
</body>
</html>
