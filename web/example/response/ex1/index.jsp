<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 10:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        response.setHeader("Cache-Control","no-store");
        response.setDateHeader("Expires",0);
        response.setHeader("refresh","10");
        response.setHeader("refresh","15;URL=login.jsp");
    %>


</body>
</html>
