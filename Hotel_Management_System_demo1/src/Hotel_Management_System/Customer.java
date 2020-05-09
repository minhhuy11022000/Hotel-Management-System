/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class Customer {
    ConnectDb conn = new ConnectDb();
    //create method to register an account
    public boolean registerAcc(String fname, String lname, String gender,
            String phone, String username, String password){
        PreparedStatement pst;
        ResultSet rs;
        String regisQuery = "INSERT INTO `CustomerInfo`(`FirstName`,`LastName`,`Gender`,`Phone`,`Username`,`Password`) VALUES (?,?,?,?,?,?)";
        try {
            pst = conn.connectDb().prepareStatement(regisQuery);
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, gender);
            pst.setString(4, phone);
            pst.setString(5, username);
            pst.setString(6, password);
            
            if(pst.executeUpdate() > 0){
                return true;
            }else return false;
        } catch (SQLException ex) {
            Logger.getLogger(Customer.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    //create method to edit customer
    
    //create method to remove customer
}
