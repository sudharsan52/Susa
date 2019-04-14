
<html>
   <head><title>Logger.info</title></head>
   
   <body>
   hello
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

   
<%

String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

String connectionUrl = "jdbc:sqlserver://localhost:1433;";
//String connectionUrl = "jdbc:mysql:/	/localhost:3306/";
String dbName = "Sudharsan";
String userId = "susa";
String password = "susa";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
 <% System.out.println( connectionUrl ); %>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>TABLE_NAME</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="select TABLE_NAME from INFORMATION_SCHEMA.TABLES";
%>
<% System.out.println(sql); %>
<%
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="#DEB887">
 
<td><%=resultSet.getString("TABLE_NAME") %></td>
<td><%=resultSet.getString("TABLE_NAME")%></td>
<input type="button" value=abc>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

   
   </body>
</html>