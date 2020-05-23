/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import javax.swing.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
/**
 *
 * @author Admin
 */
public class BookingFrame extends javax.swing.JFrame {
    Room room = new Room();
    Customer cus = new Customer();
    ConnectDb conn = new ConnectDb();
    
    PreparedStatement pst = null;
    ResultSet rs = null;
    /**
     * Creates new form BookingFrame
     */
    public BookingFrame() {
        initComponents();
        setLocationRelativeTo(null);  
    }
    
    public BookingFrame(String id) {
        initComponents();
        setLocationRelativeTo(null);  
        jLabel1.setText(cus.getCustomerId(id));
        jLabel2.setText(cus.getCustomerUsername(id));
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTableRoomNotReserved = new javax.swing.JTable();
        jLabel4 = new javax.swing.JLabel();
        jTypeComboBox = new javax.swing.JComboBox<>();
        jShowTypeButton = new javax.swing.JButton();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldChooseRoom = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextFieldPhone = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jDateInChooser = new com.toedter.calendar.JDateChooser();
        jLabel8 = new javax.swing.JLabel();
        jDateOutChooser = new com.toedter.calendar.JDateChooser();
        jButtonBooking = new javax.swing.JButton();
        Cancel = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(249, 191, 59));

        jPanel2.setBackground(new java.awt.Color(101, 198, 187));

