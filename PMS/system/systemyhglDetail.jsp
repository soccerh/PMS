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
        .tabe_bot input,.tabe_bot  select{height: 30px;border-radius: 3px;margin:0 20px 0 0;border: none;border: 1px #ccc solid}
        .tabe_btn{width: 60px;height: 30px;background-color: #68b86c;border: none;border-radius: 6px;color: #fff;}
		table{border:0px solid #d9e9f9;width:100%;vertical-align:middle;text-align:center;}
		table tr{border:1px solid #d9e9f9;height:35px;vertical-align:middle;text-align:center;}
		table td{border:1px solid #d9e9f9;vertical-align:middle;text-align:center;}
	</style>
    <title>用户管理>>详情</title>
</head>
<%
String YHBH="";//用户编号
String XM="";//姓名
String XB="";//性别
String ZHW="";//职务
String level="";//等级
String BM="";//部门
String DH="";//电话
String YHM="";//用户名
String passwd="";//密码
String email="";//邮箱
String ZHZH="";//住址
YHBH=getStr(request.getParameter("YHBH"));
XM=getStr(request.getParameter("XM"));
XB=getStr(request.getParameter("XB"));
ZHW=getStr(request.getParameter("ZHW"));
BM=getStr(request.getParameter("BM"));
level=getStr(request.getParameter("level"));
DH=getStr(request.getParameter("DH"));
YHM=getStr(request.getParameter("YHM"));
passwd=getStr(request.getParameter("passwd"));
email=getStr(request.getParameter("email"));
ZHZH=getStr(request.getParameter("ZHZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>查询详细信息</h2></div>
<div class="query">
    <div class="tabe_bot">
        <table>
			<tr>
				<td width="120px"><label>用户编号</label></td>
				<td><input type="text" name="YHBH" style="width:95%" value="<%=YHBH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>姓名</label></td>
				<td><input type="text" name="XM" style="width:95%" value="<%=XM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>性别</label></td>
				<td><input type="text" name="XB" style="width:95%" value="<%=XB%>"></td>
			</tr>
            <tr>
				<td width="120px"><label>职务</label></td>
				<td><input type="text" name="ZHW" style="width:95%" value="<%=ZHW%>"></td>
			</tr>             
			<tr>
				<td width="120px"><label>部门</label></td>
				<td><input type="text" name="BM" style="width:95%" value="<%=BM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>电话</label></td>
				<td><input type="text" name="DH" style="width:95%" value="<%=DH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>用户名</label></td>
				<td><input type="text" name="YHM" style="width:95%" value="<%=YHM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>密码</label></td>
				<td><input type="text" name="passwd" style="width:95%" value="<%=passwd%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>邮箱</label></td>
				<td><input type="text" name="email" style="width:95%" value="<%=email%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>等级</label></td>
				<td><input type="text" name="level" style="width:95%" value="<%=level%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>住址</label></td>
				<td><input type="text" name="ZHZH" style="width:95%" value="<%=ZHZH%>"></td>
			</tr>
		</table>
		 <div style="margin-top:10px;text-align:center;">
		 <input type="button"  class="tabe_btn" value="返回" onclick="javascript:history.go(-1);">
		</div>
		<div class="clear"></div>
    </div>
</div>
<div class="pagination ue-clear"></div>
</body>
</html>

