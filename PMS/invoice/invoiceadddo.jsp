<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String PJDH="";//票据单号
String KPRQ="";//开票日期
String KPR="";//开票人
String PZHR="";//批准人
String PJLX="";//票据类型
String BM="";//部门
String GYSH="";//供应商
String FPHM="";//发票号码
String CGDH="";//采购单号
String CLDH="";//材料代号
String MCH="";//材料名称
String HB="";//货币
String GG="";//规格
String YS="";//颜色
String DW="";//单位
String FPSHL="";//发票数量
String DJ="";//单价
String HSHDJ="";//含税单价
String HKJE="";//货款金额
String JSHHJ="";//价税合计
String YH="";//银行
String YHZHH="";//银行账号
String BHSHJE="";//不含税金额
String SHL="";//税率
String SHJ="";//税金
String SHM="";//税目
String BZH="";//备注
PJDH=getStr(request.getParameter("PJDH"));
KPRQ=getStr(request.getParameter("KPRQ"));
KPR=getStr(request.getParameter("KPR"));
PZHR=getStr(request.getParameter("PZHR"));
PJLX=getStr(request.getParameter("PJLX"));
BM=getStr(request.getParameter("BM"));
GYSH=getStr(request.getParameter("GYSH"));
FPHM=getStr(request.getParameter("FPHM"));
CGDH=getStr(request.getParameter("CGDH"));
CLDH=getStr(request.getParameter("CLDH"));
MCH=getStr(request.getParameter("MCH"));
HB=getStr(request.getParameter("HB"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DW=getStr(request.getParameter("DW"));
FPSHL=getStr(request.getParameter("FPSHL"));
DJ=getStr(request.getParameter("DJ"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
HKJE=getStr(request.getParameter("HKJE"));
JSHHJ=getStr(request.getParameter("JSHHJ"));
YH=getStr(request.getParameter("YH"));
YHZHH=getStr(request.getParameter("YHZHH"));
BHSHJE=getStr(request.getParameter("BHSHJE"));
SHL=getStr(request.getParameter("SHL"));
SHJ=getStr(request.getParameter("SHJ"));
SHM=getStr(request.getParameter("SHM"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="insert into FPD(PJDH,KPRQ,KPR,PZHR,PJLX,BM,GYSH,FPHM,CGDH,CLDH,MCH,HB,GG,YS,DW,FPSHL,DJ,HSHDJ,HKJE,JSHHJ,YH,YHZHH,BHSHJE,SHL,SHJ,SHM,BZH)values('"+PJDH+"','"+KPRQ+"','"+KPR+"','"+PZHR+"','"+PJLX+"','"+BM+"','"+GYSH+"','"+FPHM+"','"+CGDH+"','"+CLDH+"','"+MCH+"','"+HB+"','"+GG+"','"+YS+"','"+DW+"','"+FPSHL+"','"+DJ+"','"+HSHDJ+"','"+HKJE+"','"+JSHHJ+"','"+YH+"','"+YHZHH+"','"+BHSHJE+"','"+SHL+"','"+SHJ+"','"+SHM+"','"+BZH+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"invoicecx.jsp\";</script>");
%>
