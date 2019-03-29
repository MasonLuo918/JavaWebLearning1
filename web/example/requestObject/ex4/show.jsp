<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <p>name 参数的值为: <%=new String(request.getParameter("name").getBytes("utf-8"), "utf-8") %></p>
    <p>sex 参数的值为:<%=request.getParameter("sex")%></p>
    <img src="111.img" id="image">
</body>

<script>
    var img = document.getElementById("image");
    console.log(img.getAttribute("src"));
</script>
</html>
