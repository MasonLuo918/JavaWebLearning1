<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <title>中转页面</title>
</head>
<body>
<input type="file" id="img">
<button onclick="get()" value="get"></button>
</body>

<script type="text/javascript">
    function get() {
        var path = document.getElementById("img").value;
        console.log(path);
    }
</script>
</html>
