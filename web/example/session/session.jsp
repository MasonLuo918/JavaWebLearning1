<%--
  Created by IntelliJ IDEA.
  User: luo
  Date: 2019/3/28
  Time: 10:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session</title>
</head>
<body>
<%
    String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
    session.setAttribute("name",name);
%>
<form id="form1" name="form1" method="post" action="result.jsp">
    <table width="28%" border="0">
        <tr>
            <td>您的名字是:</td>
            <td><%=name%></td>
        </tr>
        <tr>
            <td>您最喜欢去的地方是</td>
            <td>
                <label>
                    <input type="text" name="address">
                </label>
            </td>
        </tr>
        <<input type="submit" name="Submit" value="提交">
    </table>
</form>
</body>
</html>
