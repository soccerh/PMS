<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String sn="";//仓库编号
String name="";//仓库名称
String timeok="";//建立时间
String cman="";//负责人
String quality="";//仓库容量
sn=getStr(request.getParameter("sn"));
name=getStr(request.getParameter("name"));
timeok=getStr(request.getParameter("timeok"));
cman=getStr(request.getParameter("cman"));
quality=getStr(request.getParameter("quality"));
String sql="";
sql="insert into stock(sn,name,timeok,cman,quality)values('"+sn+"','"+name+"','"+timeok+"','"+cman+"','"+quality+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"stockcx.jsp\";</script>");
%>
