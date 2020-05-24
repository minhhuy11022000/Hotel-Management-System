/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Hotel_Management_System;

import javax.swing.JFrame;

/**
 *
 * @author Admin
 */
public class MainFrame extends javax.swing.JFrame {

    /**
     * Creates new form MainFrame
     */
    public MainFrame() {
        initComponents();
        setLocationRelativeTo(null);
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
        jToggleButtonCustomer = new javax.swing.JToggleButton();
        jToggleButtonRoom = new javax.swing.JToggleButton();
        jToggleButtonReservation = new javax.swing.JToggleButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jToggleButtonLogOut = new javax.swing.JToggleButton();
        jToggleButtonEmployee = new javax.swing.JToggleButton();
        jToggleButtonLogOut1 = new javax.swing.JToggleButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(41, 241, 195));

        jToggleButtonCustomer.setBackground(new java.awt.Color(255, 204, 204));
        jToggleButtonCustomer.setText("Manage Customers");
        jToggleButtonCustomer.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButtonCustomerActionPerformed(evt);
            }
        });

        jToggleButtonRoom.setBackground(new java.awt.Color(255, 204, 204));
        jToggleButtonRoom.setText("Manage Rooms");
        jToggleButtonRoom.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButtonRoomActionPerformed(evt);
            }
        });

        jToggleButtonReservation.setBackground(new java.awt.Color(255, 204, 204));
        jToggleButtonReservation.setText("Manage Reservation");
        jToggleButtonReservation.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButtonReservationActionPerformed(evt);
            }
        });

        jPanel2.setBackground(new java.awt.Color(242, 121, 53));

        jLabel1.setBackground(new java.awt.Color(242, 121, 53));
        jLabel1.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Management");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addGap(161, 161, 161))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(23, 23, 23)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(25, Short.MAX_VALUE))
        );

        jToggleButtonLogOut.setBackground(new java.awt.Color(255, 204, 204));
        jToggleButtonLogOut.setText("Log out");
        jToggleButtonLogOut.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButtonLogOutActionPerformed(evt);
            }
        });

        jToggleButtonEmployee.setBackground(new java.awt.Color(255, 204, 204));
        jToggleButtonEmployee.setText("Manage Employees");
        jToggleButtonEmployee.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButtonEmployeeActionPerformed(evt);
            }
        });

        jToggleButtonLogOut1.setBackground(new java.awt.Color(255, 204, 204));
        jToggleButtonLogOut1.setText("Manage Account");
        jToggleButtonLogOut1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jToggleButtonLogOut1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jToggleButtonCustomer, javax.swing.GroupLayout.DEFAULT_SIZE, 148, Short.MAX_VALUE)
                    .addComponent(jToggleButtonEmployee, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jToggleButtonLogOut1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 123, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jToggleButtonLogOut, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jToggleButtonRoom, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jToggleButtonReservation, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(25, 25, 25))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(40, 40, 40)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jToggleButtonCustomer)
                    .addComponent(jToggleButtonRoom))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jToggleButtonReservation)
                    .addComponent(jToggleButtonEmployee))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jToggleButtonLogOut)
                    .addComponent(jToggleButtonLogOut1))
                .addContainerGap(58, Short.MAX_VALUE))
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

    private void jToggleButtonRoomActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButtonRoomActionPerformed
        // TODO add your handling code here:
        ManageRoomFrame roomFrame = new ManageRoomFrame();
        roomFrame.setVisible(true);
        roomFrame.pack();
        this.dispose();
    }//GEN-LAST:event_jToggleButtonRoomActionPerformed

    private void jToggleButtonCustomerActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButtonCustomerActionPerformed
        // TODO add your handling code here:
        ManageCustomerFrame customerFrame = new ManageCustomerFrame();
        customerFrame.setVisible(true);
        customerFrame.pack();
        this.dispose();
    }//GEN-LAST:event_jToggleButtonCustomerActionPerformed

    private void jToggleButtonReservationActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButtonReservationActionPerformed
        // TODO add your handling code here:
        ManageReservationFrame reservationFrame = new ManageReservationFrame();
        reservationFrame.setVisible(true);
        reservationFrame.pack();
    }//GEN-LAST:event_jToggleButtonReservationActionPerformed

    private void jToggleButtonLogOutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButtonLogOutActionPerformed
        // TODO add your handling code here:
        LoginFrame loginFrame = new LoginFrame();
        loginFrame.setVisible(true);
        loginFrame.pack();
        this.dispose();
    }//GEN-LAST:event_jToggleButtonLogOutActionPerformed

    private void jToggleButtonEmployeeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButtonEmployeeActionPerformed
        // TODO add your handling code here
        EmployeeManager employeeFrame = new EmployeeManager();
        employeeFrame.setVisible(true);
        employeeFrame.pack();
        this.dispose();
    }//GEN-LAST:event_jToggleButtonEmployeeActionPerformed

    private void jToggleButtonLogOut1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jToggleButtonLogOut1ActionPerformed
        // TODO add your handling code here:
        AccountManager accManager = new AccountManager();
        accManager.setVisible(true);
        accManager.pack();
        this.dispose();
    }//GEN-LAST:event_jToggleButtonLogOut1ActionPerformed

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
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MainFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MainFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JToggleButton jToggleButtonCustomer;
    private javax.swing.JToggleButton jToggleButtonEmployee;
    private javax.swing.JToggleButton jToggleButtonLogOut;
    private javax.swing.JToggleButton jToggleButtonLogOut1;
    private javax.swing.JToggleButton jToggleButtonReservation;
    private javax.swing.JToggleButton jToggleButtonRoom;
    // End of variables declaration//GEN-END:variables
}