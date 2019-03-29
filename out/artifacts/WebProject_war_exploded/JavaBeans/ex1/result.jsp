<%@ page import="JavaBean.Email" %><%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
</head>
<body>
    <%
        //获取邮箱地址
        String mailAdd = request.getParameter("mailAdd");
        out.print(mailAdd);
        //实例化Email
        Email email = new Email(mailAdd);
        if(email.isEmail()){
            out.print(mailAdd + "<br>是一个标准的邮箱地址!<br>" );
        }else{
            out.print(mailAdd + "<br>不是一个标准的邮箱地址!<br>" );
        }

//        response.setHeader("refresh","5;URL=index.jsp");
    %>
</body>
</html>
