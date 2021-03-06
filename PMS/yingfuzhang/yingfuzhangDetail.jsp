<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<html>
<head>
   <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/info-mgt.css" />
	<style>
        .layui-layer-title{background:url(../images/righttitlebig.png) repeat-x;font-weight:bold;color:#46647e; border:1px solid #c1d3de;height: 33px;line-height: 33px;}
        .tabe_bot label{width: 70px;text-align: right;font-size: 14px;font-weight: 900;color: #46647e}
        .l_right{float: right}
        .tabe_bot input,.tabe_bot  select{height: 30px;border-radius: 3px;margin:0 20px 0 0;border: none;border: 1px #ccc solid}
        .tabe_btn{width: 60px;height: 30px;background-color: #68b86c;border: none;border-radius: 6px;color: #fff;}
		table{border:0px solid #d9e9f9;width:100%;vertical-align:middle;text-align:center;}
		table tr{border:1px solid #d9e9f9;height:35px;vertical-align:middle;text-align:center;}
		table td{border:1px solid #d9e9f9;vertical-align:middle;text-align:center;}
	</style>
    <title>应付账>>详情</title>
</head>
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
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>查询详细信息</h2></div>
<div class="query">
    <div class="tabe_bot">
        <table>			
			<tr>
				<td width="120px"><label>应付单号</label></td>
				<td><input type="text" name="YFDH" style="width:95%" value="<%=YFDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>应付日期</label></td>
				<td><input type="text" name="YFRQ" style="width:95%" value="<%=YFRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td><input type="text" name="GYSH" style="width:95%" value="<%=GYSH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>制表人</label></td>
				<td><input type="text" name="ZHBR" style="width:95%" value="<%=ZHBR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>批准人</label></td>
				<td><input type="text" name="PZHR" style="width:95%" value="<%=PZHR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>修改人</label></td>
				<td><input type="text" name="XGR" style="width:95%" value="<%=XGR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>修改时间</label></td>
				<td><input type="text" name="XGSHJ" style="width:95%" value="<%=XGSHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>审批时间</label></td>
				<td><input type="text" name="SHPSHJ" style="width:95%" value="<%=SHPSHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>批准</label></td>
				<td><input type="text" name="PZH" style="width:95%" value="<%=PZH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>发票号码</label></td>
				<td><input type="text" name="FPHM" style="width:95%" value="<%=FPHM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>发票日期</label></td>
				<td><input type="text" name="FPRQ" style="width:95%" value="<%=FPRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" value="<%=HB%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>发票金额</label></td>
				<td><input type="text" name="FPJE" style="width:95%" value="<%=FPJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>汇率</label></td>
				<td><input type="text" name="HL" style="width:95%" value="<%=HL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>税目</label></td>
				<td><input type="text" name="SHM" style="width:95%" value="<%=SHM%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>单据类型</label></td>
				<td><input type="text" name="DJLX" style="width:95%" value="<%=DJLX%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>材料代号</label></td>
				<td><input type="text" name="CLDH" style="width:95%" value="<%=CLDH%>"></td>
			</tr>           	
			<tr>
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="CLMCH" style="width:95%" value="<%=CLMCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>规格</label></td>
				<td><input type="text" name="GG" style="width:95%" value="<%=GG%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>数量</label></td>
				<td><input type="text" name="SHUL" style="width:95%" value="<%=SHUL%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>颜色</label></td>
				<td><input type="text" name="YS" style="width:95%" value="<%=YS%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单位</label></td>
				<td><input type="text" name="DW" style="width:95%" value="<%=DW%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单价</label></td>
				<td><input type="text" name="DJ" style="width:95%" value="<%=DJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>税率</label></td>
				<td><input type="text" name="SHL" style="width:95%" value="<%=SHL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>不含税金额</label></td>
				<td><input type="text" name="BHSHJE" style="width:95%" value="<%=BHSHJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>价税合计</label></td>
				<td><input type="text" name="JSHHJ" style="width:95%" value="<%=JSHHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>折扣金额</label></td>
				<td><input type="text" name="ZHKJE" style="width:95%" value="<%=ZHKJE%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>费用项目</label></td>
				<td><input type="text" name="FYXM" style="width:95%" value="<%=FYXM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>预计付款日</label></td>
				<td><input type="text" name="YJFKR" style="width:95%" value="<%=YJFKR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>收货日期</label></td>
				<td><input type="text" name="SHHRQ" style="width:95%" value="<%=SHHRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>应付金额</label></td>
				<td><input type="text" name="YFJE" style="width:95%" value="<%=YFJE%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>备注</label></td>
				<td><input type="text" name="BZH" style="width:95%" value="<%=BZH%>"></td>
			</tr>
		</table>
		 <div style="margin-top:10px;text-align:center;">
		 <input type="button"  class="tabe_btn" value="返回" onclick="javascript:history.go(-1);">
		</div>
		<div class="clear"></div>
    </div>
</div>
<div class="pagination ue-clear"></div>
</body>
</html>

