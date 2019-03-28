<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Title here</title>
</head>
<body>
    <%
        String message = request.getAttribute("result").toString();
    %>

    <%=message%>
</body>
</html>
