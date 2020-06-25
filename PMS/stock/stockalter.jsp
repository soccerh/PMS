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
    <title>仓库设置>>编辑</title>
</head>
<%
String sn="";//仓库编号
String name="";//仓库名称
String timeok="";//建立时间
String cman="";//负责人
String quality="";//仓库容量
sn=getStr(request.getParameter("sn"));
name=getStr(request.getParameter("name"));
timeok=getStr(request.getParameter("timeok"));
cman=getStr(request.getParameter("cman"));
quality=getStr(request.getParameter("quality"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>仓库编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="stockalterdo.jsp">
		<table>
			<tr>
				<td width="120px"><label>仓库编号</label></td>
				<td><input type="text" name="sn" value="<%=sn%>" style="width:95%;background:#dfdfdf" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>仓库名称</label></td>
				<td><input type="text" name="name" value="<%=name%>" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>建立时间</label></td>
				<td><input type="text" name="timeok" value="<%=timeok%>" style="width:95%"></td>
			</tr>
            <tr>
				<td width="120px"><label>负责人</label></td>
				<td>
				<select name="cman" style="width:95%">
				<option value="<%=cman%>" ><%=cman%></option>
				<option value="<%=cman%>" selected><%=cman%></option>
				<%
				String sql="select clubuser_id,clubuser_name from clubuser order by clubuser_name asc";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
				%>
				<option value="<%=rs.getString("clubuser_name")%>"><%=rs.getString("clubuser_id")%>+<%=rs.getString("clubuser_name")%></option>
				<%}%>
				</select></td>
			</tr>
			 <tr>
				<td width="120px"><label>仓库容量</label></td>
				<td><input type="text" name="quality" value="<%=quality%>" style="width:95%"></td>
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
