/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import Model.BillDetail;

/**
 *
 * @author Admin
 */
public class BillDetailDAO {
    public void insertBillDetail(BillDetail bd) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO bill_detail(bill_id, product_id, price, quantity) VALUES(?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bd.getBillID());
        ps.setLong(2, bd.getProductID());
        ps.setDouble(3, bd.getPrice());
        ps.setInt(4, bd.getQuantity());
        ps.executeUpdate();
    }
    public static void main(String[] args) throws SQLException {
        new BillDetailDAO().insertBillDetail(new BillDetail( 1, 0, 1, 1));
    }
    
}
