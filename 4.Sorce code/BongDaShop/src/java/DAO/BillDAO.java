/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Bill;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class BillDAO {

    public boolean insertBill(Bill bill) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO bill(user_id, total, payment, address, date) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = connection.prepareCall(sql);
        //ps.setLong(1, bill.getBillID());
        ps.setLong(1, bill.getUserID());
        ps.setDouble(2, bill.getTotal());
        ps.setString(3, bill.getPayment());
        ps.setString(4, bill.getAddress());
        // ps.setDate(5, bill.getDate());
        ps.setTimestamp(5, bill.getDate());
        return ps.execute();

    }

    // 
    public ArrayList<Bill> getListBillByUserID(int user_id) {
        try {
            Connection connection = DBConnect.getConnection();
            String sql = "SELECT * FROM bill WHERE user_id = '" + user_id + "'";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> list = new ArrayList<>();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setBillID(rs.getLong("bill_id"));
                bill.setUserID(rs.getLong("user_id"));
                bill.setTotal(rs.getDouble("total"));
                bill.setPayment(rs.getString("payment"));
                bill.setAddress(rs.getString("address"));
                bill.setDate(rs.getTimestamp("date"));
                list.add(bill);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
// dân update 
    public ArrayList<Bill> getListBill() {
        try {
            Connection connection = DBConnect.getConnection();
            String sql = "SELECT * FROM bill";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> list = new ArrayList<>();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setBillID(rs.getLong("bill_id"));
                bill.setUserID(rs.getLong("user_id"));
                bill.setTotal(rs.getDouble("total"));
                bill.setPayment(rs.getString("payment"));
                bill.setAddress(rs.getString("address"));
                bill.setDate(rs.getTimestamp("date"));
                list.add(bill);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Bill getNewBillIdInDB() {
        Bill bill = new Bill();
        try {
            Connection connection = DBConnect.getConnection();
            String sql = "SELECT * FROM bill";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                bill.setBillID(rs.getLong("bill_id"));
                bill.setUserID(rs.getLong("user_id"));
                bill.setTotal(rs.getDouble("total"));
                bill.setPayment(rs.getString("payment"));
                bill.setAddress(rs.getString("address"));
                bill.setDate(rs.getTimestamp("date"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bill;
    }

    public static void main(String[] args) throws SQLException {

//        new BillDAO().insertBill(new Bill(0, 0, 0, "adc", "adf",new Timestamp(new Date().getTime())));
        new BillDAO().insertBill(new Bill(1, 1, "s", "s", new Timestamp(new Date().getTime())));
    }
}
