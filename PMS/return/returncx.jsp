<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/info-mgt.css" />
	<style>
        .layui-layer-title{background:url(../images/righttitlebig.png) repeat-x;font-weight:bold;color:#46647e; border:1px solid #c1d3de;height: 33px;line-height: 33px;}
        .tabe_bot label{width: 70px;text-align: right;font-size: 14px;font-weight: 900;color: #46647e}
        .l_left{float: left}
        .tabe_bot input,.tabe_bot  select{width: 180px;height: 30px;border-radius: 6px;margin:0 20px 0 0;border: none;border: 1px #ccc solid}
        .tabe_btn{width: 60px;height: 30px;background-color: #68b86c;border: none;border-radius: 6px;color: #fff;}
		table{border:1px solid #d9e9f9;width:100%;vertical-align:middle;text-align:center;font-size: 13px}
		table tr{border:1px solid #d9e9f9;height:30px;vertical-align:middle;text-align:center;}
		table td{border:1px solid #d9e9f9;vertical-align:middle;text-align:center;}
		
    </style>
    <title>退货</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
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
String sql="";//
String searchContent1=getStr(request.getParameter("searchContent1"));//查询内容1
String searchContent2=getStr(request.getParameter("searchContent2"));//查询内容2
if(searchContent1==null){searchContent1="";}
if(searchContent2==null){searchContent2="";}
String strPage;//待显示的页码
int intPageSize; //一页显示的记录数
int intRowCount; //记录总数
int intPageCount; //总页数
int intPage; //待显示页码
int i;
intPageSize=12;//设置一页显示的记录数
strPage=request.getParameter("pages");//取待显示页码
if(strPage==null){
//表明在QueryString中没有page这个参数，显示第一页数据
intPage=1;}else{
//将字符串转换成整型
intPage=Integer.parseInt(strPage);
if(intPage<1){intPage=1;}
}
%>
<div class="title"><h2>退货管理>>退货</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="returncx.jsp">
		<div class="l_left"><label>材料名称：</label><input type="text" name="searchContent1"></div>
        <div class="l_left"><label>供应商：</label><input type="text" name="searchContent2"></div>
        <button class="tabe_btn" onclick="javascript:formcx.submit();">查询</button>
         <form>
        <div class="clear"></div>
    </div>
</div>
<div class="table-operate ue-clear">
    <a href="returnadd.jsp" class="add">添加</a>
	
	<!--<a href="stockadd2.jsp" class="add">增加</a>-->
 </div>
<div>
    <table>
    <div style="height:3px;"></div>
	<tr style=" background-color:#eff5fc;">
		    <td>退货单号</td>
			<td>材料名称</td>
			<td>采购部门</td>
			<td>采购员</td>
			<td>供应商</td>
			<td>操作</td>
	</tr>
    <%
    sql="select THDH,THRQ,BM,CGY,HB,SHHDH,GYSH,CGDH,MCH,HSHDJ,PH,CLDH,GG,YS,DJ,SHL,THJE,THSHL,DW,CK,SHHSHL,YTSHL,BZH from THD where MCH like '%"+searchContent1+"%' and GYSH like '%"+searchContent2+"%' order by THDH asc";
	//out.print(sql);
	ResultSet rs=stmt.executeQuery(sql);//查询结果对象
    rs.last(); 
    intRowCount=rs.getRow();//获取记录总数 
	intPageCount=(intRowCount+intPageSize-1)/intPageSize;//总页数
	//调整待显示的页码
    if(intPage>intPageCount)intPage=intPageCount;
      if(intPageCount>0){
       //将记录指针定位到待显示页的第一条记录上 
      rs.absolute((intPage-1)*intPageSize+1); 
       }
      i=0;//显示数据 
      if(intRowCount>0){
          while(i<intPageSize&&!rs.isAfterLast()){ 
THDH=rs.getString("THDH");
THRQ=rs.getString("THRQ");
BM=rs.getString("BM");
CGY=rs.getString("CGY");
HB=rs.getString("HB");
SHHDH=rs.getString("SHHDH");
GYSH=rs.getString("GYSH");
CGDH=rs.getString("CGDH");
MCH=rs.getString("MCH");
HSHDJ=rs.getString("HSHDJ");
PH=rs.getString("PH");
CLDH=rs.getString("CLDH");
GG=rs.getString("GG");
YS=rs.getString("YS");
DJ=rs.getString("DJ");
SHL=rs.getString("SHL");
THJE=rs.getString("THJE");
THSHL=rs.getString("THSHL");
DW=rs.getString("DW");
CK=rs.getString("CK");
SHHSHL=rs.getString("SHHSHL");
YTSHL=rs.getString("YTSHL");
BZH=rs.getString("BZH");
			   %>
               <tr>
				  <td><%=THDH%></td>
                  <td><%=MCH%></td>
				  <td><%=BM%></td>
				  <td><%=CGY%></td>
				  <td><%=GYSH%></td>
                  <td style="width:150px;">
				  <a href="returnDetail.jsp?THDH=<%=THDH%>&&THRQ=<%=THRQ%>&&BM=<%=BM%>&&CGY=<%=CGY%>&&HB=<%=HB%>&&SHHDH=<%=SHHDH%>&&GYSH=<%=GYSH%>&&CGDH=<%=CGDH%>&&MCH=<%=MCH%>&&HSHDJ=<%=HSHDJ%>&&PH=<%=PH%>&&CLDH=<%=CLDH%>&&GG=<%=GG%>&&YS=<%=YS%>&&DJ=<%=DJ%>&&SHL=<%=SHL%>&&THJE=<%=THJE%>&&THSHL=<%=THSHL%>&&DW=<%=DW%>&&CK=<%=CK%>&&SHHSHL=<%=SHHSHL%>&&YTSHL=<%=YTSHL%>&&BZH=<%=BZH%>">查看</a>&nbsp;
				  <a href="returnalter.jsp?THDH=<%=THDH%>&&THRQ=<%=THRQ%>&&BM=<%=BM%>&&CGY=<%=CGY%>&&HB=<%=HB%>&&SHHDH=<%=SHHDH%>&&GYSH=<%=GYSH%>&&CGDH=<%=CGDH%>&&MCH=<%=MCH%>&&HSHDJ=<%=HSHDJ%>&&PH=<%=PH%>&&CLDH=<%=CLDH%>&&GG=<%=GG%>&&YS=<%=YS%>&&DJ=<%=DJ%>&&SHL=<%=SHL%>&&THJE=<%=THJE%>&&THSHL=<%=THSHL%>&&DW=<%=DW%>&&CK=<%=CK%>&&SHHSHL=<%=SHHSHL%>&&YTSHL=<%=YTSHL%>&&BZH=<%=BZH%>">编辑</a>&nbsp
				  <a href="returndel.jsp?THDH=<%=THDH%>">删除</a>
				  </td>
			    </tr>
				<%
				rs.next(); 
				i++; 
			     }
                 %>
				   <tr style=" background-color:#eff5fc;"><td colspan="6">
				    共<%=intRowCount%>条记录&nbsp;&nbsp;&nbsp;&nbsp;每页显示<%=intPageSize%>条记录&nbsp;&nbsp;&nbsp;&nbsp;当前第<%=intPage%>/<%=intPageCount%>页
				    &nbsp;&nbsp;&nbsp;&nbsp;
                    <%if(intPage<=1){%>首页<%}else{%>
                    <a href="returncx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=1">首页</a>
					<%}%>
                    <%if(intPage>1){%>
                    <a href="returncx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage-1%>">上一页</a> 
                    <%}else{%>
                    上一页 
                    <%
	                }%>
                    <%if(intPage<intPageCount){%>
                    <a href="returncx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage+1%>">下一页</a> 
                    <%}else{%>
                    下一页 
                    <%
	                }%>
				    <%if(intPageCount<=1||intPage==intPageCount){%>
				    尾页
				    <%}else{%>
                    &nbsp;<a href="returncx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPageCount%>">尾页</a>&nbsp;
					<%}%>		
					</td></tr>
					<%
					 }
					rs.close();//关闭数据库连接
                    stmt.close(); 
                    conn.close(); 
					%>
					<!--表格结束显示-->
</table>
</div>
<div class="pagination ue-clear"></div>
</body>
</html>
