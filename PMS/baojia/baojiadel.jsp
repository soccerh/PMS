<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String BJDH="";//报价单号
BJDH=getStr(request.getParameter("BJDH"));
String sql="";
sql="delete BJD where BJDH='"+BJDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"baojiacx.jsp\";</script>");
%>
