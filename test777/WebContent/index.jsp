
<html>
   <head><title>Logger.info</title></head>
   
   <body>
   hello
   <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

   
<%

String connectionUrl =
"jdbc:sqlserver://localhost:1433;"
+ "database=Sudharsan;"
+ "user=susa;"
+ "password=susa;"
+ "encrypt=false;"
+ "trustServerCertificate=false;"
+ "loginTimeout=30;";
ResultSet resultSet = null;
System.out.println(connectionUrl);
Connection connection = DriverManager.getConnection(connectionUrl);
        Statement statement = connection.createStatement();


    // Create and execute a SELECT SQL statement.
    String selectSql = "select EMPLOYEE_ID from EMPLOYEES;";
    resultSet = statement.executeQuery(selectSql);
    System.out.println(selectSql);
    while (resultSet.next()) {
    	String attriute =resultSet.getString("EMPLOYEE_ID");
    	%>
    <div id=susa>
    <input type="button" value="<%=attriute%>" id="<%=attriute%>" onclick=alert("susa")>
    </div>
    <% 
    }
%>
   </body>
</html>