<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String BMBH="";//部门编号
BMBH=getStr(request.getParameter("BMBH"));
String sql="";
sql="delete BMXXB where BMBH='"+BMBH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"systembmglcx.jsp\";</script>");
%>
