<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String GYSHDH="";//供应商代号
String GYSHQCH="";//供应商全称
String YUFKJE="";//预付款金额
String YIFKJ="";//应付款金额
String QKJE="";//欠款金额
String JYPF="";//交易评分
String JHPF="";//交货评分
String PZHPF="";//品质评分
String FKFSH="";//付款方式
String JYHB="";//交易货币
String FKTJ="";//付款条件
String JGTJ="";//价格条件
String ZPGJ="";//总评等级
GYSHDH=getStr(request.getParameter("GYSHDH"));
GYSHQCH=getStr(request.getParameter("GYSHQCH"));
YUFKJE=getStr(request.getParameter("YUFKJE"));
YIFKJ=getStr(request.getParameter("YIFKJ"));
QKJE=getStr(request.getParameter("QKJE"));
JYPF=getStr(request.getParameter("JYPF"));
JHPF=getStr(request.getParameter("JHPF"));
PZHPF=getStr(request.getParameter("PZHPF"));
FKFSH=getStr(request.getParameter("FKFSH"));
JYHB=getStr(request.getParameter("JYHB"));
FKTJ=getStr(request.getParameter("FKTJ"));
JGTJ=getStr(request.getParameter("JGTJ"));
ZPGJ=getStr(request.getParameter("ZPGJ"));
String sql="";
sql="update GYSHPG set GYSHQCH='"+GYSHQCH+"',YUFKJE='"+YUFKJE+"',YIFKJ='"+YIFKJ+"',QKJE='"+QKJE+"',JYPF='"+JYPF+"',JHPF='"+JHPF+"',PZHPF='"+PZHPF+"',FKFSH='"+FKFSH+"',JYHB='"+JYHB+"',FKTJ='"+FKTJ+"',JGTJ='"+JGTJ+"',ZPGJ='"+ZPGJ+"' where GYSHDH='"+GYSHDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"pinggucx.jsp\";</script>");
%>
