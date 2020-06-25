<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<html>
<head>
   <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/info-mgt.css" />
	<style>
        .layui-layer-title{background:url(../images/righttitlebig.png) repeat-x;font-weight:bold;color:#46647e; border:1px solid #c1d3de;height: 33px;line-height: 33px;}
        .tabe_bot label{width: 70px;text-align: right;font-size: 14px;font-weight: 900;color: #46647e}
        .l_right{float: right}
        .tabe_bot input,.tabe_bot  select{height: 30px;border-radius: 3px;margin:0 20px 0 0;border: none;border: 1px #ccc solid}
        .tabe_btn{width: 60px;height: 30px;background-color: #68b86c;border: none;border-radius: 12px;color: #fff;}
		table{border:0px solid #d9e9f9;width:100%;vertical-align:middle;text-align:center;}
		table tr{border:1px solid #d9e9f9;height:35px;vertical-align:middle;text-align:center;}
		table td{border:1px solid #d9e9f9;vertical-align:middle;text-align:center;}
	</style>
    <title>请购>>增加</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>请购单增加</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="qinggouadddo.jsp">
		<table>
			<tr>
				<td width="120px"><label>请购单号</label></td>
				<td><input type="text" name="QGDH" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>请购部门</label></td>
				<td>
				<select name="QGBM" style="width:95%">
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
				<td><input type="text" name="QGRQ" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>请购人</label></td>
				<td>
				<select name="QGR" style="width:95%">
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
				<td><input type="text" name="CLDH" style="width:95%"></td>
			</tr>	
			<tr>
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="MCH" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>规格</label></td>
				<td><input type="text" name="GG" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>颜色</label></td>
				<td><input type="text" name="YS" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>单价</label></td>
				<td><input type="text" name="DJ" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>数量</label></td>
				<td><input type="text" name="SHL" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>需要日期</label></td>
				<td><input type="text" name="XYRQ" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>预交日</label></td>
				<td><input type="text" name="YJR" style="width:95%"></td>
			</tr>						
			<tr>
				<td width="120px"><label>备注</label></td>
				<td><input type="text" name="BZH" style="width:95%"></td>
			</tr>
		</table>
		 <div style="margin-top:10px;text-align:center;">
		 <input type="button"  class="tabe_btn" value="增加" onclick="javascript:formcx.submit();">
		 <input type="button"  class="tabe_btn" value="重置" onclick="javascript:formcx.reset();">
         <input type="button"  class="tabe_btn" value="返回" onclick="javascript:history.go(-1);">
		 <form>
		 </div>
		<div class="clear"></div>
    </div>
</div>
<div class="pagination ue-clear"></div>
</body>
</html>
