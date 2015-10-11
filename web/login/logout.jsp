<%--
  Created by IntelliJ IDEA.
  User: 东
  Date: 2015/10/10
  Time: 20:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
 <%
  session.invalidate();
   response.sendRedirect("logInput.jsp");
 %>
</body>
</html>
