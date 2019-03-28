<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 7:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        try{
            int number = 1;
            int money = 100;
            request.setAttribute("result", money / number);
        }catch (Exception e){
            request.setAttribute("result", "很抱歉，页面产生错误");
        }
    %>
</body>
    <jsp:forward page="deal.jsp"/>
</html>
