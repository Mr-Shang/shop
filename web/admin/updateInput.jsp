<%@ page import="com.shop.util.ValidateUtil" %>
<%@ page import="com.shop.dao.ShopServiceDao" %>
<%@ page import="com.shop.dao.daoFactory" %>
<%@ page import="com.shop.dao.ShopDao" %>
<%@ page import="com.shop.medol.User" %>
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
<%
  int UserId=Integer.parseInt(request.getParameter("UserId"));
  ShopDao shopDao=daoFactory.getShopDao();
  User user=shopDao.load(UserId);
  System.out.println(UserId);
%>

<form action="update.jsp" method="post">
  <input type="hidden" value="<%=user.getUserId()%>" name="userId">
  <table align="center" border="1">

    <tr>
      <td>用户名：</td>
      <td> <%=user.getUsername()%>
        <%--<%=ValidateUtil.showErrorMessage(request, "username")%>--%>
      </td>
    </tr>
    <tr>
      <td>用户密码：</td>
      <td><input type="password" name="password" value="<%=user.getPassword()%>">
        <%--<%=ValidateUtil.showErrorMessage(request, "password")%>--%>
      </td>
    </tr>
    <tr>
      <td>用户昵称：</td>
      <td><input type="text" name="nickname" value="<%=user.getNickname()%>">
        <%--<%=ValidateUtil.showErrorMessage(request, "nickname")%>--%>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <input type="submit" value="确定修改" align="center">
        <input type="reset" value="重置数据" align="center">
      </td>
    </tr>
  </table>

</form>


</body>
</html>
