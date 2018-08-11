/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Category;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class CategoryDAO {
    // get danh sach danh muc
    public  ArrayList<Category> getListCategorys() throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM category";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while(rs.next()){
            Category category = new Category();
            category.setCategoryID( rs.getLong("category_id"));
            category.setCategoryName(rs.getString("category_name"));
            list.add(category);
        }
        return list;
    }
    // thêm mới dữ liệu
    public boolean insertCategory(Category c){
        Connection connection = DBConnect.getConnection();
        String sql ="INSERT INTO category(category_name) VALUES (?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);     
            ps.setString(1, c.getCategoryName());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // cập nhật dữ liệu
    public boolean  updateCategory(Category c){
        Connection connection = DBConnect.getConnection();
        String sql = "UPDATE category SET category_name = ? WHERE category_id = ?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, c.getCategoryName());
            ps.setLong(1, c.getCategoryID());
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // xóa dữ liệu
    public boolean deleteCategory( long category_id){
        Connection connection = DBConnect.getConnection();
        String sql= "DELETE FROM category WHERE category_id =?";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, category_id);
            return ps.executeUpdate() == 1;
            
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public static void main(String[] args) throws SQLException {
        CategoryDAO  dao = new CategoryDAO();
        //in danh sach
//        for(Category ds : dao.getListCategorys()){
//            System.out.println(ds.getCategoryID() + " - " + ds.getCategoryName());
//        }
// theem moi
    
         dao.deleteCategory(8);
//        
//// cap nhat du lieu
//       System.out.println(dao.updateCategory(new Category(1, "liverpool")));
//        
//        xóa dữ liệu
//       System.out.println(dao.deleteCategory(10));
    }
  
}