        jLabel3.setBackground(new java.awt.Color(101, 198, 187));
        jLabel3.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Booking Room");

        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("jLabel1");

        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("jLabel2");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel3)
                        .addGap(269, 269, 269))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(3, 3, 3)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jLabel2))
                .addContainerGap(37, Short.MAX_VALUE))
        );

        jTableRoomNotReserved.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Room"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTableRoomNotReserved.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTableRoomNotReservedMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(jTableRoomNotReserved);

        jLabel4.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setText("Choose room type:");

        jTypeComboBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "1", "2", "3", "4", "5", " " }));
        jTypeComboBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTypeComboBoxActionPerformed(evt);
            }
        });

        jShowTypeButton.setText("Show Type");
        jShowTypeButton.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jShowTypeButtonActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setText("Choose room:");

        jLabel6.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 255));
        jLabel6.setText("Phone:");

        jTextFieldPhone.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextFieldPhoneActionPerformed(evt);
            }
        });

        jLabel7.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(255, 255, 255));
        jLabel7.setText("Date in:");

        jDateInChooser.setBackground(new java.awt.Color(148, 124, 176));
        jDateInChooser.setDateFormatString("dd-MM-yyyy");

        jLabel8.setFont(new java.awt.Font("Dialog", 0, 14)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("Date out:");

        jDateOutChooser.setBackground(new java.awt.Color(148, 124, 176));
        jDateOutChooser.setDateFormatString("dd-MM-yyyy");

        jButtonBooking.setText("Confirm booking");
        jButtonBooking.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonBookingActionPerformed(evt);
            }
        });

        Cancel.setText("Cancel");
        Cancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CancelActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel4)
                            .addComponent(jLabel5)
                            .addComponent(jLabel6)
                            .addComponent(jLabel7)
                            .addComponent(jLabel8))
                        .addGap(33, 33, 33)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jTextFieldChooseRoom)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jTypeComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jShowTypeButton, javax.swing.GroupLayout.PREFERRED_SIZE, 94, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(0, 0, Short.MAX_VALUE))
                            .addComponent(jTextFieldPhone, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jDateInChooser, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jDateOutChooser, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jButtonBooking)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(Cancel, javax.swing.GroupLayout.PREFERRED_SIZE, 127, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 381, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(jShowTypeButton)
                            .addComponent(jTypeComboBox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(jTextFieldChooseRoom, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6)
                            .addComponent(jTextFieldPhone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jDateInChooser, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel7))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jDateOutChooser, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel8))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jButtonBooking)
                            .addComponent(Cancel)))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 304, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 33, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTypeComboBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTypeComboBoxActionPerformed
        // TODO add your handling code here:
        int getType = jTypeComboBox.getSelectedIndex()+1;
        if(getType == 1){
            DefaultTableModel model = (DefaultTableModel) jTableRoomNotReserved.getModel();
            model.setRowCount(0);       
            room.showNotReservedTable(jTableRoomNotReserved, getType);
        }
        else if (getType == 2) {
            DefaultTableModel model = (DefaultTableModel) jTableRoomNotReserved.getModel();
            model.setRowCount(0);
            room.showNotReservedTable(jTableRoomNotReserved, getType);
        }
        else if (getType == 3) {
            DefaultTableModel model = (DefaultTableModel) jTableRoomNotReserved.getModel();
            model.setRowCount(0);
            room.showNotReservedTable(jTableRoomNotReserved, getType);
        }
        else{
            DefaultTableModel model = (DefaultTableModel) jTableRoomNotReserved.getModel();
            model.setRowCount(0);
            room.showNotReservedTable(jTableRoomNotReserved, getType);
        }
    }//GEN-LAST:event_jTypeComboBoxActionPerformed

    private void jShowTypeButtonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jShowTypeButtonActionPerformed
        // TODO add your handling code here:
        RoomType roomTypeFrame = new RoomType();
        roomTypeFrame.setVisible(true);
        roomTypeFrame.pack();
        roomTypeFrame.setLocationRelativeTo(null);
        roomTypeFrame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }//GEN-LAST:event_jShowTypeButtonActionPerformed

    private void jTableRoomNotReservedMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTableRoomNotReservedMouseClicked
        // TODO add your handling code here:
        int row = jTableRoomNotReserved.getSelectedRow();
        TableModel model = jTableRoomNotReserved.getModel();
        jTextFieldChooseRoom.setText(model.getValueAt(row, 0).toString());
    }//GEN-LAST:event_jTableRoomNotReservedMouseClicked

    private void jTextFieldPhoneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextFieldPhoneActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextFieldPhoneActionPerformed

    private void CancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CancelActionPerformed
        // TODO add your handling code here:
        MainFrameCus cusFrame = new MainFrameCus(cus.getCustomerUsername(jLabel2.getText()));
        cusFrame.setVisible(true);
        cusFrame.pack();
        this.dispose();
    }//GEN-LAST:event_CancelActionPerformed

    private void jButtonBookingActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonBookingActionPerformed
        // TODO add your handling code here:
        if(jTextFieldChooseRoom.getText().equals("") || jTextFieldPhone.getText().equals("")){
            JOptionPane.showMessageDialog(null, "You must enter room and phone.");
        }
        else{
            try{
                String insertQuery = "INSERT INTO Reservation(CustomerId, RoomNo, Date_in, Date_out) VALUES(?,?,?,?)";
                pst = conn.connectDb().prepareStatement(insertQuery);

                pst.setString(1, jLabel1.getText());
                pst.setString(2, jTextFieldChooseRoom.getText());
                
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String dateIn = dateFormat.format(jDateInChooser.getDate());
                String dateOut = dateFormat.format(jDateOutChooser.getDate());
                String today = dateFormat.format(new java.util.Date());
                
                java.util.Date din = dateFormat.parse(dateIn);
                java.util.Date dout = dateFormat.parse(dateOut);
                java.util.Date td = dateFormat.parse(today);
                
                pst.setString(3, dateIn);
                pst.setString(4, dateOut);
                
                 // if the day in is before or not equal today
                if(!(din.after(td) || din.equals(td))){
                    JOptionPane.showMessageDialog(null, "Date in must be equal or after today", "Notification", JOptionPane.WARNING_MESSAGE);
                }
                //if the day out is before or not equal day in
                else if(!(dout.after(din) || dout.equals(din))){
                    JOptionPane.showMessageDialog(null, "Date out must be after day in", "Notification", JOptionPane.WARNING_MESSAGE);
                }else{
                    room.setRoomToReserved(jTextFieldChooseRoom.getText(), "Yes");
                
                    pst.executeUpdate();

                    MainFrameCus cusFrame = new MainFrameCus(cus.getCustomerUsername(jLabel2.getText()));
                    cusFrame.setVisible(true);
                    cusFrame.pack();
                    this.dispose();
                    JOptionPane.showMessageDialog(null, "You book Room "+jTextFieldChooseRoom.getText()+" successfully.");
                }
                
                
            }catch(Exception e){
                JOptionPane.showMessageDialog(null, e);
            }finally{
                try{
                    pst.close();
                }catch(Exception e){
                    JOptionPane.showMessageDialog(null, e);
                }
            }
        }
    }//GEN-LAST:event_jButtonBookingActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(BookingFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(BookingFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(BookingFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(BookingFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new BookingFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Cancel;
    private javax.swing.JButton jButtonBooking;
    private com.toedter.calendar.JDateChooser jDateInChooser;
    private com.toedter.calendar.JDateChooser jDateOutChooser;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JButton jShowTypeButton;
    private javax.swing.JTable jTableRoomNotReserved;
    private javax.swing.JTextField jTextFieldChooseRoom;
    private javax.swing.JTextField jTextFieldPhone;
    private javax.swing.JComboBox<String> jTypeComboBox;
    // End of variables declaration//GEN-END:variables
}
