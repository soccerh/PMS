<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%

String XM="";//姓名
String XB="";//性别
String ZHW="";//职务
String level="";//等级
String BM="";//部门
String DH="";//电话
String YHM="";//用户名
String passwd1="";//密码
String passwd2="";//密码
String email="";//邮箱
String ZHZH="";//住址

XM=getStr(request.getParameter("XM"));
XB=getStr(request.getParameter("XB"));
ZHW=getStr(request.getParameter("ZHW"));
BM=getStr(request.getParameter("BM"));
DH=getStr(request.getParameter("DH"));
YHM=getStr(request.getParameter("YHM"));
passwd1=getStr(request.getParameter("passwd1"));
passwd2=getStr(request.getParameter("passwd2"));
email=getStr(request.getParameter("email"));
ZHZH=getStr(request.getParameter("ZHZH"));
if(passwd1.equals(passwd2)){
String sql1="";
String sql2="";
sql1="select YHM from RYMD where  YHM='"+YHM+"' order by YHBH asc";
ResultSet rs=stmt.executeQuery(sql1);//查询结果对象
if(rs.next()){ out.println("用户名已被占用");
	   response.setHeader("refresh", "2;url=register.jsp");
	}
	else{
sql2="insert into RYMD(XM,XB,ZHW,BM,DH,YHM,passwd,email,level,ZHZH)values('"+XM+"','"+XB+"','"+ZHW+"','"+BM+"','"+DH+"','"+YHM+"','"+passwd1+"','"+email+"','"+level+"','"+ZHZH+"')";
out.println("注册成功，等待管理员通过或方可登录");
	   response.setHeader("refresh", "1;url=login.jsp");
//out.print(sql2);
stmt.executeUpdate(sql2);}}
else{
	out.println("密码不一致");
	   response.setHeader("refresh", "1;url=register.jsp");
}
stmt.close(); 
conn.close();
%>
