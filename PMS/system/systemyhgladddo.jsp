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
String passwd="";//密码
String email="";//邮箱
String ZHZH="";//住址

XM=getStr(request.getParameter("XM"));
XB=getStr(request.getParameter("XB"));
ZHW=getStr(request.getParameter("ZHW"));
BM=getStr(request.getParameter("BM"));
level=getStr(request.getParameter("level"));
DH=getStr(request.getParameter("DH"));
YHM=getStr(request.getParameter("YHM"));
passwd=getStr(request.getParameter("passwd"));
email=getStr(request.getParameter("email"));
ZHZH=getStr(request.getParameter("ZHZH"));
String sql="";
sql="insert into RYMD(XM,XB,ZHW,BM,DH,YHM,passwd,email,level,ZHZH)values('"+XM+"','"+XB+"','"+ZHW+"','"+BM+"','"+DH+"','"+YHM+"','"+passwd+"','"+email+"','"+level+"','"+ZHZH+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"systemyhglcx.jsp\";</script>");
%>
