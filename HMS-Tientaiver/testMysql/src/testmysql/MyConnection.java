/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testmysql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author phantientai
 */
public class MyConnection {
        
    public static Connection getConnection() {
        Connection conn = null;
        
        try {
            // The newInstance() call is a work around for some
            // broken Java implementations
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
        } catch (Exception ex) {
            // handle the error
            System.out.println(ex);
        }
        
        try {
            conn
                    = DriverManager.getConnection("jdbc:mysql://localhost/assignment?"
                            + "user=phantientai&password=phantientai&serverTimezone=UTC");
            

            
        } catch (SQLException ex) {
            // handle any errors
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }
        
        return conn;
    }
    
    public static void main(String[] args) {
        MyConnection.getConnection();
    }
    
}
