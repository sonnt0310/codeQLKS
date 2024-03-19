/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package java_hotel_system;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JComboBox;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class STAFFS {
    MY_CONNECTION my_connection = new MY_CONNECTION();
    
    public void fillStaff_POSITION_JTable(JTable table)
    {
        PreparedStatement ps;
        ResultSet rs;
        String selectQuery = "SELECT * FROM `position`";
      
        try {
            ps = my_connection.createConnection().prepareStatement(selectQuery);
            rs = ps.executeQuery();
            DefaultTableModel tableModel = (DefaultTableModel)table.getModel();
            Object[] row;
            while(rs.next())
            {
                row = new Object[2];
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
               
                tableModel.addRow(row);
            }
        } catch (SQLException ex) {
            Logger.getLogger(STAFFS.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
     
    public void fillStaff_Position_JCombobox(JComboBox combobox)
    {
        PreparedStatement ps;
        ResultSet rs;
        String selectQuery = "SELECT * FROM `position`";
      
        try {
            ps = my_connection.createConnection().prepareStatement(selectQuery);
            rs = ps.executeQuery();

            while(rs.next())
            {
                combobox.addItem(rs.getString("name_position"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(STAFFS.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
     
    public boolean addStaff(int id, String fname, String lname, String phone, String position)
    {
        PreparedStatement st;
        ResultSet rs;
        String addQuery = "INSERT INTO `staffs`(`id`,`f_name`, `l_name`, `phone`, `position`) VALUES (?,?,?,?,?)";

        try {
            st = my_connection.createConnection().prepareStatement(addQuery);
            st.setInt(1,id);
            st.setString(2,fname);
            st.setString(3,lname);
            st.setString(4,phone);
            st.setString(5,position);
            return (st.executeUpdate()>0);
        } catch (SQLException ex) {
            Logger.getLogger(STAFFS.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        }
    }
    
    public boolean editStaff(int id, String fname, String lname, String phone, String position)
    {
        PreparedStatement st;
        ResultSet rs;
        String editQuery = "UPDATE `staffs` SET `f_name`=?,`l_name`=?,`phone`=?,`position`=? WHERE `id`=?";

        try {
            st = my_connection.createConnection().prepareStatement(editQuery);
            st.setString(1,fname);
            st.setString(2,lname);
            st.setString(3,phone);
            st.setString(4,position);
            st.setInt(5, id);
            return (st.executeUpdate()>0);
        } catch (SQLException ex) {
            Logger.getLogger(STAFFS.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        }
    }
    
    public boolean removeStaff(int id)
    {
        PreparedStatement st;
        ResultSet rs;
        String deleteQuery = "DELETE FROM `staffs` WHERE `id`=?";

        try {
            st = my_connection.createConnection().prepareStatement(deleteQuery);
            st.setInt(1, id);
            return (st.executeUpdate()>0);
        } catch (SQLException ex) {
            Logger.getLogger(STAFFS.class.getName()).log(Level.SEVERE, null, ex);
        return false;
        }
    }
    
    public void fillStaffJTable(JTable table)
    {
        PreparedStatement ps;
        ResultSet rs;
        String selectQuery = "SELECT * FROM `staffs`";
      
        try {
            ps = my_connection.createConnection().prepareStatement(selectQuery);
            rs = ps.executeQuery();
            DefaultTableModel tableModel = (DefaultTableModel)table.getModel();
            Object[] row;
            while(rs.next())
            {
                row = new Object[5];
                row[0] = rs.getInt(1);
                row[1] = rs.getString(2);
                row[2] = rs.getString(3);
                row[3] = rs.getString(4);
                row[4] = rs.getString(5);
                tableModel.addRow(row);
            }
        } catch (SQLException ex) {
            Logger.getLogger(STAFFS.class.getName()).log(Level.SEVERE, null, ex);
        }    
    }
}
