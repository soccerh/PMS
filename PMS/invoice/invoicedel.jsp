<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String PJDH="";//票据单号
PJDH=getStr(request.getParameter("PJDH"));
String sql="";
sql="delete FPD where PJDH='"+PJDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"invoicecx.jsp\";</script>");
%>
