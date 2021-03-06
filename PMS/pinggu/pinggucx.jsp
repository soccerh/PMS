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
    <title>供应商价格</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<%
String GYSHDH="";//供应商代号
String GYSHQCH="";//供应商全称
String YUFKJE="";//预付款金额
String YIFKJ="";//应付款金额
String QKJE="";//欠款金额
String JYPF="";//交易评分
String JHPF="";//交货评分
String PZHPF="";//品质评分
String FKFSH="";//付款方式
String JYHB="";//交易货币
String FKTJ="";//付款条件
String JGTJ="";//价格条件
String ZPGJ="";//总评等级
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
<div class="title"><h2>供应商管理>>供应商</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="pinggucx.jsp">
		<div class="l_left"><label>供应商全称：</label><input type="text" name="searchContent1"></div>
        <div class="l_left"><label>总评等级：</label><input type="text" name="searchContent2"></div>
        <button class="tabe_btn" onclick="javascript:formcx.submit();">查询</button>
         <form>
        <div class="clear"></div>
    </div>
</div>
<div class="table-operate ue-clear">
    <a href="pingguadd.jsp" class="add">添加</a>
	
	<!--<a href="stockadd2.jsp" class="add">增加</a>-->
 </div>
<div>
    <table>
    <div style="height:3px;"></div>
	<tr style=" background-color:#eff5fc;">
		    <td>供应商全称</td>
			<td>总评等级</td>
			<td>交易评分</td>
			<td>交货评分</td>			
			<td>品质评分</td>
			<td>操作</td>
	</tr>
    <%
    sql="select GYSHDH,GYSHQCH,YUFKJE,YIFKJ,QKJE,JYPF,JHPF,PZHPF,FKFSH,JYHB,FKTJ,JGTJ,ZPGJ from GYSHPG where GYSHQCH like '%"+searchContent1+"%' and ZPGJ like '%"+searchContent2+"%' order by GYSHDH asc";
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
GYSHDH=rs.getString("GYSHDH");
GYSHQCH=rs.getString("GYSHQCH");
YUFKJE=rs.getString("YUFKJE");
YIFKJ=rs.getString("YIFKJ");
QKJE=rs.getString("QKJE");
JYPF=rs.getString("JYPF");
JHPF=rs.getString("JHPF");
PZHPF=rs.getString("PZHPF");
FKFSH=rs.getString("FKFSH");
JYHB=rs.getString("JYHB");
FKTJ=rs.getString("FKTJ");
JGTJ=rs.getString("JGTJ");
ZPGJ=rs.getString("ZPGJ");
			   %>
               <tr>
				  <td><%=GYSHQCH%></td>
                  <td><%=ZPGJ%></td>
				  <td><%=JYPF%></td>
				  <td><%=JHPF%></td>
				  <td><%=PZHPF%></td>
                  <td style="width:150px;">
				  <a href="pingguDetail.jsp?GYSHDH=<%=GYSHDH%>&&GYSHQCH=<%=GYSHQCH%>&&YUFKJE=<%=YUFKJE%>&&YIFKJ=<%=YIFKJ%>&&QKJE=<%=QKJE%>&&JYPF=<%=JYPF%>&&JHPF=<%=JHPF%>&&PZHPF=<%=PZHPF%>&&FKFSH=<%=FKFSH%>&&JYHB=<%=JYHB%>&&FKTJ=<%=FKTJ%>&&JGTJ=<%=JGTJ%>&&ZPGJ=<%=ZPGJ%>">查看</a>&nbsp;
				  <a href="pinggualter.jsp?GYSHDH=<%=GYSHDH%>&&GYSHQCH=<%=GYSHQCH%>&&YUFKJE=<%=YUFKJE%>&&YIFKJ=<%=YIFKJ%>&&QKJE=<%=QKJE%>&&JYPF=<%=JYPF%>&&JHPF=<%=JHPF%>&&PZHPF=<%=PZHPF%>&&FKFSH=<%=FKFSH%>&&JYHB=<%=JYHB%>&&FKTJ=<%=FKTJ%>&&JGTJ=<%=JGTJ%>&&ZPGJ=<%=ZPGJ%>"">编辑</a>&nbsp
				  <a href="pinggudel.jsp?GYSHDH=<%=GYSHDH%>">删除</a>
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
                    <a href="pinggucx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=1">首页</a>
					<%}%>
                    <%if(intPage>1){%>
                    <a href="pinggucx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage-1%>">上一页</a> 
                    <%}else{%>
                    上一页 
                    <%
	                }%>
                    <%if(intPage<intPageCount){%>
                    <a href="pinggucx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage+1%>">下一页</a> 
                    <%}else{%>
                    下一页 
                    <%
	                }%>
				    <%if(intPageCount<=1||intPage==intPageCount){%>
				    尾页
				    <%}else{%>
                    &nbsp;<a href="pinggucx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPageCount%>">尾页</a>&nbsp;
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
