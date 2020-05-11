/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Admin
 */
public class Customer {
    ConnectDb conn = new ConnectDb();
    PreparedStatement pst;
    ResultSet rs;
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
    
    //create method to show Customer info to the table
    public void showCustomerInfoTable(JTable table){
        String selectQuery = "SELECT * FROM `CustomerInfo`";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[5];
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                       
                tableModel.addRow(row);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ManageCustomerFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
