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
    <title>部门管理>>详情</title>
</head>
<%
String BMBH="";//部门编号
String BMMCH="";//部门名称
String ZHGR="";//主管人
String LXDH="";//联系电话
String BMCHZH="";//部门传真
String ZHGBH="";//主管编号
String DYRSH="";//定员人数
String XYRSH="";//现有人数
BMBH=getStr(request.getParameter("BMBH"));
BMMCH=getStr(request.getParameter("BMMCH"));
ZHGR=getStr(request.getParameter("ZHGR"));
LXDH=getStr(request.getParameter("LXDH"));
BMCHZH=getStr(request.getParameter("BMCHZH"));
ZHGBH=getStr(request.getParameter("ZHGBH"));
DYRSH=getStr(request.getParameter("DYRSH"));
XYRSH=getStr(request.getParameter("XYRSH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>查询详细信息</h2></div>
<div class="query">
    <div class="tabe_bot">
        <table>
			<tr>
				<td width="120px"><label>部门编号</label></td>
				<td><input type="text" name="BMBH" style="width:95%" value="<%=BMBH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>部门名称</label></td>
				<td><input type="text" name="BMMCH" style="width:95%" value="<%=BMMCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>主管人</label></td>
				<td><input type="text" name="ZHGR" style="width:95%" value="<%=ZHGR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>主管编号</label></td>
				<td><input type="text" name="ZHGBH" style="width:95%" value="<%=ZHGBH%>"></td>
			</tr>
            <tr>
				<td width="120px"><label>联系电话</label></td>
				<td><input type="text" name="LXDH" style="width:95%" value="<%=LXDH%>"></td>
			</tr>             
			
			<tr>
				<td width="120px"><label>部门传真</label></td>
				<td><input type="text" name="BMCHZH" style="width:95%" value="<%=BMCHZH%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>定员人数</label></td>
				<td><input type="text" name="DYRSH" style="width:95%" value="<%=DYRSH%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>现有人数</label></td>
				<td><input type="text" name="XYRSH" style="width:95%" value="<%=XYRSH%>"></td>
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

