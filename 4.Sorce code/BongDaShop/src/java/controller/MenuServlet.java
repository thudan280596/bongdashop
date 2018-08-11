/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class MenuServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String flag = request.getParameter("flag");
        switch (flag) {
            case "home": {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/index.jsp");
                rd.forward(request, response);
            }
            case "category": {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/manager_category.jsp");
                rd.forward(request, response);
            }
            case "product": {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/manager_product.jsp");
                rd.forward(request, response);
            }
            case "bill": {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/manager_bill.jsp");
                rd.forward(request, response);
            }
            case "chart": {
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/admin/manager_chart.jsp");
                rd.forward(request, response);
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
