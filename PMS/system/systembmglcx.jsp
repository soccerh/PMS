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
    <title>部门</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
<%
String BMBH="";//部门编号
String BMMCH="";//部门名称
String ZHGR="";//主管人
String LXDH="";//联系电话
String BMCHZH="";//部门传真
String ZHGBH="";//主管编号
String DYRSH="";//定员人数
String XYRSH="";//现有人数
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
<div class="title"><h2>系统设置管理>>部门</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="systembmglcx.jsp">
		<div class="l_left"><label>部门名称：</label><input type="text" name="searchContent1"></div>
        <div class="l_left"><label>主管人：</label><input type="text" name="searchContent2"></div>
        <button class="tabe_btn" onclick="javascript:formcx.submit();">查询</button>
         <form>
        <div class="clear"></div>
    </div>
</div>
<div class="table-operate ue-clear">
    <a href="systembmgladd.jsp" class="add">添加</a>
	
	<!--<a href="stockadd2.jsp" class="add">增加</a>-->
 </div>
<div>
    <table>
    <div style="height:3px;"></div>
	<tr style=" background-color:#eff5fc;">
		    <td>部门编号</td>
			<td>部门名称</td>
			<td>主管人</td>
			<td>联系电话</td>
			<td>部门传真</td>
			<td>操作</td>
	</tr>
    <%
    sql="select BMBH,BMMCH,ZHGR,LXDH,BMCHZH,ZHGBH,DYRSH,XYRSH from BMXXB where BMMCH like '%"+searchContent1+"%' and ZHGR like '%"+searchContent2+"%' order by BMBH asc";
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
               BMBH=rs.getString("BMBH");
               ZHGR=rs.getString("ZHGR");
			   LXDH=rs.getString("LXDH");			  
			   BMMCH=rs.getString("BMMCH");
			   BMCHZH=rs.getString("BMCHZH");
			   ZHGBH=rs.getString("ZHGBH");
			   DYRSH=rs.getString("DYRSH");
			   XYRSH=rs.getString("XYRSH");
			   %>
               <tr>
				  <td><%=BMBH%></td>
                  <td><%=BMMCH%></td>
				  <td><%=ZHGR%></td>
				  <td><%=LXDH%></td>
				  <td><%=BMCHZH%></td>
                  <td style="width:150px;">
				  <a href="systembmglDetail.jsp?BMBH=<%=BMBH%>&&ZHGR=<%=ZHGR%>&&LXDH=<%=LXDH%>&&BMMCH=<%=BMMCH%>&&BMCHZH=<%=BMCHZH%>&&ZHGBH=<%=ZHGBH%>&&DYRSH=<%=DYRSH%>&&XYRSH=<%=XYRSH%>">查看</a>&nbsp;
				  <a href="systembmglalter.jsp?BMBH=<%=BMBH%>&&ZHGR=<%=ZHGR%>&&LXDH=<%=LXDH%>&&BMMCH=<%=BMMCH%>&&BMCHZH=<%=BMCHZH%>&&ZHGBH=<%=ZHGBH%>&&DYRSH=<%=DYRSH%>&&XYRSH=<%=XYRSH%>">编辑</a>&nbsp
				  <a href="systembmgldel.jsp?BMBH=<%=BMBH%>">删除</a>
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
                    <a href="systembmglcx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=1">首页</a>
					<%}%>
                    <%if(intPage>1){%>
                    <a href="systembmglcx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage-1%>">上一页</a> 
                    <%}else{%>
                    上一页 
                    <%
	                }%>
                    <%if(intPage<intPageCount){%>
                    <a href="systembmglcx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage+1%>">下一页</a> 
                    <%}else{%>
                    下一页 
                    <%
	                }%>
				    <%if(intPageCount<=1||intPage==intPageCount){%>
				    尾页
				    <%}else{%>
                    &nbsp;<a href="systembmglcx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPageCount%>">尾页</a>&nbsp;
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
