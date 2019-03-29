<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 11:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = session.getAttribute("name").toString();
    String solution = new String(request.getParameter("address").getBytes("ISO-8859-1"),"utf-8");
%>
<p>你的名字是: <%=name%></p>
<p>你最喜欢去的地方是: <%=solution%></p>
</body>
</html>
