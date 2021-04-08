package loginjava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class register {
    public static void main(String[] args)throws SQLException, ClassNotFoundException {
        
            //STEP 2: Register JDBC driver
            Class.forName("org.mariadb.jdbc.Driver");

            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            Connection con=DriverManager.getConnection(
                    "jdbc:mariadb://localhost:3306/new", "root", "root");
            System.out.println("Connected database successfully...");

            String sql = "insert into student(Name,age,id,year) values(?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,"ram");
            ps.setString(2,"23");
            ps.setString(3,"3");
            ps.setString(4,"1");
            
            ps.executeUpdate();
            System.out.println("sucessfully Inserted");
            ps.close();
            con.close();
        	}

    }        
        
            

           
