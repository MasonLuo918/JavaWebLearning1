<%@ page import="java.net.URLDecoder" %>
<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 7:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    String user = "";
    String date = "";
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("mrCookie")) {
                String decode = URLDecoder.decode(cookie.getValue(), "utf-8");
                user = decode.split("#")[0];
                date = decode.split("#")[1];
            }
        }
    }
    if ("".equals(user) && "".equals(date)) {
%>
游客你好，欢迎初次光临
<form action="deal.jsp" method="post">
    请输入姓名:<input name="user" type="text" value="">
    <input type="submit" value="确定">
</form>
<%
} else {
%>
欢迎[<b><%=user%>
</b>] 再次光临<br>
您的注册时间是：<%=date%>
<%
    }
%>
</body>
</html>
