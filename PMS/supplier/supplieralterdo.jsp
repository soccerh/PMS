<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String GYSHDH="";//供应商代号
String GYSHJCH="";//供应商简称
String GYSHLX="";//供应商类型
String LXR="";//联系人
String SHJ="";//手机
String SSHQY="";//所属区域
String GYSH="";//供应商全称
String LXDH="";//联系电话
String CHZHHH="";//传真号码
String DZYJ="";//电子邮件
String WZH="";//网址
String XXDZH="";//详细地址
String WLDW="";//往来单位
String country="";//国家
String province="";//省份
String city="";//城市
String YZHBM="";//邮政编码
String FZR="";//负责人
String FR="";//法人
String KYRQ="";//开业日期
String YEZZHHM="";//营业执照号码
String SWDJZH="";//税务登记证
String YH="";//银行
String YHZHH="";//银行账号
String CHCJYRQ="";//初次交易日期
String ZJJYRQ="";//最近交易日期
GYSHDH=getStr(request.getParameter("GYSHDH"));
GYSHJCH=getStr(request.getParameter("GYSHJCH"));
GYSHLX=getStr(request.getParameter("GYSHLX"));
LXR=getStr(request.getParameter("LXR"));
SHJ=getStr(request.getParameter("SHJ"));
SSHQY=getStr(request.getParameter("SSHQY"));
GYSH=getStr(request.getParameter("GYSH"));
LXDH=getStr(request.getParameter("LXDH"));
CHZHHH=getStr(request.getParameter("CHZHHH"));
DZYJ=getStr(request.getParameter("DZYJ"));
WZH=getStr(request.getParameter("WZH"));
XXDZH=getStr(request.getParameter("XXDZH"));
WLDW=getStr(request.getParameter("WLDW"));
country=getStr(request.getParameter("country"));
province=getStr(request.getParameter("province"));
city=getStr(request.getParameter("city"));
YZHBM=getStr(request.getParameter("YZHBM"));
FZR=getStr(request.getParameter("FZR"));
FR=getStr(request.getParameter("FR"));
KYRQ=getStr(request.getParameter("KYRQ"));
SWDJZH=getStr(request.getParameter("SWDJZH"));
YH=getStr(request.getParameter("YH"));
YEZZHHM=getStr(request.getParameter("YEZZHHM"));
YHZHH=getStr(request.getParameter("YHZHH"));
CHCJYRQ=getStr(request.getParameter("CHCJYRQ"));
ZJJYRQ=getStr(request.getParameter("ZJJYRQ"));
String sql="";
sql="update GYSHSHZH set GYSHJCH='"+GYSHJCH+"',GYSHLX='"+GYSHLX+"',LXR='"+LXR+"',SHJ='"+SHJ+"',SSHQY='"+SSHQY+"',GYSH='"+GYSH+"',LXDH='"+LXDH+"',CHZHHH='"+CHZHHH+"',DZYJ='"+DZYJ+"',WZH='"+WZH+"',XXDZH='"+XXDZH+"',WLDW='"+WLDW+"',country='"+country+"',province='"+province+"',city='"+city+"',YZHBM='"+YZHBM+"',FZR='"+FZR+"',FR='"+FR+"',KYRQ='"+KYRQ+"',SWDJZH='"+SWDJZH+"',YH='"+YH+"',YEZZHHM='"+YEZZHHM+"',YHZHH='"+YHZHH+"',CHCJYRQ='"+CHCJYRQ+"',ZJJYRQ='"+ZJJYRQ+"' where GYSHDH='"+GYSHDH+"'";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"suppliercx.jsp\";</script>");
%>
