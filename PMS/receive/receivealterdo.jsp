<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String SHHDH="";//收货单号
String SHHRQ="";//收货日期
String CGBM="";//采购部门
String CGY="";//采购员
String SHHLX="";//收货类型
String XH="";//序号
String GYSH="";//供应商
String CGDH="";//采购单号
String CGCL="";//采购材料
String HSHDJ="";//含税单价
String SHHJE="";//收货金额
String YKYSHJE="";//已开应收金额
String KPSHL="";//开票数量
String YTSHL="";//已退数量
String ZHJJG="";//质检结果
String ZHJDH="";//质检单号
String ZHJDXH="";//质检单序号
String SHHTZHD="";//收货通知单
String SHHTZHDXH="";//收货通知单序号
String XNJ="";//虚拟件
String CHPGCH="";//产品工程
String FH="";//父行
String BZH="";//备注
SHHDH=getStr(request.getParameter("SHHDH"));
SHHRQ=getStr(request.getParameter("SHHRQ"));
CGBM=getStr(request.getParameter("CGBM"));
CGY=getStr(request.getParameter("CGY"));
SHHLX=getStr(request.getParameter("SHHLX"));
XH=getStr(request.getParameter("XH"));
GYSH=getStr(request.getParameter("GYSH"));
CGDH=getStr(request.getParameter("CGDH"));
CGCL=getStr(request.getParameter("CGCL"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
SHHJE=getStr(request.getParameter("SHHJE"));
YKYSHJE=getStr(request.getParameter("YKYSHJE"));
KPSHL=getStr(request.getParameter("KPSHL"));
YTSHL=getStr(request.getParameter("YTSHL"));
ZHJJG=getStr(request.getParameter("ZHJJG"));
ZHJDH=getStr(request.getParameter("ZHJDH"));
ZHJDXH=getStr(request.getParameter("ZHJDXH"));
SHHTZHD=getStr(request.getParameter("SHHTZHD"));
SHHTZHDXH=getStr(request.getParameter("SHHTZHDXH"));
XNJ=getStr(request.getParameter("XNJ"));
CHPGCH=getStr(request.getParameter("CHPGCH"));
FH=getStr(request.getParameter("FH"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="update SHHD set SHHDH='"+SHHDH+"',SHHRQ='"+FH+"',CGBM='"+CGBM+"',CGY='"+CGY+"',SHHLX='"+SHHLX+"',XH='"+XH+"',GYSH='"+GYSH+"',CGDH='"+CGDH+"',CGCL='"+CGCL+"',HSHDJ='"+HSHDJ+"',SHHJE='"+SHHJE+"',YKYSHJE='"+YKYSHJE+"',KPSHL='"+KPSHL+"',YTSHL='"+YTSHL+"',ZHJJG='"+ZHJJG+"',ZHJDH='"+ZHJDH+"',ZHJDXH='"+ZHJDXH+"',SHHTZHD='"+SHHTZHD+"',SHHTZHDXH='"+SHHTZHDXH+"',XNJ='"+XNJ+"',CHPGCH='"+CHPGCH+"',FH='"+FH+"',BZH='"+BZH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"receivecx.jsp\";</script>");
%>
