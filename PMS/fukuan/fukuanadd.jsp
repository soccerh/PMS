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
    <title>付款>>增加</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>付款单增加</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="fukuanadddo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>付款单号</label></td>
				<td><input type="text" name="FKDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>付款日期</label></td>
				<td><input type="text" name="FKRQ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%">
				<%
				String sql="select GYSHDH,GYSH from GYSHSHZH order by GYSHDH asc";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
				%>
				<option value="<%=rs.getString("GYSH")%>"><%=rs.getString("GYSHDH")%>+<%=rs.getString("GYSH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>制表人</label></td>
				<td>
				<select name="ZHBR" style="width:95%" >
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
				<td width="120px"><label>批准人</label></td>
				<td>
				<select name="PZHR" style="width:95%" >
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
				<td width="120px"><label>修改人</label></td>
				<td>
				<select name="XGR" style="width:95%" >
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
				<td width="120px"><label>修改日期</label></td>
				<td><input type="text" name="XGRQ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>审批时间</label></td>
				<td><input type="text" name="SHPSHJ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>批准</label></td>
				<td><input type="text" name="PZH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>付款类型</label></td>
				<td><input type="text" name="FKLX" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>付款金额</label></td>
				<td><input type="text" name="FKJE" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>付款方式</label></td>
				<td><input type="text" name="FKFSH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>汇率</label></td>
				<td><input type="text" name="HL" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>付款来源</label></td>
				<td><input type="text" name="FKLY" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>票号</label></td>
				<td><input type="text" name="PH" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>预付金额</label></td>
				<td><input type="text" name="YUFJE" style="width:95%" ></td>
			</tr>           	
			<tr>
				<td width="120px"><label>应付金额</label></td>
				<td><input type="text" name="YFJE" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>欠款金额</label></td>
				<td><input type="text" name="QKJE" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>单据类型</label></td>
				<td><input type="text" name="DJLX" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>应付单号</label></td>
				<td><input type="text" name="YFDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>申请单号</label></td>
				<td><input type="text" name="SHQDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>采购单号</label></td>
				<td><input type="text" name="CGDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>已付金额</label></td>
				<td><input type="text" name="YIFJE" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>本次付款金额</label></td>
				<td><input type="text" name="BCFKJE" style="width:95%" ></td>
			</tr>			
			<tr>
				<td width="120px"><label>备注</label></td>
				<td><input type="text" name="BZH" style="width:95%" ></td>
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
