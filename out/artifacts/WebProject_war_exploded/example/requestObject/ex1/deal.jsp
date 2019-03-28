<%@ page language="java" contentType="text/html; utf-8" pageEncoding="utf-8" %>
<%
    String id = request.getParameter("id");
    String user = request.getParameter("user");
    String pwd = request.getParameter("pwd");
%>

<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
    <p>id 参数的值为：<%=id%></p>
    <p>user 参数的值为: <%=user%></p>
    <p>pwd 参数的值为: <%=pwd%></p>
</body>
</html>