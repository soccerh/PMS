<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String QGDH="";//请购单号
String QGBM="";//请购部门
String QGRQ="";//请购日期
String QGR="";//请购人
String CLDH="";//材料代号
String MCH="";//名称
String GG="";//规格
String YS="";//颜色
String DJ="";//单价
String SHL="";//数量
String XYRQ="";//需要日期
String YJR="";//预交日
String BZH="";//备注
QGDH=getStr(request.getParameter("QGDH"));
QGBM=getStr(request.getParameter("QGBM"));
QGRQ=getStr(request.getParameter("QGRQ"));
QGR=getStr(request.getParameter("QGR"));
CLDH=getStr(request.getParameter("CLDH"));
MCH=getStr(request.getParameter("MCH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DJ=getStr(request.getParameter("DJ"));
SHL=getStr(request.getParameter("SHL"));
XYRQ=getStr(request.getParameter("XYRQ"));
YJR=getStr(request.getParameter("YJR"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="update QGD set QGBM='"+QGBM+"',QGRQ='"+QGRQ+"',QGR='"+QGR+"',CLDH='"+CLDH+"',MCH='"+MCH+"',GG='"+GG+"',YS='"+YS+"',DJ='"+DJ+"',SHL='"+SHL+"',XYRQ='"+XYRQ+"',YJR='"+YJR+"',BZH='"+BZH+"' where QGDH='"+QGDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"qinggoucx.jsp\";</script>");
%>
