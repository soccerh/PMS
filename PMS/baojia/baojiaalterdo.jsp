<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String BJDH="";//报价单号
String BJRQ="";//报价日期
String ZHBR="";//制表人
String PZHR="";//批准人
String PZH="";//批准
String GYSH="";//供应商
String CGY="";//采购员
String JZHRQ="";//截止日期
String HB="";//货币
String CLDH="";//材料代号
String MCH="";//名称
String GG="";//规格
String YS="";//颜色
String ZXL="";//最小量
String ZDL="";//最大量
String DW="";//单位
String DJ="";//单价
String SHL="";//税率
String HSHDJ="";//含税单价
String ZHKL="";//折扣率
String PP="";//品牌
String CLLX="";//材料类型
String GFXH="";//供方型号
String GYSHCLMCH="";//供应商材料名称
String BZH="";//备注
BJDH=getStr(request.getParameter("BJDH"));
BJRQ=getStr(request.getParameter("BJRQ"));
ZHBR=getStr(request.getParameter("ZHBR"));
PZHR=getStr(request.getParameter("PZHR"));
PZH=getStr(request.getParameter("PZH"));
GYSH=getStr(request.getParameter("GYSH"));
CGY=getStr(request.getParameter("CGY")); 
JZHRQ=getStr(request.getParameter("JZHRQ"));
HB=getStr(request.getParameter("HB"));
CLDH=getStr(request.getParameter("CLDH"));
MCH=getStr(request.getParameter("MCH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DJ=getStr(request.getParameter("DJ"));
DW=getStr(request.getParameter("DW"));
ZXL=getStr(request.getParameter("ZXL"));
ZDL=getStr(request.getParameter("ZDL"));
SHL=getStr(request.getParameter("SHL"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
ZHKL=getStr(request.getParameter("ZHKL"));
PP=getStr(request.getParameter("PP"));
CLLX=getStr(request.getParameter("CLLX"));
GFXH=getStr(request.getParameter("GFXH"));
GYSHCLMCH=getStr(request.getParameter("GYSHCLMCH"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="update BJD set BJRQ='"+BJRQ+"',ZHBR='"+ZHBR+"',PZHR='"+PZHR+"',PZH='"+PZH+"',GYSH='"+GYSH+"',CGY='"+CGY+"',JZHRQ='"+JZHRQ+"',HB='"+HB+"',CLDH='"+CLDH+"',MCH='"+MCH+"',GG='"+GG+"',YS='"+YS+"',DJ='"+DJ+"',DW='"+DW+"',ZXL='"+ZXL+"',ZDL='"+ZDL+"',SHL='"+SHL+"',HSHDJ='"+HSHDJ+"',ZHKL='"+ZHKL+"',PP='"+PP+"',CLLX='"+CLLX+"',GFXH='"+GFXH+"',GYSHCLMCH='"+GYSHCLMCH+"',BZH='"+BZH+"' where BJDH='"+BJDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
out.println("<script>window.location.href=\"baojiacx.jsp\";</script>");
stmt.close(); 
conn.close();

%>
