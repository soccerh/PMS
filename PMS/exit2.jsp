<%@page contentType="text/html;charset=gb2312"%>
<html>
<body>
<%
session.removeAttribute("m");
out.println("您已退出登录!");
out.println("javascript:history.go(-1);");
%>
</body>
</html>
