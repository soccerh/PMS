<%@page contentType="text/html;charset=gb2312"%>
<html>
<head>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.dialog.css" />
<link rel="stylesheet" href="css/index.css" />
    <style>
        .layui-layer-title{background:url(images/righttitlebig.png) repeat-x;font-weight:bold;color:#46647e; border:1px solid #c1d3de;height: 33px;line-height: 33px;}
    </style>
<title>电机企业ERP采购系统</title>
</head>
<body>
<%
String m="";
session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("login.jsp");}
%>
<div id="container">
	<div id="hd">
    	<div class="hd-wrap ue-clear">
        	<div class="top-light"></div>
            <h1 class="logo"></h1>
            <div class="login-info ue-clear">
                <div class="welcome ue-clear"><span>欢迎您！</span><a href="javascript:void(0)" class="user-name"></a></div>
                 <%--<div class="login-msg ue-clear">
                    <a href="javascript:void(0)" class="msg-txt">消息</a>
                    <a href="javascript:void(0)" class="msg-num">15</a>
                </div> --%> 
            </div>
            <div class="toolbar ue-clear">
                <a href="login.jsp" class="home-btn" target="right">登录</a>  
				<a href="register.jsp" class="home-btn" target="right">注册</a> 
                <a href="exit.jsp" class="quit-btn exit home-btn">退出</a>
            </div>
        </div>
    </div>
    <div id="bd">
    	<div class="wrap ue-clear">
        	<div class="sidebar">
            	<h2 class="sidebar-header"><p>采购管理导航</p></h2>
               <ul class="nav">
				
                	<li class="train"><div class="nav-header"><a href="JavaScript:;" class="ue-clear" ><span>请购管理</span><i class="icon hasChild"></i></a></div>
                        <ul class="subnav">
<%--<li><a href="stock/stockcx.jsp" target="right">仓库</a></li>--%>
                            <li><a href="xunjia/xunjiacx.jsp" target="right">询价</a></li>
                            <li><a href="baojia/baojiacx.jsp" target="right">报价</a></li>
							<li><a href="qinggou/qinggoucx.jsp" target="right">请购</a></li>                                        
                         </ul>
                    </li>
					<li class="land"><div class="nav-header"><a href="JavaScript:;" class="ue-clear" ><span>采购管理</span><i class="icon hasChild"></i></a></div>
                        <ul class="subnav">
                            <li><a href="purchase/purchasecx.jsp" target="right">采购</a></li>
                        </ul>
                    </li>
                    <li class="email"><div class="nav-header"><a href="JavaScript:;"class="ue-clear"  target="right"><span>收货管理</span><i class="icon"></i></a></div>
					<ul class="subnav">
                            <li><a href="receive/receivecx.jsp" target="right">收货</a></li>
                            <li><a href="invoice/invoicecx.jsp" target="right">发票</a></li>
                            <li><a href="return/returncx.jsp" target="right">退货</a></li>
                        </ul>
					</li>
                   
				    <li class="data"><div class="nav-header"><a href="JavaScript:;"class="ue-clear"  target="right"><span>付款管理</span><i class="icon"></i></a></div>
					<ul class="subnav">
                            <li><a href="yingfuzhang/yingfuzhangcx.jsp" target="right">应付款</a></li>
                            <li><a href="fukuan/fukuancx.jsp" target="right">付款</a></li>
                    </ul>
					</li>					
					<li class="land"><div class="nav-header"><a href="JavaScript:;" class="ue-clear" ><span>供应商管理</span><i class="icon hasChild"></i></a></div>
                        <ul class="subnav">
                            <li><a href="supplier/suppliercx.jsp" target="right">供应商</a></li>
							<li><a href="jiage/jiagecx.jsp" target="right">供应商价格</a></li>
                            <li><a href="pinggu/pinggucx.jsp" target="right">供应商评估</a></li>                            
                         </ul>
                    </li>
                   <%--<li class="agency"><div class="nav-header"><a href="JavaScript:;" class="ue-clear" target="right"><span>采购统计分析</span><i class="icon"></i></a></div>
					<ul class="subnav">
                            <li><a href="hotelStatic.html" target="right">采购金额</a></li>
                            <li><a href="locationStatic.html" target="right">采购数量</a></li>
                            <li><a href="locationStatic.html" target="right">物料出入账</a></li>
                            <li><a href="locationStatic.html" target="right">物料进出库账</a></li>
							<li><a href="locationStatic.html" target="right">安全预警</a></li>
							<li><a href="locationStatic.html" target="right">库存ABC分类</a></li>
							<li><a href="locationStatic.html" target="right">库存统计报表</a></li>
                        </ul>
					</li>--%>
<% if(session.getAttribute("m")!=null){ m=session.getAttribute("m").toString();
if(m.equals("1"))
						{%>
                    <li class="part"><div class="nav-header"><a href="JavaScript:;" class="ue-clear" ><span>系统设置管理</span><i class="icon hasChild"></i></a></div>
                        <ul class="subnav">	
						
                            <li><a href="system/systemyhglcx.jsp" target="right">用户管理</a></li>
                            <li><a href="system/systembmglcx.jsp" target="right">部门管理</a></li>  	
						
                        </ul>
                    </li><%}}%>
                </ul>
            </div>
            <div class="content">
            	<iframe src="login.jsp" id="iframe" width="100%" height="100%" frameborder="0" name="right" style="min-width: 1100px"></iframe>
            </div>
        </div>
    </div>
   
</div>
<div class="exitDialog">
	<div class="dialog-content">
    	<div class="ui-dialog-icon"></div>
        <div class="ui-dialog-text">
        	<p class="dialog-content">你确定要退出系统？</p>
            <p class="tips">如果是请点击“确定”，否则点“取消”</p>
            
            <div class="buttons">
                <input type="button" class="button long2 ok" value="确定" />
                <input type="button" class="button long2 normal" value="取消" />
            </div>
        </div>
        
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.dialog.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="js/layer_v2.1/layer/layer.js"></script>
<script type="text/javascript">
    function openlayer(id){
        layer.open({
            type: 2,
            title: '修改密码',
            shadeClose: false,
            shade: 0.5,
            skin: 'layui-layer-rim',
//            maxmin: true,
            closeBtn:2,
            area: ['35%', '40%'],
            content: login.jsp'
            //iframe的url
        });
    }
</script>
</html>
