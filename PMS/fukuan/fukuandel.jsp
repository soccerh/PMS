<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String FKDH="";//付款单号
FKDH=getStr(request.getParameter("FKDH"));
String sql="";
sql="delete FKD where FKDH='"+FKDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"fukuancx.jsp\";</script>");
%>
