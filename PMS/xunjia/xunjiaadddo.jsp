<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String XJDH="";//询价单号
String MCH="";//材料名称
String XJRQ="";//询价日期
String XJY="";//询价员
String GYSH="";//供应商
String BM="";//部门
String CLDH="";//材料代号
String GG="";//规格
String YS="";//颜色
String DW="";//单位
String BZH="";//备注
XJDH=getStr(request.getParameter("XJDH"));
MCH=getStr(request.getParameter("MCH"));
XJRQ=getStr(request.getParameter("XJRQ"));
XJY=getStr(request.getParameter("XJY"));
GYSH=getStr(request.getParameter("GYSH"));
BM=getStr(request.getParameter("BM"));
CLDH=getStr(request.getParameter("CLDH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DW=getStr(request.getParameter("DW"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="insert into XJD(XJDH,MCH,XJRQ,XJY,GYSH,BM,CLDH,GG,YS,DW,BZH)values('"+XJDH+"','"+MCH+"','"+XJRQ+"','"+XJY+"','"+GYSH+"','"+BM+"','"+CLDH+"','"+GG+"','"+YS+"','"+DW+"','"+BZH+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"xunjiacx.jsp\";</script>");
%>
