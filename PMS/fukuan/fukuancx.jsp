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
    <title>付款账</title>
</head>
<body><%session.setAttribute("m",session.getAttribute("m"));if(session.getAttribute("m")==null){response.sendRedirect("../login.jsp");}%>
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
<div class="title"><h2>付款账管理>>付款账</h2></div>
<div class="query">
    <div class="tabe_bot">
        <form name="formcx" mehtod="POST" ACTION="fukuancx.jsp">
		<div class="l_left"><label>付款类型：</label><input type="text" name="searchContent1"></div>
        <div class="l_left"><label>供应商：</label><input type="text" name="searchContent2"></div>
        <button class="tabe_btn" onclick="javascript:formcx.submit();">查询</button>
         <form>
        <div class="clear"></div>
    </div>
</div>
<div class="table-operate ue-clear">
    <a href="fukuanadd.jsp" class="add">添加</a>
	
	<!--<a href="stockadd2.jsp" class="add">增加</a>-->
 </div>
<div>
    <table>
    <div style="height:3px;"></div>
	<tr style=" background-color:#eff5fc;">
		    <td>付款单号</td>
			<td>应付金额</td>
			<td>付款日期</td>
			<td>修改人</td>
			<td>供应商</td>
			<td>操作</td>
	</tr>
    <%
    sql="select FKDH,FKRQ,ZHBR,PZHR,PZH,XGR,GYSH,XGRQ,SHPSHJ,FKLX,FKJE,HB,FKFSH,HL,FKLY,PH,YUFJE,YFJE,QKJE,DJLX,CGDH,YFDH,SHQDH,YIFJE,BCFKJE,BZH from FKD where FKLX like '%"+searchContent1+"%' and GYSH like '%"+searchContent2+"%' order by FKDH asc";
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
FKDH=rs.getString("FKDH");
FKRQ=rs.getString("FKRQ");
ZHBR=rs.getString("ZHBR");
PZHR=rs.getString("PZHR");
PZH=rs.getString("PZH");
XGR=rs.getString("XGR");
GYSH=rs.getString("GYSH");
XGRQ=rs.getString("XGRQ");
SHPSHJ=rs.getString("SHPSHJ");
FKLX=rs.getString("FKLX");
FKJE=rs.getString("FKJE");
HB=rs.getString("HB");
FKFSH=rs.getString("FKFSH");
HL=rs.getString("HL");
FKLY=rs.getString("FKLY");
PH=rs.getString("PH");
YUFJE=rs.getString("YUFJE");
YFJE=rs.getString("YFJE");
QKJE=rs.getString("QKJE");
DJLX=rs.getString("DJLX");
YFDH=rs.getString("YFDH");
SHQDH=rs.getString("SHQDH");
CGDH=rs.getString("CGDH");
YIFJE=rs.getString("YIFJE");
BCFKJE=rs.getString("BCFKJE");
BZH=rs.getString("BZH");
			   %>
               <tr>
				  <td><%=FKDH%></td>
                  <td><%=YFJE%></td>
				  <td><%=FKRQ%></td>
				  <td><%=XGR%></td>
				  <td><%=GYSH%></td>
                  <td style="width:150px;">
				  <a href="fukuanDetail.jsp?FKDH=<%=FKDH%>&&FKRQ=<%=FKRQ%>&&ZHBR=<%=ZHBR%>&&PZHR=<%=PZHR%>&&PZH=<%=PZH%>&&XGR=<%=XGR%>&&GYSH=<%=GYSH%>&&XGRQ=<%=XGRQ%>&&SHPSHJ=<%=SHPSHJ%>&&FKLX=<%=FKLX%>&&FKJE=<%=FKJE%>&&HB=<%=HB%>&&FKFSH=<%=FKFSH%>&&HL=<%=HL%>&&FKLY=<%=FKLY%>&&PH=<%=PH%>&&YUFJE=<%=YUFJE%>&&YFJE=<%=YFJE%>&&QKJE=<%=QKJE%>&&DJLX=<%=DJLX%>&&YFDH=<%=YFDH%>&&SHQDH=<%=SHQDH%>&&CGDH=<%=CGDH%>&&YIFJE=<%=YIFJE%>&&BCFKJE=<%=BCFKJE%>&&BZH=<%=BZH%>">查看</a>&nbsp;
				  <a href="fukuanalter.jsp?FKDH=<%=FKDH%>&&FKRQ=<%=FKRQ%>&&ZHBR=<%=ZHBR%>&&PZHR=<%=PZHR%>&&PZH=<%=PZH%>&&XGR=<%=XGR%>&&GYSH=<%=GYSH%>&&XGRQ=<%=XGRQ%>&&SHPSHJ=<%=SHPSHJ%>&&FKLX=<%=FKLX%>&&FKJE=<%=FKJE%>&&HB=<%=HB%>&&FKFSH=<%=FKFSH%>&&HL=<%=HL%>&&FKLY=<%=FKLY%>&&PH=<%=PH%>&&YUFJE=<%=YUFJE%>&&YFJE=<%=YFJE%>&&QKJE=<%=QKJE%>&&DJLX=<%=DJLX%>&&YFDH=<%=YFDH%>&&SHQDH=<%=SHQDH%>&&CGDH=<%=CGDH%>&&YIFJE=<%=YIFJE%>&&BCFKJE=<%=BCFKJE%>&&BZH=<%=BZH%>">编辑</a>&nbsp
				  <a href="fukuandel.jsp?FKDH=<%=FKDH%>">删除</a>
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
                    <a href="fukuancx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=1">首页</a>
					<%}%>
                    <%if(intPage>1){%>
                    <a href="fukuancx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage-1%>">上一页</a> 
                    <%}else{%>
                    上一页 
                    <%
	                }%>
                    <%if(intPage<intPageCount){%>
                    <a href="fukuancx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPage+1%>">下一页</a> 
                    <%}else{%>
                    下一页 
                    <%
	                }%>
				    <%if(intPageCount<=1||intPage==intPageCount){%>
				    尾页
				    <%}else{%>
                    &nbsp;<a href="fukuancx.jsp?searchContent1=<%=searchContent1%>&&searchContent2=<%=searchContent2%>&&pages=<%=intPageCount%>">尾页</a>&nbsp;
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
