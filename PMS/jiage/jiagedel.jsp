<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String GYSHDH="";//供应商代号
GYSHDH=getStr(request.getParameter("GYSHDH"));
String sql="";
sql="delete GYSHJG where MCH='"+MCH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"jiagecx.jsp\";</script>");
%>
