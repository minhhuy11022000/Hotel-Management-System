/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testmysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author phantientai
 */
public class TestMysql {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        Connection conn = null;

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost/assignment?"
                            + "user=phantientai&password=phantientai&serverTimezone=UTC");
            // Do something with the Connection

        } catch (SQLException ex) {
            // handle any errors
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        }

        Statement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery("Select * from customer");
            
            while (rs.next()) {
                int id = rs.getInt("ID");
                String firstName = rs.getString("FirstName");
                String lastName = rs.getString("LastName");
                String gender = rs.getString("Gender");
                String phone = rs.getString("Phone");
                String userName = rs.getString("UserName");
                String passWord = rs.getString("Password");
                
                System.out.printf("%-10d%-10s%-15s%-10s%-15s%-15s%-15s\n", id, firstName, lastName, 
                        gender, phone, userName, passWord);
            }
        } catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: " + ex.getErrorCode());
        } finally {
            if (conn != null) conn.close();
        }
    }

}
