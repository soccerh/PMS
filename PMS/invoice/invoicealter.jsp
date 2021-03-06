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
    <title>发票账>>编辑</title>
</head>
<%
String PJDH="";//票据单号
String KPRQ="";//开票日期
String KPR="";//开票人
String PZHR="";//批准人
String PJLX="";//票据类型
String BM="";//部门
String GYSH="";//供应商
String FPHM="";//发票号码
String CGDH="";//采购单号
String CLDH="";//材料代号
String MCH="";//材料名称
String HB="";//货币
String GG="";//规格
String YS="";//颜色
String DW="";//单位
String FPSHL="";//发票数量
String DJ="";//单价
String HSHDJ="";//含税单价
String HKJE="";//货款金额
String JSHHJ="";//价税合计
String YH="";//银行
String YHZHH="";//银行账号
String BHSHJE="";//不含税金额
String SHL="";//税率
String SHJ="";//税金
String SHM="";//税目
String BZH="";//备注
PJDH=getStr(request.getParameter("PJDH"));
KPRQ=getStr(request.getParameter("KPRQ"));
KPR=getStr(request.getParameter("KPR"));
PZHR=getStr(request.getParameter("PZHR"));
PJLX=getStr(request.getParameter("PJLX"));
BM=getStr(request.getParameter("BM"));
GYSH=getStr(request.getParameter("GYSH"));
FPHM=getStr(request.getParameter("FPHM"));
CGDH=getStr(request.getParameter("CGDH"));
CLDH=getStr(request.getParameter("CLDH"));
MCH=getStr(request.getParameter("MCH"));
HB=getStr(request.getParameter("HB"));
GG=getStr(request.getParameter("GG"));
YS=getStr(request.getParameter("YS"));
DW=getStr(request.getParameter("DW"));
FPSHL=getStr(request.getParameter("FPSHL"));
DJ=getStr(request.getParameter("DJ"));
HSHDJ=getStr(request.getParameter("HSHDJ"));
HKJE=getStr(request.getParameter("HKJE"));
JSHHJ=getStr(request.getParameter("JSHHJ"));
YH=getStr(request.getParameter("YH"));
YHZHH=getStr(request.getParameter("YHZHH"));
BHSHJE=getStr(request.getParameter("BHSHJE"));
SHL=getStr(request.getParameter("SHL"));
SHJ=getStr(request.getParameter("SHJ"));
SHM=getStr(request.getParameter("SHM"));
BZH=getStr(request.getParameter("BZH"));
%>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>发票账编辑</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" action="invoicealterdo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>票据单号</label></td>
				<td><input type="text" name="PJDH" style="width:95%" value="<%=PJDH%>" readonly></td>
			</tr>
			<tr>
				<td width="120px"><label>开票日期</label></td>
				<td><input type="text" name="KPRQ" style="width:95%" value="<%=KPRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>开票人</label></td>
				<td>
				<select name="KPR" style="width:95%" value="<%=KPR%>">
				<option value="<%=KPR%>" ><%=KPR%></option>
				<%
				String sql="select YHBH,XM from RYMD order by XM asc";
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
				%>
				<option value="<%=rs.getString("XM")%>"><%=rs.getString("YHBH")%>+<%=rs.getString("XM")%></option>
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
				<td width="120px"><label>票据类型</label></td>
				<td><input type="text" name="PJLX" style="width:95%" value="<%=PJLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>部门</label></td>
				<td>
				<select name="BM" style="width:95%" value="<%=BM%>">
				<option value="<%=BM%>" ><%=BM%></option>
				<%
				String sql2="select BMBH,BMMCH from BMXXB order by BMBH asc";
				ResultSet rs2=stmt.executeQuery(sql2);
				while(rs2.next()){
				%>
				<option value="<%=rs2.getString("BMMCH")%>"><%=rs2.getString("BMBH")%>+<%=rs2.getString("BMMCH")%></option>
				<%}%>
				</select>
				</td>
			</tr>		
			<tr>
				<td width="120px"><label>供应商</label></td>
				<td>
				<select name="GYSH" style="width:95%" value="<%=GYSH%>">
				<option value="<%=GYSH%>" ><%=GYSH%></option>
				<%
				String sql3="select GYSHDH,GYSH from GYSHSHZH order by GYSHDH asc";
				ResultSet rs3=stmt.executeQuery(sql3);
				while(rs3.next()){
				%>
				<option value="<%=rs3.getString("GYSH")%>"><%=rs3.getString("GYSHDH")%>+<%=rs3.getString("GYSH")%></option>
				<%}%>
				</select>
				</td>
			</tr>
			<tr>
				<td width="120px"><label>发票号码</label></td>
				<td><input type="text" name="FPHM" style="width:95%" value="<%=FPHM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>采购单号</label></td>
				<td><input type="text" name="CGDH" style="width:95%" value="<%=CGDH%>"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>材料代号</label></td>
				<td><input type="text" name="CLDH" style="width:95%" value="<%=CLDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>材料名称</label></td>
				<td><input type="text" name="MCH" style="width:95%" value="<%=MCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货币</label></td>
				<td><input type="text" name="HB" style="width:95%" value="<%=HB%>"></td>
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
				<td width="120px"><label>发票数量</label></td>
				<td><input type="text" name="FPSHL" style="width:95%" value="<%=FPSHL%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>单价</label></td>
				<td><input type="text" name="DJ" style="width:95%" value="<%=DJ%>"></td>
			</tr>           	
			<tr>
				<td width="120px"><label>含税单价</label></td>
				<td><input type="text" name="HSHDJ" style="width:95%" value="<%=HSHDJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>货款金额</label></td>
				<td><input type="text" name="HKJE" style="width:95%" value="<%=HKJE%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>价税合计</label></td>
				<td><input type="text" name="JSHHJ" style="width:95%" value="<%=JSHHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>银行</label></td>
				<td><input type="text" name="YH" style="width:95%" value="<%=YH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>银行账号</label></td>
				<td><input type="text" name="YHZHH" style="width:95%" value="<%=YHZHH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>不含税金额</label></td>
				<td><input type="text" name="BHSHJE" style="width:95%" value="<%=BHSHJE%>"></td>
			</tr>
			
			<tr>
				<td width="120px"><label>税率</label></td>
				<td><input type="text" name="SHL" style="width:95%" value="<%=SHL%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>税金</label></td>
				<td><input type="text" name="SHJ" style="width:95%" value="<%=SHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>税目</label></td>
				<td><input type="text" name="SHM" style="width:95%" value="<%=SHM%>"></td>
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
