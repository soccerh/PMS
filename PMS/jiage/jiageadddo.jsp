<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String GYSHDH="";//供应商代号
String GYSHMCH="";//供应商全称
String CL="";//材料
String MCH="";//材料名称
String GG="";//规格
String YS="";//颜色
String DW="";//单位
String DJ="";//单价
String BHSHDJ="";//不含税单价
String SHM="";//税目
String ZXL="";//最小量
String ZDL="";//最大量
String JGTJ="";//价格条件
String GFLX="";//供方类型
String HB="";//货币
String HJRQ="";//核价日期
String ZHT="";//状态
String SHXRQ="";//生效日期
String DWZHL="";//单位重量
GYSHDH=getStr(request.getParameter("GYSHDH"));
GYSHMCH=getStr(request.getParameter("GYSHMCH"));
CL=getStr(request.getParameter("CL"));
MCH=getStr(request.getParameter("MCH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DW=getStr(request.getParameter("DW"));
DJ=getStr(request.getParameter("DJ"));
BHSHDJ=getStr(request.getParameter("BHSHDJ"));
SHM=getStr(request.getParameter("SHM"));
ZXL=getStr(request.getParameter("ZXL"));
ZDL=getStr(request.getParameter("ZDL"));
JGTJ=getStr(request.getParameter("JGTJ"));
GFLX=getStr(request.getParameter("GFLX"));
HB=getStr(request.getParameter("HB"));
HJRQ=getStr(request.getParameter("HJRQ"));
ZHT=getStr(request.getParameter("ZHT"));
SHXRQ=getStr(request.getParameter("SHXRQ"));
DWZHL=getStr(request.getParameter("DWZHL"));
String sql="";
sql="insert into GYSHJG(GYSHDH,GYSHMCH,CL,MCH,GG,YS,DW,DJ,BHSHDJ,SHM,ZXL,ZDL,JGTJ,GFLX,HB,HJRQ,ZHT,SHXRQ,DWZHL)values('"+GYSHDH+"','"+GYSHMCH+"','"+CL+"','"+MCH+"','"+GG+"','"+YS+"','"+DW+"','"+DJ+"','"+BHSHDJ+"','"+SHM+"','"+ZXL+"','"+ZDL+"','"+JGTJ+"','"+GFLX+"','"+HB+"','"+HJRQ+"','"+ZHT+"','"+SHXRQ+"','"+DWZHL+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"jiagecx.jsp\";</script>");
%>
