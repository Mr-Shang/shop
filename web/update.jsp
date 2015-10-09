<%--
  Created by IntelliJ IDEA.
  User: 东
  Date: 2015/9/28
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
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
//  String uername = request.getParameter("username");
  int userId=Integer.parseInt(request.getParameter("userId"));
  String password = request.getParameter("password");
  String nickname = request.getParameter("nickname");
  System.out.println(nickname);
  boolean validate = ValidateUtil.ValidateNull(request, new String[]{ "password", "nickname"});
  if (!validate) {
%>
<%--<jsp:forward page="updateInput.jsp"/>--%>
<%
  }
  ShopDao shopDao=daoFactory.getShopDao();
  User user = shopDao.load(userId);
//  user.setUsername(uername);
  user.setPassword(password);
  user.setNickname(nickname);
//  System.out.println(user);
//  ShopDao shopDao = daoFactory.getShopDao();
  shopDao.update(user);
  response.sendRedirect("UserList.jsp");
%>
<%--<a href="index.jsp">继续添加</a>--%>
<%--<a href="UserList.jsp">用户列表</a>--%>

</body>
</html>


</body>
</html>
