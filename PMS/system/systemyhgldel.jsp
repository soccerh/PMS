<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String YHBH="";//用户编号
YHBH=getStr(request.getParameter("YHBH"));
String sql="";
sql="delete RYMD where YHBH='"+YHBH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"systemyhglcx.jsp\";</script>");
%>
