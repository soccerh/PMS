<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String CGDH="";//采购单号
String GYSH="";//供应商
String CGBM="";//采购部门
String CGRQ="";//采购日期
String CGY="";//采购员
String HB="";//货币
String SHHLX="";//收货类型
String CGCL="";//采购材料
String MCH="";//名称
String GG="";//规格
String YS="";//颜色
String DJ="";//单价
String SHL="";//税率
String HSHDJ="";//含税单价
String SHHJE="";//收货金额
String YKYSHJE="";//已开应收金额
String KPSHL="";//开票数量
String YTSHL="";//已退数量
String XNJ="";
String CHPGCH="";
String FH="";
String BZH="";//备注
CGDH=getStr(request.getParameter("CGDH"));
CGBM=getStr(request.getParameter("CGBM"));
CGY=getStr(request.getParameter("CGY")); 
HB=getStr(request.getParameter("HB"));
CGRQ=getStr(request.getParameter("CGRQ"));
CGCL=getStr(request.getParameter("CGCL"));
MCH=getStr(request.getParameter("MCH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DJ=getStr(request.getParameter("DJ"));
SHHLX=getStr(request.getParameter("SHHLX"));
GYSH=getStr(request.getParameter("GYSH"));
SHL=getStr(request.getParameter("SHL"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
SHHJE=getStr(request.getParameter("SHHJE"));
YKYSHJE=getStr(request.getParameter("YKYSHJE"));
KPSHL=getStr(request.getParameter("KPSHL"));
YTSHL=getStr(request.getParameter("YTSHL"));
XNJ=getStr(request.getParameter("XNJ"));
CHPGCH=getStr(request.getParameter("CHPGCH"));
FH=getStr(request.getParameter("FH"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="insert into CGD(CGDH,CGBM,CGY,HB,CGRQ,CGCL,MCH,GG,YS,DJ,SHHLX,GYSH,SHL,HSHDJ,SHHJE,YKYSHJE,KPSHL,YTSHL,XNJ,CHPGCH,FH,BZH)values('"+CGDH+"','"+CGBM+"','"+CGY+"','"+HB+"','"+CGRQ+"','"+CGCL+"','"+MCH+"','"+GG+"','"+YS+"','"+DJ+"','"+SHHLX+"','"+GYSH+"','"+SHL+"','"+HSHDJ+"','"+SHHJE+"','"+YKYSHJE+"','"+KPSHL+"','"+YTSHL+"','"+XNJ+"','"+CHPGCH+"','"+FH+"','"+BZH+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"purchasecx.jsp\";</script>");
%>
