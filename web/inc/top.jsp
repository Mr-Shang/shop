<%@ page import="com.shop.medol.User" %>
<%--
  Created by IntelliJ IDEA.
  User: 东
  Date: 2015/10/10
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    User user = (User) session.getAttribute("loginUser");
//  if(user==null){
//    response.sendRedirect(request.getContextPath()+"/login/logInput.jsp");
//    return;
//  }
%>
<div align="right">
    欢迎<%=user.getNickname()%>使用我们的系统
    <a href="<%=request.getContextPath()%>/admin/UserList.jsp">用户管理</a>&nbsp;
    <a href="<%=request.getContextPath()%>/login/logout.jsp">退出系统</a>

</div>

</body>
</html>
