<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%
	String status= request.getParameter("msg");
if(status==null)
{
	status="";
}
%>
<h1>Register Here</h1>
<p style="color:red"> <%=status %></P>
<form action="abcd">
<label for="Uname">Username:</label>
<input type="text" name= "Uname" id="Uname"></br> 
<label for="Upass">Password:</label>
<input type="password" name= "Upass" id="Upass"></br> 
<label for="Uage">age:</label>
<input type="number" name= "Uage" id="Uage"></br>
<label for="G">Select Gender:</label>
<select name="G" id="G">
<option value="male">Male</option>
<option value="female">Female</option>
</select>
<br><br>
<a href="login.jsp">
<button type="submit" Value="submit">Submit</button>
<button type="button" Value="login">Login</button>
</a>
</form>
</body>
</html>