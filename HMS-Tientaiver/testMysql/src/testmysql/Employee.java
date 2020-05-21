/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testmysql;

import javax.swing.*;
import java.sql.*;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author phantientai
 */
public class Employee {

    public void showEmployeesInfo(JTable table) {
        try {
            Connection conn = MyConnection.getConnection();
            Statement stm = conn.createStatement();
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
            Connection conn = MyConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select id, first_name, last_name, "
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
            Connection conn = MyConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("select id, first_name, last_name, account, password"
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
            Connection conn = MyConnection.getConnection();
            Statement stm = conn.createStatement();
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
    
    public void showPositionInfo(JTable table) {
        try {
            Connection conn = MyConnection.getConnection();
            Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("select id, position from position_id");
  
            DefaultTableModel tableModel = (DefaultTableModel) table.getModel();
            tableModel.setRowCount(0);
            Object[] row = new Object[2];

            while (rs.next()) {
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);

                tableModel.addRow(row);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

}
