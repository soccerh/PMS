<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String XJDH="";//询价单号
XJDH=getStr(request.getParameter("XJDH"));
String sql="";
sql="delete XJD where XJDH='"+XJDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"xunjiacx.jsp\";</script>");
%>
