<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String SHHDH="";//收货单号
SHHDH=getStr(request.getParameter("SHHDH"));
String sql="";
sql="delete SHHD where SHHDH='"+SHHDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"receivecx.jsp\";</script>");
%>
