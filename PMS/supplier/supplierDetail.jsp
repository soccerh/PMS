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
    <title>供应商>>详情</title>
</head>
<%
String GYSHDH="";//供应商代号
String GYSHJCH="";//供应商简称
String GYSHLX="";//供应商类型
String LXR="";//联系人
String SHJ="";//手机
String SSHQY="";//所属区域
String GYSH="";//供应商全称
String LXDH="";//联系电话
String CHZHHH="";//传真号码
String DZYJ="";//电子邮件
String WZH="";//网址
String XXDZH="";//详细地址
String WLDW="";//往来单位
String country="";//国家
String province="";//省份
String city="";//城市
String YZHBM="";//邮政编码
String FZR="";//负责人
String FR="";//法人
String KYRQ="";//开业日期
String YEZZHHM="";//营业执照号码
String SWDJZH="";//税务登记证
String YH="";//银行
String YHZHH="";//银行账号
String CHCJYRQ="";//初次交易日期
String ZJJYRQ="";//最近交易日期
GYSHDH=getStr(request.getParameter("GYSHDH"));
GYSHJCH=getStr(request.getParameter("GYSHJCH"));
GYSHLX=getStr(request.getParameter("GYSHLX"));
LXR=getStr(request.getParameter("LXR"));
SHJ=getStr(request.getParameter("SHJ"));
SSHQY=getStr(request.getParameter("SSHQY"));
GYSH=getStr(request.getParameter("GYSH"));
LXDH=getStr(request.getParameter("LXDH"));
CHZHHH=getStr(request.getParameter("CHZHHH"));
DZYJ=getStr(request.getParameter("DZYJ"));
WZH=getStr(request.getParameter("WZH"));
XXDZH=getStr(request.getParameter("XXDZH"));
WLDW=getStr(request.getParameter("WLDW"));
country=getStr(request.getParameter("country"));
province=getStr(request.getParameter("province"));
city=getStr(request.getParameter("city"));
YZHBM=getStr(request.getParameter("YZHBM"));
FZR=getStr(request.getParameter("FZR"));
FR=getStr(request.getParameter("FR"));
KYRQ=getStr(request.getParameter("KYRQ"));
SWDJZH=getStr(request.getParameter("SWDJZH"));
YH=getStr(request.getParameter("YH"));
YEZZHHM=getStr(request.getParameter("YEZZHHM"));
FZR=getStr(request.getParameter("YHZHH"));
CHCJYRQ=getStr(request.getParameter("CHCJYRQ"));
ZJJYRQ=getStr(request.getParameter("ZJJYRQ"));
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
				<td width="120px"><label>供应商简称</label></td>
				<td><input type="text" name="GYSHJCH" style="width:95%" value="<%=GYSHJCH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商全称</label></td>
				<td><input type="text" name="GYSH" style="width:95%" value="<%=GYSH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>供应商类型</label></td>
				<td><input type="text" name="GYSHLX" style="width:95%" value="<%=GYSHLX%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>联系人</label></td>
				<td><input type="text" name="LXR" style="width:95%" value="<%=LXR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>所属区域</label></td>
				<td><input type="text" name="SSHQY" style="width:95%" value="<%=SSHQY%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>联系电话</label></td>
				<td><input type="text" name="LXDH" style="width:95%" value="<%=LXDH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>传真号码</label></td>
				<td><input type="text" name="CHZHHH" style="width:95%" value="<%=CHZHHH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>手机</label></td>
				<td><input type="text" name="SHJ" style="width:95%" value="<%=SHJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>电子邮件</label></td>
				<td><input type="text" name="DZYJ" style="width:95%" value="<%=DZYJ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>网址</label></td>
				<td><input type="text" name="WZH" style="width:95%" value="<%=WZH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>详细地址</label></td>
				<td><input type="text" name="XXDZH" style="width:95%" value="<%=XXDZH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>往来单位</label></td>
				<td><input type="text" name="WLDW" style="width:95%" value="<%=WLDW%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>国家</label></td>
				<td><input type="text" name="country" style="width:95%" value="<%=country%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>省份</label></td>
				<td><input type="text" name="province" style="width:95%" value="<%=province%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>城市</label></td>
				<td><input type="text" name="city" style="width:95%" value="<%=city%>"></td>
			</tr>	
			<tr>
				<td width="120px"><label>邮政编码</label></td>
				<td><input type="text" name="YZHBM" style="width:95%" value="<%=YZHBM%>"></td>
			</tr>           	
			<tr>
				<td width="120px"><label>负责人</label></td>
				<td><input type="text" name="FZR" style="width:95%" value="<%=FZR%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>法人</label></td>
				<td><input type="text" name="FR" style="width:95%" value="<%=FR%>"></td>
			</tr>				
			<tr>
				<td width="120px"><label>开业日期</label></td>
				<td><input type="text" name="KYRQ" style="width:95%" value="<%=KYRQ%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>税务登记证</label></td>
				<td><input type="text" name="SWDJZH" style="width:95%" value="<%=SWDJZH%>"></td>
			</tr>
		
			<tr>
				<td width="120px"><label>营业执照号码</label></td>
				<td><input type="text" name="YEZZHHM" style="width:95%" value="<%=YEZZHHM%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>银行账号</label></td>
				<td><input type="text" name="YHZHH" style="width:95%" value="<%=YHZHH%>"></td>
			</tr>
			<tr>
				<td width="120px"><label>初次交易日期</label></td>
				<td><input type="text" name="CHCJYRQ" style="width:95%" value="<%=CHCJYRQ%>"></td>
			</tr>			
			<tr>
				<td width="120px"><label>最近交易日期</label></td>
				<td><input type="text" name="ZJJYRQ" style="width:95%" value="<%=ZJJYRQ%>"></td>
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

