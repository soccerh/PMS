<%@page contentType="text/html;charset=gb2312"%>
<%@page import="java.sql.*"%> 
<%@page import="java.util.*"%>
<%@ include file="../inc/connerp.jsp"%>
<%@ include file="../inc/funs.jsp"%>
<%
String BMBH="";//部门编号
String BMMCH="";//部门名称
String ZHGR="";//主管人
String LXDH="";//联系电话
String BMCHZH="";//部门传真
String ZHGBH="";//主管编号
String DYRSH="";//定员人数
String XYRSH="";//现有人数
BMBH=getStr(request.getParameter("BMBH"));
BMMCH=getStr(request.getParameter("BMMCH"));
ZHGR=getStr(request.getParameter("ZHGR"));
LXDH=getStr(request.getParameter("LXDH"));
BMCHZH=getStr(request.getParameter("BMCHZH"));
ZHGBH=getStr(request.getParameter("ZHGBH"));
DYRSH=getStr(request.getParameter("DYRSH"));
XYRSH=getStr(request.getParameter("XYRSH"));
String sql="";
sql="insert into BMXXB(BMBH,BMMCH,ZHGR,LXDH,ZHGBH,DYRSH,BMCHZH,XYRSH)values('"+BMBH+"','"+BMMCH+"','"+ZHGR+"','"+LXDH+"','"+ZHGBH+"','"+DYRSH+"','"+BMCHZH+"','"+XYRSH+"')";
//out.print(sql);
stmt.executeUpdate(sql);
stmt.close(); 
conn.close();
out.println("<script>window.location.href=\"systembmglcx.jsp\";</script>");
%>
