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
    <title>首页>>登录</title>
</head>
<body>
<%String m="";%>
<%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){%>
<div class="title"><h2>用户登录</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="logindo.jsp">
		<table>
			<tr>
				<td width="120px"><label>用户角色</label></td>
				<td><select name="level" style="width:95%">
                <option value="2">一般用户</option>
                <option value="2">中层管理</option>
				<option value="1">高层管理</option>
				<option value="1">企业CEO层</option>
				<option value="1">系统管理员</option>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>用户名</label></td>
				<td><input type="text" name="YHM" style="width:95%" ></td>
			</tr>
			
			<tr>
				<td width="120px"><label>登录密码</label></td>
				<td><input type="password" name="passwd" style="width:95%" ></td>
			</tr>
         </table>
		 <div style="margin-top:10px;text-align:center;">
		 <input type="button"  class="tabe_btn" value="登录" onclick="javascript:formcx.submit();">
		 
		 <input type="button" class="tabe_btn" onclick="window.location.href('register.jsp')" value="注册"> 
         <input type="button"  class="tabe_btn" value="返回" onclick="javascript:history.go(-1);">
		 <form>
		 </div>
		<div class="clear"></div>
    </div>
</div><%}%>
<% if(session.getAttribute("m")!=null){out.println("<a align=center>欢迎您!</a>");out.println("<input type="button" class="tabe_btn" onclick="window.location.href('register.jsp')" value="注册">");}%>
<div>
<div class="pagination ue-clear"></div>
</body>
</html>
