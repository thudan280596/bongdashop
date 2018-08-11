/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.UsersDAO;
import Model.Users;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UsersServlet extends HttpServlet {

    UsersDAO usersDAO = new UsersDAO();
    private static final String message = "email đã được đăng kí , vui lòng nhập email khác ...";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();

        switch (command) {
            case "insert":
                
                users.setUserID(new java.util.Date().getTime());
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(request.getParameter("pass"));
                boolean checkEmail = usersDAO.checkEmail(request.getParameter("email").trim());
                if (checkEmail == true) {
                    request.setAttribute("message", message);
                    RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                    rd.forward(request, response);
                }
                usersDAO.insertUsers(users);
                session.setAttribute("user", users);
                url = "/index.jsp";
                break;
            case "login":
                System.out.println("ok...............");

                users = usersDAO.login(request.getParameter("email"), request.getParameter("pass"));//sai nè...
                if (users != null) {
                    session.setAttribute("user", users);
                    url = "/index.jsp";
                } else {
                    request.setAttribute("error", "Error email or password!");
                    url = "/login.jsp";
                }
                break;
                

        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);

    }

}
