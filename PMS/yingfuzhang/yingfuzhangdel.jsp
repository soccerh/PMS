<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String YFDH="";//应付单号
YFDH=getStr(request.getParameter("YFDH"));
String sql="";
sql="delete YFZHD where YFDH='"+YFDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"yingfuzhangcx.jsp\";</script>");
%>
