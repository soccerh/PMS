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
    <title>用户注册</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>用户注册</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="registerdo.jsp">
		<table>
			
			<tr>
				<td width="120px"><label>姓名</label></td>
				<td><input type="text" name="XM" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>性别</label></td>
				<td><input type="text" name="XB" style="width:95%"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>部门</label></td>
				<td>
				
				<select name="BM" style="width:95%">
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
				<td width="120px"><label>职务</label></td>
				<td><input type="text" name="ZHW" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>用户角色</label></td>
				<td><select name="level" style="width:95%">
                <option value="0">一般用户</option>
                <option value="0">中层管理</option>
				<option value="0">高层管理</option>
				<option value="0">企业CEO层</option>
				<option value="0">系统管理员</option>
				</select>
				</td>
			</tr>			
			 <tr>
				<td width="120px"><label>电话</label></td>
				<td><input type="text" name="DH" style="width:95%"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>用户名</label></td>
				<td><input type="text" name="YHM" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>密码</label></td>
				<td><input type="password" name="passwd1" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>确认密码</label></td>
				<td><input type="password" name="passwd2" style="width:95%"></td>
			</tr>
			<tr>
				<td width="120px"><label>邮箱</label></td>
				<td><input type="text" name="email" style="width:95%"></td>
			</tr>			
			<tr>
				<td width="120px"><label>住址</label></td>
				<td><input type="text" name="ZHZH" style="width:95%"></td>
			</tr>
		</table>
		 <div style="margin-top:10px;text-align:center;">
		 <input type="button"  class="tabe_btn" value="注册" onclick="javascript:formcx.submit();">
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
