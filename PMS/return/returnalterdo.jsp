<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String THDH="";//退货单号
String THRQ="";//退货日期
String BM="";//采购部门
String CGY="";//采购员
String HB="";//货币
String SHHDH="";//收货单号
String GYSH="";//供应商
String CGDH="";//采购单号
String MCH="";//材料名称
String HSHDJ="";//含税单价
String PH="";//批号
String CLDH="";//材料代号
String GG="";//规格
String YS="";//颜色
String DJ="";//单价
String SHL="";//税率
String THJE="";//退货金额
String THSHL="";//退货数量
String DW="";//单位
String CK="";//仓库
String SHHSHL="";//收货数量
String YTSHL="";//已退数量
String BZH="";//备注
THDH=getStr(request.getParameter("THDH"));
THRQ=getStr(request.getParameter("THRQ"));
BM=getStr(request.getParameter("BM"));
CGY=getStr(request.getParameter("CGY"));
HB=getStr(request.getParameter("HB"));
SHHDH=getStr(request.getParameter("SHHDH"));
GYSH=getStr(request.getParameter("GYSH"));
CGDH=getStr(request.getParameter("CGDH"));
MCH=getStr(request.getParameter("MCH"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
PH=getStr(request.getParameter("PH"));
CLDH=getStr(request.getParameter("CLDH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DJ=getStr(request.getParameter("DJ"));
SHL=getStr(request.getParameter("SHL"));
THJE=getStr(request.getParameter("THJE"));
THSHL=getStr(request.getParameter("THSHL"));
DW=getStr(request.getParameter("DW"));
CK=getStr(request.getParameter("CK"));
SHHSHL=getStr(request.getParameter("SHHSHL"));
YTSHL=getStr(request.getParameter("YTSHL"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="update THD set THDH='"+THDH+"',THRQ='"+THRQ+"',BM='"+BM+"',CGY='"+CGY+"',HB='"+HB+"',SHHDH='"+SHHDH+"',GYSH='"+GYSH+"',CGDH='"+CGDH+"',MCH='"+MCH+"',HSHDJ='"+HSHDJ+"',PH='"+PH+"',CLDH='"+CLDH+"',GG='"+GG+"',YS='"+YS+"',DJ='"+DJ+"',SHL='"+SHL+"',THJE='"+THJE+"',THSHL='"+THSHL+"',DW='"+DW+"',CK='"+CK+"',SHHSHL='"+SHHSHL+"',YTSHL='"+YTSHL+"',BZH='"+BZH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"returncx.jsp\";</script>");
%>
