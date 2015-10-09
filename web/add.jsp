<%@ page import="com.shop.medol.User" %>
<%@ page import="com.shop.dao.ShopDao" %>
<%@ page import="com.shop.dao.daoFactory" %>
<%@ page import="com.shop.util.ValidateUtil" %>
<%--
  Created by IntelliJ IDEA.
  User: asus-pc
  Date: 2015/8/17
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String uername = request.getParameter("username");
    String password = request.getParameter("password");
    String nickname = request.getParameter("nickname");
    System.out.println(nickname);
    boolean validate = ValidateUtil.ValidateNull(request, new String[]{"username", "password", "nickname"});
    if (!validate) {
%>
<jsp:forward page="index.jsp"/>
<%
    }
    User user = new User();
    user.setUsername(uername);
    user.setPassword(password);
    user.setNickname(nickname);
    ShopDao shopDao = daoFactory.getShopDao();
    shopDao.add(user);
//    response.sendRedirect("UserList.jsp");
%>
<a href="index.jsp">继续添加</a>
<a href="UserList.jsp">用户列表</a>

</body>
</html>
