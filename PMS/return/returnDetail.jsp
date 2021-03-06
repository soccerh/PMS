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
    <title>退货账>>详情</title>
</head>
<%
String THDH="";//退货单号
String THRQ="";//退货日期
String BM="";//采购部门
String CGY="";//采购员
String HB="";//货币
String SHHDH="";//收货单号
String GYSH="";//供应商
String CGDH="";//采购单号
String MCH="";//材料名称
String HSHDJ="";//含税单价
String PH="";//批号
String CLDH="";//材料代号
String GG="";//规格
String YS="";//颜色
String DJ="";//单价
String SHL="";//税率
String THJE="";//退货金额
String THSHL="";//退货数量
String DW="";//单位
String CK="";//仓库
String SHHSHL="";//收货数量
String YTSHL="";//已退数量
String BZH="";//备注
THDH=getStr(request.getParameter("THDH"));
THRQ=getStr(request.getParameter("THRQ"));
BM=getStr(request.getParameter("BM"));
CGY=getStr(request.getParameter("CGY"));
HB=getStr(request.getParameter("HB"));
SHHDH=getStr(request.getParameter("SHHDH"));
GYSH=getStr(request.getParameter("GYSH"));
CGDH=getStr(request.getParameter("CGDH"));
MCH=getStr(request.getParameter("MCH"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
PH=getStr(request.getParameter("PH"));
CLDH=getStr(request.getParameter("CLDH"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DJ=getStr(request.getParameter("DJ"));
SHL=getStr(request.getParameter("SHL"));
THJE=getStr(request.getParameter("THJE"));
THSHL=getStr(request.getParameter("THSHL"));
DW=getStr(request.getParameter("DW"));
CK=getStr(request.getParameter("CK"));
SHHSHL=getStr(request.getParameter("SHHSHL"));
YTSHL=getStr(request.getParameter("YTSHL"));
BZH=getStr(request.getParameter("BZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>查询详细信息</h2></div>
<div class="query">
    <div class="tabe_bot">
        <table>			
			<tr>
				<td width="120px"><label>退货单号</label></td>
				<td><input type="text" name="THDH" style="width:95%" value="<%=THDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>退货日期</label></td>
				<td><input type="text" name="THRQ" style="width:95%" value="<%=THRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td><input type="text" name="GYSH" style="width:95%" value="<%=GYSH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购部门</label></td>
				<td><input type="text" name="BM" style="width:95%" value="<%=BM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购员</label></td>
				<td><input type="text" name="CGY" style="width:95%" value="<%=CGY%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" value="<%=HB%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>收货单号</label></td>
				<td><input type="text" name="SHHDH" style="width:95%" value="<%=SHHDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购单号</label></td>
				<td><input type="text" name="CGDH" style="width:95%" value="<%=CGDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="MCH" style="width:95%" value="<%=MCH%>"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>含税单价</label></td>
				<td><input type="text" name="HSHDJ" style="width:95%" value="<%=HSHDJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>批号</label></td>
				<td><input type="text" name="PH" style="width:95%" value="<%=PH%>"></td>
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
				<td width="120px"><label>单价</label></td>
				<td><input type="text" name="DJ" style="width:95%" value="<%=DJ%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>税率</label></td>
				<td><input type="text" name="SHL" style="width:95%" value="<%=SHL%>"></td>
			</tr>           	
			
			<tr>
				<td width="120px"><label>退货金额</label></td>
				<td><input type="text" name="THJE" style="width:95%" value="<%=THJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>退货数量</label></td>
				<td><input type="text" name="THSHL" style="width:95%" value="<%=THSHL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>单位</label></td>
				<td><input type="text" name="DW" style="width:95%" value="<%=DW%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>仓库</label></td>
				<td><input type="text" name="CK" style="width:95%" value="<%=CK%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>收货数量</label></td>
				<td><input type="text" name="SHHSHL" style="width:95%" value="<%=SHHSHL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>已退数量</label></td>
				<td><input type="text" name="YTSHL" style="width:95%" value="<%=YTSHL%>"></td>
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

