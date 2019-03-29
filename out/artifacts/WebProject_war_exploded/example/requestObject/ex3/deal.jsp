
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String date = simpleDateFormat.format(new Date());
        String user= URLEncoder.encode(request.getParameter("user") + "#" + date,"utf-8");
        Cookie cookie = new Cookie("mrCookie", user);
        cookie.setMaxAge(60*60*24*30);
        response.addCookie(cookie);
    %>
<script type="text/javascript">
    window.location.href="index.jsp"
</script>
</body>
</html>
