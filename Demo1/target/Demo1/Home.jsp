<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<style>
h1{
  text-align: center;
}
</style>
<meta charset="ISO-8859-1">
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
</head>
<body >

<%

try {
/* Create string of connection url within specified format with machine
name, port number and database name. Here machine name id localhost and 
database name is student. */
String connectionURL = "jdbc:mariadb://localhost:3306/login";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("org.mariadb.jdbc.Driver");
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "root");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from register ;";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<tr>
    <th>Username</th>
    <th>password</th> 
    <th>Age</th>
    <th>gender</th>
</tr>
<%
while (rs.next()) {
%>

<TR>
<TD><%=rs.getString(1)%></TD>

<TD ><%=rs.getString(2)%></TD>
<TD><%=rs.getInt(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><a href = "delete.jsp?username=<%=rs.getString(1)%>">delete</a></TD>
</TR>
<% }%>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>
<TR>
<TD><FORM ACTION="login.jsp" method="get" >

<button type="submit">back</button></TD>

</TR>
</TABLE>
</font>
</body>
</html>