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
        .tabe_bot input,.tabe_bot  select{width: 180px;height: 30px;border-radius: 3px;margin:0 20px 0 0;border: none;border: 1px #ccc solid}
        .tabe_btn{width: 60px;height: 30px;background-color: #68b86c;border: none;border-radius: 6px;color: #fff;}
		table{border:0px solid #d9e9f9;width:100%;vertical-align:middle;text-align:center;}
		table tr{border:1px solid #d9e9f9;height:35px;vertical-align:middle;text-align:center;}
		table td{border:1px solid #d9e9f9;vertical-align:middle;text-align:center;}
	</style>
    <title>供应商价格>>编辑</title>
</head>
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
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>供应商价格编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="jiagealterdo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>供应商代号</label></td>
				<td><input type="text" name="GYSHDH" style="width:95%" value="<%=GYSHDH%>" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商全称</label></td>
				<td><input type="text" name="GYSHMCH" style="width:95%" value="<%=GYSHMCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单位</label></td>
				<td><input type="text" name="DW" style="width:95%" value="<%=DW%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料</label></td>
				<td><input type="text" name="CL" style="width:95%" value="<%=CL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="MCH" style="width:95%" value="<%=MCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>颜色</label></td>
				<td><input type="text" name="YS" style="width:95%" value="<%=GYSHMCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单价</label></td>
				<td><input type="text" name="DJ" style="width:95%" value="<%=DJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>不含税单价</label></td>
				<td><input type="text" name="BHSHDJ" style="width:95%" value="<%=BHSHDJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>规格</label></td>
				<td><input type="text" name="GG" style="width:95%" value="<%=GG%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>税目</label></td>
				<td><input type="text" name="SHM" style="width:95%" value="<%=SHM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>最小量</label></td>
				<td><input type="text" name="ZXL" style="width:95%" value="<%=ZXL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>最大量</label></td>
				<td><input type="text" name="ZDL" style="width:95%" value="<%=ZDL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>价格条件</label></td>
				<td><input type="text" name="JGTJ" style="width:95%" value="<%=JGTJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供方类型</label></td>
				<td><input type="text" name="GFLX" style="width:95%" value="<%=GFLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" value="<%=HB%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>核价日期</label></td>
				<td><input type="text" name="HJRQ" style="width:95%" value="<%=HJRQ%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>状态</label></td>
				<td><input type="text" name="ZHT" style="width:95%" value="<%=ZHT%>"></td>
			</tr>           	
			<tr>
				<td width="120px"><label>生效日期</label></td>
				<td><input type="text" name="SHXRQ" style="width:95%" value="<%=SHXRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单位重量</label></td>
				<td><input type="text" name="DWZHL" style="width:95%" value="<%=DWZHL%>"></td>
			</tr>			
			
		</table>
		 <div style="margin-top:10px;text-align:center;">
		  <input type="button"  class="tabe_btn" value="保存" onclick="javascript:formcx.submit();">
		<input type="button"  class="tabe_btn" value="返回" onclick="javascript:history.go(-1);">
		 </div>
		 <form>
        <div class="clear"></div>
    </div>
</div>
<div class="table-operate ue-clear">
