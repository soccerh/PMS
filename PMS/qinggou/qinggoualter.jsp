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
    <title>请购>>编辑</title>
</head>
<%
String QGDH="";//请购单号
String QGBM="";//请购部门
String QGRQ="";//请购日期
String QGR="";//请购人
String CLDH="";//材料代号
String MCH="";//名称
String GG="";//规格
String YS="";//颜色
String DJ="";//单价
String SHL="";//数量
String XYRQ="";//需要日期
String YJR="";//预交日
String BZH="";//备注
QGDH=getStr(request.getParameter("QGDH"));
QGBM=getStr(request.getParameter("QGBM"));
QGRQ=getStr(request.getParameter("QGRQ"));
QGR=getStr(request.getParameter("QGR"));
CLDH=getStr(request.getParameter("CLDH"));
MCH=getStr(request.getParameter("MCH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DJ=getStr(request.getParameter("DJ"));
SHL=getStr(request.getParameter("SHL"));
XYRQ=getStr(request.getParameter("XYRQ"));
YJR=getStr(request.getParameter("YJR"));
BZH=getStr(request.getParameter("BZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>请购编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="qinggoualterdo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>请购单号</label></td>
				<td><input type="text" name="QGDH" style="width:95%" value="<%=QGDH%>" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>请购部门</label></td>
				<td>
				<select name="QGBM" style="width:95%" value="<%=QGBM%>">
				<option value="<%=QGBM%>" ><%=QGBM%></option>
				<%
				String sql="select BMBH,BMMCH from BMXXB order by BMBH asc";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
				%>
				<option value="<%=rs.getString("BMMCH")%>"><%=rs.getString("BMBH")%>+<%=rs.getString("BMMCH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>请购日期</label></td>
				<td><input type="text" name="QGRQ" style="width:95%" value="<%=QGRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>请购人</label></td>
				<td>
				<select name="QGR" style="width:95%" value="<%=QGR%>">
				<option value="<%=QGR%>" ><%=QGR%></option>
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
				<td width="120px"><label>材料代号</label></td>
				<td><input type="text" name="CLDH" style="width:95%" value="<%=CLDH%>"></td>
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
				<td width="120px"><label>数量</label></td>
				<td><input type="text" name="SHL" style="width:95%" value="<%=SHL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>需要日期</label></td>
				<td><input type="text" name="XYRQ" style="width:95%" value="<%=XYRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>预交日</label></td>
				<td><input type="text" name="YJR" style="width:95%" value="<%=YJR%>"></td>
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
