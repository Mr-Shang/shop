<%--suppress ALL --%>
<%@ page import="com.shop.util.ValidateUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: asus-pc
  Date: 2015/8/16
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
</head>
<body>
<jsp:include page="../inc/inc.jsp"></jsp:include>
<form action="add.jsp" method="post">
    <table align="center" border="1">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username">
                <%=ValidateUtil.showErrorMessage(request, "username")%>
            </td>
        </tr>
        <tr>
            <td>用户密码：</td>
            <td><input type="password" name="password">
                <%=ValidateUtil.showErrorMessage(request, "password")%>
            </td>
        </tr>
        <tr>
            <td>用户昵称：</td>
            <td><input type="text" name="nickname">
                <%=ValidateUtil.showErrorMessage(request, "nickname")%>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="确定" align="center">
            </td>
        </tr>
    </table>
    <%--<%--%>
        <%--System.out.println(request.getContextPath());%>--%>

</form>


</body>
</html>
