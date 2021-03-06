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
    <title>付款账>>编辑</title>
</head>
<%
String FKDH="";//付款单号
String FKRQ="";//付款日期
String ZHBR="";//制表人
String PZHR="";//批准人
String PZH="";//批准
String XGR="";//修改人
String GYSH="";//供应商
String XGRQ="";//修改日期
String SHPSHJ="";//审批时间
String FKLX="";//付款类型
String FKJE="";//付款金额
String HB="";//货币
String FKFSH="";//付款方式
String HL="";//汇率
String FKLY="";//付款来源
String PH="";//票号
String YUFJE="";//预付金额
String YFJE="";//应付金额
String QKJE="";//欠款金额
String DJLX="";//单据类型
String CGDH="";//采购单号
String YFDH="";//应付单号
String SHQDH="";//申请单号
String YIFJE="";//已付金额
String BCFKJE="";//本次付款金额
String BZH="";//备注
FKDH=getStr(request.getParameter("FKDH"));
FKRQ=getStr(request.getParameter("FKRQ"));
ZHBR=getStr(request.getParameter("ZHBR"));
PZHR=getStr(request.getParameter("PZHR"));
PZH=getStr(request.getParameter("PZH"));
XGR=getStr(request.getParameter("XGR"));
GYSH=getStr(request.getParameter("GYSH"));
XGRQ=getStr(request.getParameter("XGRQ"));
SHPSHJ=getStr(request.getParameter("SHPSHJ"));
FKLX=getStr(request.getParameter("FKLX"));
FKJE=getStr(request.getParameter("FKJE"));
HB=getStr(request.getParameter("HB"));
FKFSH=getStr(request.getParameter("FKFSH"));
HL=getStr(request.getParameter("HL"));
FKLY=getStr(request.getParameter("FKLY"));
PH=getStr(request.getParameter("PH"));
YUFJE=getStr(request.getParameter("YUFJE"));
YFJE=getStr(request.getParameter("YFJE"));
QKJE=getStr(request.getParameter("QKJE"));
DJLX=getStr(request.getParameter("DJLX"));
YFDH=getStr(request.getParameter("YFDH"));
SHQDH=getStr(request.getParameter("SHQDH"));
CGDH=getStr(request.getParameter("CGDH"));
YIFJE=getStr(request.getParameter("YIFJE"));
BCFKJE=getStr(request.getParameter("BCFKJE"));
BZH=getStr(request.getParameter("BZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>付款账编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="fukuanalterdo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>付款单号</label></td>
				<td><input type="text" name="FKDH" style="width:95%" value="<%=FKDH%>" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>付款日期</label></td>
				<td><input type="text" name="FKRQ" style="width:95%" value="<%=FKRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%" value="<%=GYSH%>">
				<option value="<%=GYSH%>" ><%=GYSH%></option>
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
				<td width="120px"><label>制表人</label></td>
				<td>
				<select name="ZHBR" style="width:95%" value="<%=ZHBR%>">
				<option value="<%=ZHBR%>" ><%=ZHBR%></option>
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
				<td width="120px"><label>批准人</label></td>
				<td>
				<select name="PZHR" style="width:95%" value="<%=PZHR%>">
				<option value="<%=PZHR%>" ><%=PZHR%></option>
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
				<td width="120px"><label>修改人</label></td>
				<td>
				<select name="XGR" style="width:95%" value="<%=XGR%>">
				<option value="<%=PZHR%>" ><%=PZHR%></option>
				<%
				String sql3="select YHBH,XM from RYMD order by XM asc";
				ResultSet rs3=stmt.executeQuery(sql3);
				while(rs3.next()){
				%>
				<option value="<%=rs3.getString("XM")%>"><%=rs3.getString("YHBH")%>+<%=rs3.getString("XM")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>修改日期</label></td>
				<td><input type="text" name="XGRQ" style="width:95%" value="<%=XGRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>审批时间</label></td>
				<td><input type="text" name="SHPSHJ" style="width:95%" value="<%=SHPSHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>批准</label></td>
				<td><input type="text" name="PZH" style="width:95%" value="<%=PZH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>付款类型</label></td>
				<td><input type="text" name="FKLX" style="width:95%" value="<%=FKLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>付款金额</label></td>
				<td><input type="text" name="FKJE" style="width:95%" value="<%=FKJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" value="<%=HB%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>付款方式</label></td>
				<td><input type="text" name="FKFSH" style="width:95%" value="<%=FKFSH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>汇率</label></td>
				<td><input type="text" name="HL" style="width:95%" value="<%=HL%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>付款来源</label></td>
				<td><input type="text" name="FKLY" style="width:95%" value="<%=FKLY%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>票号</label></td>
				<td><input type="text" name="PH" style="width:95%" value="<%=PH%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>预付金额</label></td>
				<td><input type="text" name="YUFJE" style="width:95%" value="<%=YUFJE%>"></td>
			</tr>           	
			<tr>
				<td width="120px"><label>应付金额</label></td>
				<td><input type="text" name="YFJE" style="width:95%" value="<%=YFJE%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>欠款金额</label></td>
				<td><input type="text" name="QKJE" style="width:95%" value="<%=QKJE%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>单据类型</label></td>
				<td><input type="text" name="DJLX" style="width:95%" value="<%=DJLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>应付单号</label></td>
				<td><input type="text" name="YFDH" style="width:95%" value="<%=YFDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>申请单号</label></td>
				<td><input type="text" name="SHQDH" style="width:95%" value="<%=SHQDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购单号</label></td>
				<td><input type="text" name="CGDH" style="width:95%" value="<%=CGDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>已付金额</label></td>
				<td><input type="text" name="YIFJE" style="width:95%" value="<%=YIFJE%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>本次付款金额</label></td>
				<td><input type="text" name="BCFKJE" style="width:95%" value="<%=BCFKJE%>"></td>
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
