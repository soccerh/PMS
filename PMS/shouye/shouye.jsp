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
    <title>首页</title>
</head>

<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<div class="title"><h2>欢迎到首页</h2></div>

</body>
</html>

