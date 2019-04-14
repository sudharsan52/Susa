
<html>
   <head><title>TxTNxT</title></head>
   
   <body>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String connectionUrl = "jdbc:sqlserver://localhost:1433;";
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
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
String sql ="select EMPLOYEE_ID from EMPLOYEES";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	String attriute =resultSet.getString("EMPLOYEE_ID");
	%>
<div id=susa>
<input type="button" value="<%=attriute%>" id="<%=attriute%>" onclick=alert("susa")>
</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>   
   </body>
</html>