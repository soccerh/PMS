<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String FKDH="";//付款单号
String FKRQ="";//付款日期
String ZHBR="";//制表人
String PZHR="";//批准人
String PZH="";//批准
String XGR="";//修改人
String GYSH="";//供应商
String XGRQ="";//修改日期
String SHPSHJ="";//审批时间
String FKLX="";//付款类型
String FKJE="";//付款金额
String HB="";//货币
String FKFSH="";//付款方式
String HL="";//汇率
String FKLY="";//付款来源
String PH="";//票号
String YUFJE="";//预付金额
String YFJE="";//应付金额
String QKJE="";//欠款金额
String DJLX="";//单据类型
String CGDH="";//采购单号
String YFDH="";//应付单号
String SHQDH="";//申请单号
String YIFJE="";//已付金额
String BCFKJE="";//本次付款金额
String BZH="";//备注
FKDH=getStr(request.getParameter("FKDH"));
FKRQ=getStr(request.getParameter("FKRQ"));
ZHBR=getStr(request.getParameter("ZHBR"));
PZHR=getStr(request.getParameter("PZHR"));
PZH=getStr(request.getParameter("PZH"));
XGR=getStr(request.getParameter("XGR"));
GYSH=getStr(request.getParameter("GYSH"));
XGRQ=getStr(request.getParameter("XGRQ"));
SHPSHJ=getStr(request.getParameter("SHPSHJ"));
FKLX=getStr(request.getParameter("FKLX"));
FKJE=getStr(request.getParameter("FKJE"));
HB=getStr(request.getParameter("HB"));
FKFSH=getStr(request.getParameter("FKFSH"));
HL=getStr(request.getParameter("HL"));
FKLY=getStr(request.getParameter("FKLY"));
PH=getStr(request.getParameter("PH"));
YUFJE=getStr(request.getParameter("YUFJE"));
YFJE=getStr(request.getParameter("YFJE"));
QKJE=getStr(request.getParameter("QKJE"));
DJLX=getStr(request.getParameter("DJLX"));
YFDH=getStr(request.getParameter("YFDH"));
SHQDH=getStr(request.getParameter("SHQDH"));
CGDH=getStr(request.getParameter("CGDH"));
YIFJE=getStr(request.getParameter("YIFJE"));
BCFKJE=getStr(request.getParameter("BCFKJE"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="update FKD set FKRQ='"+FKRQ+"',ZHBR='"+ZHBR+"',PZHR='"+PZHR+"',PZH='"+PZH+"',XGR='"+XGR+"',GYSH='"+GYSH+"',XGRQ='"+XGRQ+"',SHPSHJ='"+SHPSHJ+"',FKLX='"+FKLX+"',FKJE='"+FKJE+"',HB='"+HB+"',FKFSH='"+FKFSH+"',HL='"+HL+"',FKLY='"+FKLY+"',PH='"+PH+"',YUFJE='"+YUFJE+"',YFJE='"+YFJE+"',QKJE='"+QKJE+"',DJLX='"+DJLX+"',YFDH='"+YFDH+"',SHQDH='"+SHQDH+"',CGDH='"+CGDH+"',YIFJE='"+YIFJE+"',BCFKJE='"+BCFKJE+"',BZH='"+BZH+"' where FKDH='"+FKDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"fukuancx.jsp\";</script>");
%>
