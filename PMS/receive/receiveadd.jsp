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
        <form name="formcx" mehtod="POST" ACTION="receiveadddo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>收货单号</label></td>
				<td><input type="text" name="SHHDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>收货日期</label></td>
				<td><input type="text" name="SHHRQ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%" >
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
				<td width="120px"><label>采购部门</label></td>
				<td>
				<select name="CGBM" style="width:95%" >
				<%
				String sql1="select BMBH,BMMCH from BMXXB order by BMBH asc";
				ResultSet rs1=stmt.executeQuery(sql1);
				while(rs1.next()){
				%>
				<option value="<%=rs1.getString("BMMCH")%>"><%=rs1.getString("BMBH")%>+<%=rs1.getString("BMMCH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>采购员</label></td>
				<td>
				<select name="CGY" style="width:95%" >
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
				<td width="120px"><label>收货类型</label></td>
				<td><input type="text" name="SHHLX" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>序号</label></td>
				<td><input type="text" name="XH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>采购单号</label></td>
				<td><input type="text" name="CGDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>采购材料</label></td>
				<td><input type="text" name="CGCL" style="width:95%" ></td>
			</tr>
			
			<tr>
				<td width="120px"><label>含税单价</label></td>
				<td><input type="text" name="HSHDJ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>收货金额</label></td>
				<td><input type="text" name="SHHJE" style="width:95%" ></td>
			</tr>			
			<tr>
				<td width="120px"><label>已开应收金额</label></td>
				<td><input type="text" name="YKYSHJE" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>开票数量</label></td>
				<td><input type="text" name="KPSHL" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>已退数量</label></td>
				<td><input type="text" name="YTSHL" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>质检结果</label></td>
				<td><input type="text" name="ZHJJG" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>质检单号</label></td>
				<td><input type="text" name="ZHJDH" style="width:95%" ></td>
			</tr>           	
			<tr>
				<td width="120px"><label>采购材料</label></td>
				<td><input type="text" name="CGCL" style="width:95%" ></td>
			</tr>
			
			<tr>
				<td width="120px"><label>质检单序号</label></td>
				<td><input type="text" name="ZHJDXH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>收货通知单</label></td>
				<td><input type="text" name="SHHTZHD" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>收货通知单序号</label></td>
				<td><input type="text" name="SHHTZHDXH" style="width:95%" ></td>
			</tr>			
			<tr>
				<td width="120px"><label>虚拟件</label></td>
				<td><input type="text" name="XNJ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>产品工程</label></td>
				<td><input type="text" name="CHPGCH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>父行</label></td>
				<td><input type="text" name="FH" style="width:95%" ></td>
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
