<%@page contentType="text/html;charset=gb2312"%>
<html>
<body>
<%
session.removeAttribute("m");
out.println("您已退出登录!");
response.setHeader("refresh", "1;url=login.jsp");
%>
</body>
</html>
