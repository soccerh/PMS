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
    <title>报价>>编辑</title>
</head>
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
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>报价编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="baojiaalterdo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>报价单号</label></td>
				<td><input type="text" name="BJDH" style="width:95%" value="<%=BJDH%>" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>报价日期</label></td>
				<td><input type="text" name="BJRQ" style="width:95%" value="<%=BJRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>制表人</label></td>
				<td>
				<select name="ZHBR" style="width:95%" value="<%=ZHBR%>">
				<option value="<%=ZHBR%>" ><%=ZHBR%></option>
				<%
				String sql="select YHBH,XM from RYMD order by XM asc";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
				%>
				<option value="<%=rs.getString("XM")%>"><%=rs.getString("YHBH")%>+<%=rs.getString("XM")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>批准人</label></td>
				<td>
				<select name="PZHR" style="width:95%" value="<%=PZHR%>">
				<option value="<%=PZHR%>" ><%=PZHR%></option>
				<%
				String sql1="select YHBH,XM from RYMD order by XM asc";
				ResultSet rs1=stmt.executeQuery(sql1);
				while(rs1.next()){
				%>
				<option value="<%=rs1.getString("XM")%>"><%=rs1.getString("YHBH")%>+<%=rs1.getString("XM")%></option>
				<%}%>
				</select>
				</td>
			</tr>	
			<tr>
				<td width="120px"><label>批准</label></td>
				<td><input type="text" name="PZH" style="width:95%" value="<%=PZH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购员</label></td>
				<td>
				<select name="CGY" style="width:95%" value="<%=CGY%>">
				<option value="<%=CGY%>" ><%=CGY%></option>
				<%
				String sql2="select YHBH,XM from RYMD order by XM asc";
				ResultSet rs2=stmt.executeQuery(sql2);
				while(rs2.next()){
				%>
				<option value="<%=rs2.getString("XM")%>"><%=rs2.getString("YHBH")%>+<%=rs2.getString("XM")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>截止日期</label></td>
				<td><input type="text" name="JZHRQ" style="width:95%" value="<%=JZHRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" value="<%=HB%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%" value="<%=GYSH%>">
				<option value="<%=GYSH%>" ><%=GYSH%></option>
				<%
				String sql3="select GYSHDH,GYSH from GYSHSHZH order by GYSHDH asc";
				ResultSet rs3=stmt.executeQuery(sql3);
				while(rs3.next()){
				%>
				<option value="<%=rs3.getString("GYSH")%>"><%=rs3.getString("GYSHDH")%>+<%=rs3.getString("GYSH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>材料代号</label></td>
				<td><input type="text" name="CLDH" style="width:95%" value="<%=CLDH%>"></td>
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
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="MCH" style="width:95%" value="<%=MCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>规格</label></td>
				<td><input type="text" name="GG" style="width:95%" value="<%=GG%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>颜色</label></td>
				<td><input type="text" name="YS" style="width:95%" value="<%=YS%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单价</label></td>
				<td><input type="text" name="DJ" style="width:95%" value="<%=DJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单位</label></td>
				<td><input type="text" name="DW" style="width:95%" value="<%=DW%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>税率</label></td>
				<td><input type="text" name="SHL" style="width:95%" value="<%=SHL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>含税单价</label></td>
				<td><input type="text" name="HSHDJ" style="width:95%" value="<%=HSHDJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>折扣率</label></td>
				<td><input type="text" name="ZHKL" style="width:95%" value="<%=ZHKL%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>品牌</label></td>
				<td><input type="text" name="PP" style="width:95%" value="<%=PP%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料类型</label></td>
				<td><input type="text" name="CLLX" style="width:95%" value="<%=CLLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供方型号</label></td>
				<td><input type="text" name="GFXH" style="width:95%" value="<%=GFXH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商材料名称</label></td>
				<td><input type="text" name="GYSHCLMCH" style="width:95%" value="<%=GYSHCLMCH%>"></td>
			</tr>					
			<tr>
				<td width="120px"><label>备注</label></td>
				<td><input type="text" name="BZH" style="width:95%" value="<%=BZH%>"></td>
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
