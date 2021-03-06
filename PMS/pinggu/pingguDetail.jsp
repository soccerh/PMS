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
    <title>供应商价格>>详情</title>
</head>
<%
String GYSHDH="";//供应商代号
String GYSHQCH="";//供应商全称
String YUFKJE="";//预付款金额
String YIFKJ="";//应付款金额
String QKJE="";//欠款金额
String JYPF="";//交易评分
String JHPF="";//交货评分
String PZHPF="";//品质评分
String FKFSH="";//付款方式
String JYHB="";//交易货币
String FKTJ="";//付款条件
String JGTJ="";//价格条件
String ZPGJ="";//总评等级
GYSHDH=getStr(request.getParameter("GYSHDH"));
GYSHQCH=getStr(request.getParameter("GYSHQCH"));
YUFKJE=getStr(request.getParameter("YUFKJE"));
YIFKJ=getStr(request.getParameter("YIFKJ"));
QKJE=getStr(request.getParameter("QKJE"));
JYPF=getStr(request.getParameter("JYPF"));
JHPF=getStr(request.getParameter("JHPF"));
PZHPF=getStr(request.getParameter("PZHPF"));
FKFSH=getStr(request.getParameter("FKFSH"));
JYHB=getStr(request.getParameter("JYHB"));
FKTJ=getStr(request.getParameter("FKTJ"));
JGTJ=getStr(request.getParameter("JGTJ"));
ZPGJ=getStr(request.getParameter("ZPGJ"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>查询详细信息</h2></div>
<div class="query">
    <div class="tabe_bot">
        <table>			
			<tr>
				<td width="120px"><label>供应商代号</label></td>
				<td><input type="text" name="GYSHDH" style="width:95%" value="<%=GYSHDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商全称</label></td>
				<td><input type="text" name="GYSHQCH" style="width:95%" value="<%=GYSHQCH%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>预付款金额</label></td>
				<td><input type="text" name="YUFKJE" style="width:95%" value="<%=YUFKJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>应付款金额</label></td>
				<td><input type="text" name="YIFKJ" style="width:95%" value="<%=YIFKJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>交易评分</label></td>
				<td><input type="text" name="JYPF" style="width:95%" value="<%=JYPF%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>交货评分</label></td>
				<td><input type="text" name="JHPF" style="width:95%" value="<%=JHPF%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>品质评分</label></td>
				<td><input type="text" name="PZHPF" style="width:95%" value="<%=PZHPF%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>付款方式</label></td>
				<td><input type="text" name="FKFSH" style="width:95%" value="<%=FKFSH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>欠款金额</label></td>
				<td><input type="text" name="QKJE" style="width:95%" value="<%=QKJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>交易货币</label></td>
				<td><input type="text" name="JYHB" style="width:95%" value="<%=JYHB%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>付款条件</label></td>
				<td><input type="text" name="FKTJ" style="width:95%" value="<%=FKTJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>价格条件</label></td>
				<td><input type="text" name="JGTJ" style="width:95%" value="<%=JGTJ%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>总评等级</label></td>
				<td><input type="text" name="ZPGJ" style="width:95%" value="<%=ZPGJ%>"></td>
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

