/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Admin;
import Model.Users;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class AdminDAO {
    public Admin login(String userAD, String passAD){
        
        Connection con = DBConnect.getConnection();
        String sql = "select * from admin where admin_name='" + userAD + "' and admin_pass='" + passAD + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Admin ad = new Admin();
                ad.setUserAD(rs.getString("admin_name"));
                ad.setPassAD(rs.getString("admin_pass"));
               
               
            con.close();
            return ad;
        }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
       }
    }

