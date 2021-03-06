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
    <title>报价>>增加</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>报价单增加</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="baojiaadddo.jsp">
		<table>
			<tr>
				<td width="120px"><label>报价单号</label></td>
				<td><input type="text" name="BJDH" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>报价日期</label></td>
				<td><input type="text" name="BJRQ" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>制表人</label></td>
				<td>
				<select name="ZHBR" style="width:95%">
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
				<select name="PZHR" style="width:95%">
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
				<td><input type="text" name="PZH" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%">
				<%
				String sql2="select GYSHDH,GYSH from GYSHSHZH order by GYSHDH asc";
				ResultSet rs2=stmt.executeQuery(sql2);
				while(rs2.next()){
				%>
				<option value="<%=rs2.getString("GYSH")%>"><%=rs2.getString("GYSHDH")%>+<%=rs2.getString("GYSH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>采购员</label></td>
				<td>
				<select name="CGY" style="width:95%">
				<%
				String sql3="select YHBH,XM from RYMD order by XM asc";
				ResultSet rs3=stmt.executeQuery(sql3);
				while(rs3.next()){
				%>
				<option value="<%=rs3.getString("XM")%>"><%=rs3.getString("YHBH")%>+<%=rs3.getString("XM")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>截止日期</label></td>
				<td><input type="text" name="JZHRQ" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>材料代号</label></td>
				<td><input type="text" name="CLDH" style="width:95%"></td>
			</tr>
            <tr>
				<td width="120px"><label>最小量</label></td>
				<td><input type="text" name="ZXL" style="width:95%"></td>
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
				<td width="120px"><label>单位</label></td>
				<td><input type="text" name="DW" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>税率</label></td>
				<td><input type="text" name="SHL" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>含税单价</label></td>
				<td><input type="text" name="HSHDJ" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>折扣率</label></td>
				<td><input type="text" name="ZHKL" style="width:95%"></td>
			</tr>			
			<tr>
				<td width="120px"><label>品牌</label></td>
				<td><input type="text" name="PP" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料类型</label></td>
				<td><input type="text" name="CLLX" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>供方型号</label></td>
				<td><input type="text" name="GFXH" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商材料名称</label></td>
				<td><input type="text" name="GYSHCLMCH" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>最大量</label></td>
				<td><input type="text" name="ZDL" style="width:95%"></td>
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
