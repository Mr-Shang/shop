<%@ page import="com.shop.dao.ShopDao" %>
<%@ page import="com.shop.dao.daoFactory" %>
<%@ page import="java.util.List" %>
<%@ page import="com.shop.medol.User" %>
<%--
  Created by IntelliJ IDEA.
  User: asus-pc
  Date: 2015/8/17
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <%
        ShopDao shopDao = daoFactory.getShopDao();
        List<User> users = shopDao.list();
    %>
</head>
<body>
<jsp:include page="/inc/inc.jsp"></jsp:include>
<table align="center" border="1" width="500">
    <tr align="center">
        <td>用户标识</td>
        <td>用户名</td>
        <td>用户密码</td>
        <td>用户昵称</td>
        <td>操作</td>
    </tr>
    <tr align="center">
        <%
            for (User u : users) {
        %>
        <td align="center"><%=u.getUserId()%>
        </td>
        <td align="center"><%=u.getUsername()%>
        </td>
        <td align="center"><%=u.getPassword()%>
        </td>
        <td align="center"><%=u.getNickname()%>
        </td>
        <td align="center"><a href="delete.jsp?UserId=<%=u.getUserId()%>">删除</a> &nbsp;
                           <a href="updateInput.jsp?UserId=<%=u.getUserId()%>">修改</a></td>
    </tr>
    <%
        }
    %>


</table>

</body>
</html>
