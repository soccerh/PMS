<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String CGDH="";//采购单号
CGDH=getStr(request.getParameter("CGDH"));
String sql="";
sql="delete CGD where CGDH='"+CGDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"purchasecx.jsp\";</script>");
%>
