<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
<title>LOGIN</title>
</head>
<body>
<%
	String status= request.getParameter("msg");
if(status==null)
{
	status="";
}
%>
 <h1>Login page</h1>
<p style="color:red"> <%=status %></P>
<form action="LoginController" method="post">
    Enter username :<input type="text" name="username"> <br>
    Enter password :<input type="password" name="password"><br>
    <input type="submit" value="Login">
    <a href="Register.jsp">
    <button type="button"> New Member</button>
    </a>
</form>
</body>
</html>