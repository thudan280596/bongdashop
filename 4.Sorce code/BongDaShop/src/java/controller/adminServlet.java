/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AdminDAO;
import Model.Admin;
import Model.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tools.MD5;

/**
 *
 * @author Admin
 */
public class adminServlet extends HttpServlet {

   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        AdminDAO adminDAO = new AdminDAO();
         String command = request.getParameter("command");
         String username = request.getParameter("username");
         String pass = request.getParameter("password");
        String url = "";
       Admin admin= new Admin();
        HttpSession session = request.getSession();
        switch (command) {
           
            case "login":
                
                admin = adminDAO.login(username, pass);
                        
                //đó, thử đi
                
                
                if (admin != null) {
                    session.setAttribute("admin", admin);
                    url = "/admin/index.jsp";
                }else{
                    request.setAttribute("error", "Error email or password!");
                    url = "/admin/login.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }
    }

  
