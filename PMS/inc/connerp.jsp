<%
Class.forName("net.sourceforge.jtds.jdbc.Driver").newInstance(); 
String url="jdbc:jtds:sqlserver://127.0.0.1:1433/erp;USER=sa;PASSWORD=h13192868266"; 
Connection conn= DriverManager.getConnection(url); 
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY); 
%>