<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String QGDH="";//请购单号
QGDH=getStr(request.getParameter("QGDH"));
String sql="";
sql="delete QGD where QGDH='"+QGDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"qinggoucx.jsp\";</script>");
%>
