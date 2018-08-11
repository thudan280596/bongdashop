/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BillDAO;
import DAO.BillDetailDAO;
import Model.Bill;
import Model.BillDetail;
import Model.Cart;
import Model.Item;
import Model.Users;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tools.SendMail;

/**
 *
 * @author Admin
 */
public class CheckOutServlet extends HttpServlet {

    private BillDetailDAO billDetailDAO = new BillDetailDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        String address = request.getParameter("address");
        String payment = request.getParameter("payment");

        Cart cart = (Cart) session.getAttribute("cart");
        System.out.println("size  :" + cart.getCartItem().size());
        Users users = (Users) session.getAttribute("user");
        Bill billInsert = null;
        try {
            Bill bill = new Bill();
            bill.setAddress(address);
            bill.setPayment(payment);
            bill.setUserID(users.getUserID());
            bill.setDate(new Timestamp(new Date().getTime()));
            System.out.println("ngay  : " + new Timestamp(new Date().getTime()));
            bill.setTotal(cart.totalToCart());
            BillDAO billDAO = new BillDAO();
            billDAO.insertBill(bill);
            billInsert = billDAO.getNewBillIdInDB();

            for (Map.Entry<Long, Item> list : cart.getCartItem().entrySet()) {
                billDetailDAO.insertBillDetail(new BillDetail(billInsert.getBillID(),
                        list.getKey(),
                        list.getValue().getProduct().getProductPrice() * list.getValue().getQuantity(),
                        list.getValue().getQuantity()));
            }
            System.out.println("ok...................");
            //SendMail sm = new SendMail();
            // sm.sendMail(users.getUserEmail(), "BongDaShop", "Hello, " + users.getUserEmail() + "\nTotal :" + cart.totalToCart());
            cart = new Cart();
            session.setAttribute("cart", cart);

        } catch (Exception e) {
        }
        // response.sendRedirect("/BongDaShop/bill.jsp");

        request.setAttribute("bill", billInsert);
        RequestDispatcher dis = request.getRequestDispatcher("bill.jsp");
        dis.forward(request, response);

    }

}
