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
    <title>收货账>>编辑</title>
</head>
<%
String SHHDH="";//收货单号
String SHHRQ="";//收货日期
String CGBM="";//采购部门
String CGY="";//采购员
String SHHLX="";//收货类型
String XH="";//序号
String GYSH="";//供应商
String CGDH="";//采购单号
String CGCL="";//采购材料
String HSHDJ="";//含税单价
String SHHJE="";//收货金额
String YKYSHJE="";//已开应收金额
String KPSHL="";//开票数量
String YTSHL="";//已退数量
String ZHJJG="";//质检结果
String ZHJDH="";//质检单号
String ZHJDXH="";//质检单序号
String SHHTZHD="";//收货通知单
String SHHTZHDXH="";//收货通知单序号
String XNJ="";//虚拟件
String CHPGCH="";//产品工程
String FH="";//父行
String BZH="";//备注
SHHDH=getStr(request.getParameter("SHHDH"));
SHHRQ=getStr(request.getParameter("SHHRQ"));
CGBM=getStr(request.getParameter("CGBM"));
CGY=getStr(request.getParameter("CGY"));
SHHLX=getStr(request.getParameter("SHHLX"));
XH=getStr(request.getParameter("XH"));
GYSH=getStr(request.getParameter("GYSH"));
CGDH=getStr(request.getParameter("CGDH"));
CGCL=getStr(request.getParameter("CGCL"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
SHHJE=getStr(request.getParameter("SHHJE"));
YKYSHJE=getStr(request.getParameter("YKYSHJE"));
KPSHL=getStr(request.getParameter("KPSHL"));
YTSHL=getStr(request.getParameter("YTSHL"));
ZHJJG=getStr(request.getParameter("ZHJJG"));
ZHJDH=getStr(request.getParameter("ZHJDH"));
ZHJDXH=getStr(request.getParameter("ZHJDXH"));
SHHTZHD=getStr(request.getParameter("SHHTZHD"));
SHHTZHDXH=getStr(request.getParameter("SHHTZHDXH"));
XNJ=getStr(request.getParameter("XNJ"));
CHPGCH=getStr(request.getParameter("CHPGCH"));
FH=getStr(request.getParameter("FH"));
BZH=getStr(request.getParameter("BZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>收货账编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="receivealterdo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>收货单号</label></td>
				<td><input type="text" name="SHHDH" style="width:95%" value="<%=SHHDH%>" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>收货日期</label></td>
				<td><input type="text" name="SHHRQ" style="width:95%" value="<%=SHHRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购部门</label></td>
				<td>
				<select name="CGBM" style="width:95%" value="<%=CGBM%>">
				<option value="<%=CGBM%>" ><%=CGBM%></option>
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
				<td width="120px"><label>采购员</label></td>
				<td>
				<select name="CGY" style="width:95%" value="<%=CGY%>">
				<option value="<%=CGY%>" ><%=CGY%></option>
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
				<td width="120px"><label>收货类型</label></td>
				<td><input type="text" name="SHHLX" style="width:95%" value="<%=SHHLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%" value="<%=GYSH%>">
				<option value="<%=GYSH%>" ><%=GYSH%></option>
				<%
				String sql2="select GYSHDH,GYSH from GYSHSHZH order by GYSHDH asc";
				ResultSet rs2=stmt.executeQuery(sql2);
				while(rs2.next()){
				%>
				<option value="<%=rs2.getString("GYSH")%>"><%=rs2.getString("GYSHDH")%>+<%=rs2.getString("GYSH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			
			
			<tr>
				<td width="120px"><label>序号</label></td>
				<td><input type="text" name="XH" style="width:95%" value="<%=XH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购单号</label></td>
				<td><input type="text" name="CGDH" style="width:95%" value="<%=CGDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购材料</label></td>
				<td><input type="text" name="CGCL" style="width:95%" value="<%=CGCL%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>含税单价</label></td>
				<td><input type="text" name="HSHDJ" style="width:95%" value="<%=HSHDJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>收货金额</label></td>
				<td><input type="text" name="SHHJE" style="width:95%" value="<%=SHHJE%>"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>已开应收金额</label></td>
				<td><input type="text" name="YKYSHJE" style="width:95%" value="<%=YKYSHJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>开票数量</label></td>
				<td><input type="text" name="KPSHL" style="width:95%" value="<%=KPSHL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>已退数量</label></td>
				<td><input type="text" name="YTSHL" style="width:95%" value="<%=YTSHL%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>质检结果</label></td>
				<td><input type="text" name="ZHJJG" style="width:95%" value="<%=ZHJJG%>"></td>
			</tr>	
			
			<tr>
				<td width="120px"><label>质检单序号</label></td>
				<td><input type="text" name="ZHJDXH" style="width:95%" value="<%=ZHJDXH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>收货通知单</label></td>
				<td><input type="text" name="SHHTZHD" style="width:95%" value="<%=SHHTZHD%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>收货通知单序号</label></td>
				<td><input type="text" name="SHHTZHDXH" style="width:95%" value="<%=SHHTZHDXH%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>虚拟件</label></td>
				<td><input type="text" name="XNJ" style="width:95%" value="<%=XNJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>产品工程</label></td>
				<td><input type="text" name="CHPGCH" style="width:95%" value="<%=CHPGCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>父行</label></td>
				<td><input type="text" name="FH" style="width:95%" value="<%=FH%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>备注</label></td>
				<td><input type="text" name="BZH" style="width:95%" value="<%=BZH%>"></td>
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
