package loginjava;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/abcd")
public class Login extends HttpServlet {
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nn=request.getParameter("Uname");
		String pa=request.getParameter("Upass");
		String a=request.getParameter("Uage");
		String g=request.getParameter("G");
		 try {
	            Class.forName("org.mariadb.jdbc.Driver");
	// loads driver
	            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/login", "root", "root"); // gets a new connection
	            PreparedStatement ps1 = con.prepareStatement("select username from register where username=?");
	            ps1.setString(1, nn);
	            ResultSet rs = ps1.executeQuery();
	            response.setContentType("text/html");
	            while (rs.next()) {
	                response.sendRedirect("Register.jsp?msg=username already Exist");
	                return;
	            }
	            String sql = "insert into register(username,password,age,gender) values(?,?,?,?);";
	            PreparedStatement ps = con.prepareStatement(sql);
	            ps.setString(1,nn);
	            ps.setString(2,pa);
	            ps.setString(3,a);
	            ps.setString(4,g);
	            
	            ps.executeUpdate();
	            System.out.println("sucessfully Inserted");
	            ps.close();
	            con.close();
	            response.sendRedirect("login.jsp");

		 }catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
		 }
	            
	            

	}

}
