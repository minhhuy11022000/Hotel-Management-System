/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import javax.swing.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author phantientai
 */
public class Employee {
    ConnectDb conn = new ConnectDb();
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    public void showEmployeesInfo(JTable table) {
        try {
            Statement stm = conn.connectDb().createStatement();
            ResultSet rs = stm.executeQuery("select id, first_name, last_name, "
                    + "gender, phone_number, mail, address, position_id "
                    + "from employee");
  
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            Object[] row = new Object[8];

            while (rs.next()) {
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                row[5] = rs.getString(6);
                row[6] = rs.getString(7);
                row[7] = rs.getString(8);

                tableModel.addRow(row);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

    }
    
    
    public void showEmployeesInfo(JTable table, String valueToSearch) {
        try {

            PreparedStatement ps = conn.connectDb().prepareStatement("select id, first_name, last_name, "
                    + "gender, phone_number, mail, address, position_ID from employee where "
                    + "concat(first_name,last_name,Gender,Phone_number) like ?");
            ps.setString(1, "%" + valueToSearch + "%" ); 
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            Object[] row = new Object[8];

            while (rs.next()) {
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                row[5] = rs.getString(6);
                row[6] = rs.getString(7);
                row[7] = rs.getString(8);

                tableModel.addRow(row);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public void showAccountsInfo(JTable table, String valueToSearch) {
        try {
            PreparedStatement ps = conn.connectDb().prepareStatement("select id, first_name, last_name, account, password"
                    + " from employee "
                    + "where concat(first_name,last_name) like ?");
            ps.setString(1, "%" + valueToSearch + "%" ); 
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();

            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            tableModel.setRowCount(0);
            Object[] row = new Object[5];

            while (rs.next()) {
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                
                tableModel.addRow(row);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public void showAccountsInfo(JTable table) {
        try {
            Statement stm = conn.connectDb().createStatement();
            ResultSet rs = stm.executeQuery("select id, first_name, last_name, "
                    + "account, password "
                    + "from employee");
  
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            tableModel.setRowCount(0);
            Object[] row = new Object[5];

            while (rs.next()) {
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                
                tableModel.addRow(row);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

    } 
    
    
    
    public void showPositionTable(JTable table){
        
        String selectQuery = "SELECT ID, Position FROM position";
        try {
            pst = conn.connectDb().prepareStatement(selectQuery);
            
            rs = pst.executeQuery();
            
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            
            Object row[];
            
            while(rs.next()){
                row = new Object[2];
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2); 
                
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
