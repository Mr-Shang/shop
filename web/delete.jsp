<%@ page import="com.shop.dao.ShopDao" %>
<%@ page import="com.shop.dao.daoFactory" %>
<%--
  Created by IntelliJ IDEA.
  User: asus-pc
  Date: 2015/8/17
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    int UserId = Integer.parseInt(request.getParameter("UserId"));
    ShopDao shopDao = daoFactory.getShopDao();
    shopDao.delete(UserId);
    response.sendRedirect("UserList.jsp");
%>

</body>
</html>
