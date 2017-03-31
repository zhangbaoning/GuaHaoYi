<%--
  Created by IntelliJ IDEA.
  User: zhangbaoning
  Date: 2017/3/30
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="register.action" method="get">
    <%--customer.setCname(cname);--%>
    <%--customer.setCpassword(cpassword);--%>
    <%--customer.setCcard(ccard);--%>
    <%--customer.setCsex(csex);--%>
    <%--customer.setCtel(ctel);--%>
    <input type="text" name="name">
    <input type="text" name="password">
    <input type="text" name="card">
    <input type="number" name="sex">
    <input type="number" name="tel">
    <input type="submit">
  </form>
  </body>
</html>
