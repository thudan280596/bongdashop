/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Category;
import Model.Value;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class ChartDAO {
    public ArrayList<Value> getALL (){
        try {
            CategoryDAO  categoryDAO = new CategoryDAO();
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Value> list = new  ArrayList<>();
            for(Category category : categoryDAO.getListCategorys()){
                list.add(new Value(category.getCategoryName(),
                        productDAO.getListProduct().size()));
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ChartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) { // psvm: viết tắt
        System.out.println(new ChartDAO().getALL());
        for(Value v : new ChartDAO().getALL()){
            System.out.println(v.getName() + " - " + v.getValue());
        }
    }
}
