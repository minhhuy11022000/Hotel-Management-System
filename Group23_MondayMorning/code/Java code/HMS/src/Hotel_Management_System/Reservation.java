/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Admin
 */
public class Reservation {
    ConnectDb conn = new ConnectDb();
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    //create method to show  table
    public void showTable(JTable table){
        
        String selectQuery = "SELECT * FROM Reservation";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[6];
                row[0] = rs.getInt(1);
                row[1] = rs.getInt(2);
                row[2] = rs.getInt(3); 
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                
                tableModel.addRow(row);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ManageCustomerFrame.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
                    try{
                        pst.close();
                    }catch(Exception e){
                        JOptionPane.showMessageDialog(null, e);
                    }
                }
    }
}
