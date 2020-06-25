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
    <title>供应商>>增加</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>供应商增加</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="supplieradddo.jsp">
		<table>			
			<tr>
				<td width="120px"><label>供应商代号</label></td>
				<td><input type="text" name="GYSHDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商简称</label></td>
				<td><input type="text" name="GYSHJCH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商全称</label></td>
				<td><input type="text" name="GYSH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商类型</label></td>
				<td><input type="text" name="GYSHLX" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>联系人</label></td>
				<td><input type="text" name="LXR" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>所属区域</label></td>
				<td><input type="text" name="SSHQY" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>联系电话</label></td>
				<td><input type="text" name="LXDH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>传真号码</label></td>
				<td><input type="text" name="CHZHHH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>手机</label></td>
				<td><input type="text" name="SHJ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>电子邮件</label></td>
				<td><input type="text" name="DZYJ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>网址</label></td>
				<td><input type="text" name="WZH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>详细地址</label></td>
				<td><input type="text" name="XXDZH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>往来单位</label></td>
				<td><input type="text" name="WLDW" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>国家</label></td>
				<td><input type="text" name="country" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>省份</label></td>
				<td><input type="text" name="province" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>城市</label></td>
				<td><input type="text" name="city" style="width:95%" ></td>
			</tr>	
			<tr>
				<td width="120px"><label>邮政编码</label></td>
				<td><input type="text" name="YZHBM" style="width:95%" ></td>
			</tr>           	
			<tr>
				<td width="120px"><label>负责人</label></td>
				<td><input type="text" name="FZR" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>法人</label></td>
				<td><input type="text" name="FR" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>开业日期</label></td>
				<td><input type="text" name="KYRQ" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>税务登记证</label></td>
				<td><input type="text" name="SWDJZH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>银行</label></td>
				<td><input type="text" name="YH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>营业执照号码</label></td>
				<td><input type="text" name="YEZZHHM" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>银行账号</label></td>
				<td><input type="text" name="YHZHH" style="width:95%" ></td>
			</tr>
			<tr>
				<td width="120px"><label>初次交易日期</label></td>
				<td><input type="text" name="CHCJYRQ" style="width:95%" ></td>
			</tr>			
			<tr>
				<td width="120px"><label>最近交易日期</label></td>
				<td><input type="text" name="ZJJYRQ" style="width:95%" ></td>
			</tr>
		</table>
		 <div style="margin-top:10px;text-align:center;">
		 <input type="button"  class="tabe_btn" value="增加" onclick="javascript:formcx.submit();">
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
