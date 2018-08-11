/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BillDetailDAO;
import DAO.ProductDAO;
import Model.Cart;
import Model.Product;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class ChangeCartByUserServlet extends HttpServlet {

    private final ProductDAO productDAO = new ProductDAO();
    private BillDetailDAO billDetailDAO = new BillDetailDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String productID = request.getParameter("productID");
        Cart cart = (Cart) session.getAttribute("cart");
        System.out.println("cart  :"+cart.getCartItem().size());
        if (cart != null) {

            Long idProduct = Long.parseLong(productID);
            try {
                Product product = productDAO.getProduct(idProduct);
            } catch (SQLException ex) {
                Logger.getLogger(ChangeCartByUserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            cart.removeToCart(idProduct);
        }
        
       // session.setAttribute("cart", cart);
        //System.out.println("cart  :"+cart.getCartItem().size());
       // RequestDispatcher dis  = request.getRequestDispatcher("detailCart.jsp");
//        dis.forward(request, response);
        response.sendRedirect("ManagerBillServlet");
                
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
