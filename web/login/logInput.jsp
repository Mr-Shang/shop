<%--
  Created by IntelliJ IDEA.
  User: 东
  Date: 2015/10/10
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<h2 align="center">欢迎使用我们的管理系统</h2>
<hr>
 <form action="${pageContext.request.contextPath}/login/login.jsp" method="post"  align="center" >
  用户名： <label>
     <input type="text" name="username">
 </label><br>
  密&nbsp;码： <label>
     <input type="password" name="password">
 </label><br>
   <input type="submit" value="登录">
 </form>
</body>
</html>
