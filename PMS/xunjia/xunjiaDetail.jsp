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
    <title>询价>>详情</title>
</head>
<%
String XJDH="";//询价单号
String MCH="";//材料名称
String XJRQ="";//询价日期
String XJY="";//询价员
String GYSH="";//供应商
String BM="";//部门
String CLDH="";//材料代号
String GG="";//规格
String YS="";//颜色
String DW="";//单位
String BZH="";//备注
XJDH=getStr(request.getParameter("XJDH"));
MCH=getStr(request.getParameter("MCH"));
XJRQ=getStr(request.getParameter("XJRQ"));
XJY=getStr(request.getParameter("XJY"));
GYSH=getStr(request.getParameter("GYSH"));
BM=getStr(request.getParameter("BM"));
CLDH=getStr(request.getParameter("CLDH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DW=getStr(request.getParameter("DW"));
BZH=getStr(request.getParameter("BZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>查询详细信息</h2></div>
<div class="query">
    <div class="tabe_bot">
        <table>
			<tr>
				<td width="120px"><label>询价单号</label></td>
				<td><input type="text" name="XJDH" style="width:95%" value="<%=XJDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="MCH" style="width:95%" value="<%=MCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>询价日期</label></td>
				<td><input type="text" name="XJRQ" style="width:95%" value="<%=XJRQ%>"></td>
			</tr>
            <tr>
				<td width="120px"><label>询价员</label></td>
				<td><input type="text" name="XJY" style="width:95%" value="<%=XJY%>"></td>
			</tr>
             <tr>
				<td width="120px"><label>供应商</label></td>
				<td><input type="text" name="GYSH" style="width:95%" value="<%=GYSH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>部门</label></td>
				<td><input type="text" name="BM" style="width:95%" value="<%=BM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料代号</label></td>
				<td><input type="text" name="CLDH" style="width:95%" value="<%=CLDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>规格</label></td>
				<td><input type="text" name="GG" style="width:95%" value="<%=GG%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>颜色</label></td>
				<td><input type="text" name="YS" style="width:95%" value="<%=YS%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单位</label></td>
				<td><input type="text" name="DW" style="width:95%" value="<%=DW%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>备注</label></td>
				<td><input type="text" name="BZH" style="width:95%" value="<%=BZH%>"></td>
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

