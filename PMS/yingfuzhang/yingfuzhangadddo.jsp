<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String YFDH="";//应付单号
String YFRQ="";//应付日期
String ZHBR="";//制表人
String PZHR="";//批准人
String PZH="";//批准
String XGR="";//修改人
String GYSH="";//供应商
String XGSHJ="";//修改日期
String SHPSHJ="";//审批时间
String FPHM="";//发票号码
String FPRQ="";//发票日期
String HB="";//货币
String FPJE="";//发票金额
String HL="";//汇率
String SHM="";//税目
String DJLX="";//单据类型
String CLDH="";//材料代号
String CLMCH="";//名称
String GG="";//规格
String YS="";//颜色
String SHUL="";//数量
String DW="";//单位
String DJ="";//单价
String SHL="";//税率
String BHSHJE="";//不含税金额
String JSHHJ="";//价税合计
String ZHKJE="";//折扣金额
String FYXM="";//费用项目
String YJFKR="";//预计付款日
String SHHRQ="";//收货日期
String YFJE="";//应付金额
String BZH="";//备注
YFDH=getStr(request.getParameter("YFDH"));
YFRQ=getStr(request.getParameter("YFRQ"));
ZHBR=getStr(request.getParameter("ZHBR"));
PZHR=getStr(request.getParameter("PZHR"));
PZH=getStr(request.getParameter("PZH"));
XGR=getStr(request.getParameter("XGR"));
GYSH=getStr(request.getParameter("GYSH"));
XGSHJ=getStr(request.getParameter("XGSHJ"));
SHPSHJ=getStr(request.getParameter("SHPSHJ"));
FPHM=getStr(request.getParameter("FPHM"));
FPRQ=getStr(request.getParameter("FPRQ"));
HB=getStr(request.getParameter("HB"));
FPJE=getStr(request.getParameter("FPJE"));
HL=getStr(request.getParameter("HL"));
SHM=getStr(request.getParameter("SHM"));
DJLX=getStr(request.getParameter("DJLX"));
CLDH=getStr(request.getParameter("CLDH"));
CLMCH=getStr(request.getParameter("CLMCH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
SHUL=getStr(request.getParameter("SHUL"));
DW=getStr(request.getParameter("DW"));
DJ=getStr(request.getParameter("DJ"));
SHL=getStr(request.getParameter("SHL"));
BHSHJE=getStr(request.getParameter("BHSHJE"));
JSHHJ=getStr(request.getParameter("JSHHJ"));
ZHKJE=getStr(request.getParameter("ZHKJE"));
FYXM=getStr(request.getParameter("FYXM"));
YJFKR=getStr(request.getParameter("YJFKR"));
SHHRQ=getStr(request.getParameter("SHHRQ"));
YFJE=getStr(request.getParameter("YFJE"));
BZH=getStr(request.getParameter("BZH"));
String sql="";
sql="insert into YFZHD(YFDH,YFRQ,ZHBR,PZHR,PZH,XGR,GYSH,XGSHJ,SHPSHJ,FPHM,FPRQ,HB,FPJE,HL,SHM,DJLX,CLDH,CLMCH,GG,YS,SHUL,DW,DJ,SHL,BHSHJE,JSHHJ,ZHKJE,FYXM,YJFKR,SHHRQ,YFJE,BZH)values('"+YFDH+"','"+YFRQ+"','"+ZHBR+"','"+PZHR+"','"+PZH+"','"+XGR+"','"+GYSH+"','"+XGSHJ+"','"+SHPSHJ+"','"+FPHM+"','"+FPRQ+"','"+HB+"','"+FPJE+"','"+HL+"','"+SHM+"','"+DJLX+"','"+CLDH+"','"+CLMCH+"','"+GG+"','"+YS+"','"+SHUL+"','"+DW+"','"+DJ+"','"+SHL+"','"+BHSHJE+"','"+JSHHJ+"','"+ZHKJE+"','"+FYXM+"','"+YJFKR+"','"+SHHRQ+"','"+YFJE+"','"+BZH+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"yingfuzhangcx.jsp\";</script>");
%>
