<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String YHBH="";//用户编号
String XM="";//姓名
String XB="";//性别
String ZHW="";//职务
String level="";//等级
String BM="";//部门
String DH="";//电话
String YHM="";//用户名
String passwd="";//密码
String email="";//邮箱
String ZHZH="";//住址
String juese="";//用户角色
String num="";
String x="";
String y="";
String z="";
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
if(request.getParameter("YHM")!=null)
	{x=request.getParameter("YHM");
	x=new String(x.getBytes("ISO-8859-1"));	
	}
if(request.getParameter("passwd")!=null)
{y=request.getParameter("passwd");
y=new String(y.getBytes("ISO-8859-1"));
}
if(request.getParameter("level")!=null)
{z=request.getParameter("level");


}
YHM=getStr(request.getParameter("YHM"));
passwd=getStr(request.getParameter("passwd"));
juese=getStr(request.getParameter("level"));
String sql="";
%>
<%
    
	sql="select YHBH,XM,XB,ZHW,DH,BM,YHM,passwd,email,level,ZHZH from RYMD where level='"+juese+"' and YHM='"+YHM+"' and passwd='"+passwd+"'  order by YHBH asc";
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
          
               YHBH=rs.getString("YHBH");
               XB=rs.getString("XB");			 
               BM=rs.getString("BM");
			   ZHW=rs.getString("ZHW");
			   DH=rs.getString("DH");
			   XM=rs.getString("XM");
			   level=rs.getString("level");
			   YHM=rs.getString("YHM");
			   passwd=rs.getString("passwd");
			   email=rs.getString("email");
			   ZHZH=rs.getString("ZHZH");
   session.setAttribute("m",level);
		   response.sendRedirect("index.jsp");}
		
					
					 else
	{ out.println("输入有误!");
	   response.setHeader("refresh", "1;url=login.jsp");
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
