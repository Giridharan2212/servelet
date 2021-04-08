<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<h1>Hello</h1>    
    
<% String username = request.getParameter("username");
 try {
	            Class.forName("org.mariadb.jdbc.Driver");
	// loads driver
	            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/login", "root", "root"); // gets a new connection
	     		Statement st= con.createStatement();
	            int i=st.executeUpdate("delete from register where username="+ username +";");
				out.println("data deleted successfully");
				response.sendRedirect("Home.jsp");
 }
 catch(Exception e)
 {
	 System.out.print(e);
	 e.printStackTrace();
 }
%>	            