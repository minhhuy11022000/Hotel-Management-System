/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Admin
 */
public class Room {
    ConnectDb conn = new ConnectDb();
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    //create method to show  table
    public void showTable(JTable table){
        
        String selectQuery = "SELECT * FROM Room";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[4];
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3); 
                row[3] = rs.getString(4);
                
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
    
    //create method to show type in the button
    public void showTypeTable(JTable table){
        
        String selectQuery = "SELECT * FROM Type";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[3];
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3); 
                
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
    
    //create method to set a room to reserved or not when add or delete a reservation
    public void setRoomToReserved(String number, String isReserved){
        String query = "UPDATE Room SET Reserved=? WHERE Room=?";
        
        try {
            pst = conn.connectDb().prepareStatement(query);
            
            pst.setString(1, isReserved);
            pst.setString(2, number);
            
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Room.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            try{
                pst.close();
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, e);
            }
        }
    }
    
    
    //create method to check the room isReserved or not
     public String isRoomReserved(String number){
        String query = "SELECT Reserved FROM Room WHERE Room=?";
        
        try {
            pst = conn.connectDb().prepareStatement(query);
   
            pst.setString(1, number);
            
            rs = pst.executeQuery();
            
            if(rs.next()){
                return rs.getString(1);
            }
            else return "";
        } catch (SQLException ex) {
            Logger.getLogger(Room.class.getName()).log(Level.SEVERE, null, ex);
            return "";
        }finally{
            try{
                pst.close();
                rs.close();
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, e);
            }
        }
    }
     //create method to show room that is not reserved depend on type to the customer
     public void showNotReservedTable(JTable table,int type){
        
        String selectQuery = "SELECT Room FROM Room WHERE Reserved='No' AND TypeId=?";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            pst.setInt(1, type);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[1];
                row[0] = rs.getInt(1);
    
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
     
    public void showMyReservation(JTable table, String id){
        String selectQuery = "SELECT RoomNo,Date_in,Date_out FROM Reservation WHERE CustomerId=?";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            pst.setString(1, id);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[3];
                row[0] = rs.getString(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
    
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
