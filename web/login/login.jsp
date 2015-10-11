<%@ page import="com.shop.dao.ShopDao" %>
<%@ page import="com.shop.dao.daoFactory" %>
<%@ page import="com.shop.medol.User" %>
<%@ page import="com.shop.medol.ShopException" %>
<%@ page import="java.sql.SQLException" %>
<%--
  Created by IntelliJ IDEA.
  User: 东
  Date: 2015/10/10
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    try {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        System.out.println(username);
//        System.out.println(password);
        ShopDao shopDao = daoFactory.getShopDao();
        User user = null;
        try {
            user = shopDao.login(username, password);
//            System.out.println(user.toString());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        session.setAttribute("loginUser", user);
        response.sendRedirect(request.getContextPath() + "/admin/UserList.jsp");
    } catch (ShopException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
