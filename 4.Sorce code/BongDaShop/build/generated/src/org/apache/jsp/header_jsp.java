package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Map;
import Model.Item;
import Model.Cart;
import Model.Users;
import Model.Category;
import DAO.CategoryDAO;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>header</title>\n");
      out.write("    <div id=\"fb-root\"></div>\n");
      out.write("    <script>(function (d, s, id) {\n");
      out.write("            var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("            if (d.getElementById(id))\n");
      out.write("                return;\n");
      out.write("            js = d.createElement(s);\n");
      out.write("            js.id = id;\n");
      out.write("            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=1166134143526600&autoLogAppEvents=1';\n");
      out.write("            fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("        }(document, 'script', 'facebook-jssdk'));</script>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        /* Style The Dropdown Button */\n");
      out.write("        .dropbtn {\n");
      out.write("            background-color: #4CAF50;\n");
      out.write("            color: white;\n");
      out.write("            padding: 16px;\n");
      out.write("            font-size: 16px;\n");
      out.write("            border: none;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* The container <div> - needed to position the dropdown content */\n");
      out.write("        .dropdown {\n");
      out.write("            position: relative;\n");
      out.write("            display: inline-block;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Dropdown Content (Hidden by Default) */\n");
      out.write("        .dropdown-content {\n");
      out.write("            display: none;\n");
      out.write("            position: absolute;\n");
      out.write("            background-color: #f9f9f9;\n");
      out.write("            min-width: 160px;\n");
      out.write("            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("            z-index: 1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Links inside the dropdown */\n");
      out.write("        .dropdown-content a {\n");
      out.write("            padding: 12px 16px;\n");
      out.write("            text-decoration: none;\n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Change color of dropdown links on hover */\n");
      out.write("        .dropdown-content a:hover {background-color: #f1f1f1}\n");
      out.write("\n");
      out.write("        /* Show the dropdown menu on hover */\n");
      out.write("        .dropdown:hover .dropdown-content {\n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Change the background color of the dropdown button when the dropdown content is shown */\n");
      out.write("        .dropdown:hover .dropbtn {\n");
      out.write("            background-color: #3e8e41;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    ");

        CategoryDAO categoryDAO = new CategoryDAO();
        Users users = null;
        if (session.getAttribute("user") != null) {
            users = (Users) session.getAttribute("user");
        }
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

    
      out.write("\n");
      out.write("\n");
      out.write("    <!--header-->\n");
      out.write("    <div class=\"header\">\n");
      out.write("        <div class=\"header-top\">\n");
      out.write("            <div class=\"container\">\t\n");
      out.write("                <div class=\"header-top-in\">\t\t\t\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"index.jsp\"><img src=\"images/logo.png\" alt=\" \" ></a>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"header-in\">\n");
      out.write("                         ");
 if (users == null) { 
      out.write("\n");
      out.write("                            <li><a href=\"register.jsp\">ĐĂNG KÍ</a></li>\n");
      out.write("                            <li><a href=\"login.jsp\">ĐĂNG NHẬP</a></li>\n");
      out.write("                            <li><a href=\"checkout.jsp\" >KIỂM TRA</a> </li>\n");
      out.write("                            ");
} 
      out.write("\n");
      out.write("                        <ul class=\"icon1 sub-icon1\">\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            ");
if (users != null) {
      out.write("\n");
      out.write("                            <li> <div class=\"dropdown\">\n");
      out.write("                                    <a href=\"bill.jsp?user_id=");
      out.print(users.getUserID());
      out.write("\" class=\"dropbtn\">");
      out.print(users.getUserEmail());
      out.write("</a>\n");
      out.write("                                    <div class=\"dropdown-content\">\n");
      out.write("                                        <a href=\"ManagerBillServlet\" style=\"font-size: 15px; color: black; padding: 10px\">\n");
      out.write("                                            \n");
      out.write("                                              Xem Giỏ Hàng\n");
      out.write("                                        </a>\n");
      out.write("                                        <a href=\"LogOutServlet\" style=\"font-size: 15px; color: black; padding: 10px\">Log Out</a>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                </div> \n");
      out.write("                            </li>\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                            <li><a href=\"register.jsp\">ĐĂNG KÍ</a></li>\n");
      out.write("                            <li><a href=\"login.jsp\">ĐĂNG NHẬP</a></li>\n");
      out.write("                            <li><a href=\"checkout.jsp\" >KIỂM TRA</a> </li>\t\n");
      out.write("                            <li><div class=\"cart\">\n");
      out.write("                                    <a href=\"#\" class=\"cart-in\"> </a>\n");
      out.write("                                    <span> ");
      out.print(cart.countItem());
      out.write("</span>\n");
      out.write("                                </div>\n");
      out.write("                                <ul class=\"sub-icon1 list\">\n");
      out.write("                                    <h3>Recently added items</h3>\n");
      out.write("                                    <div class=\"shopping_cart\">\n");
      out.write("\n");
      out.write("                                        ");
for (Map.Entry<Long, Item> list : cart.getCartItem().entrySet()) {
      out.write("\n");
      out.write("                                        <div class=\"cart_box\">\n");
      out.write("                                            <div class=\"message\">\n");
      out.write("                                                <div class=\"alert-close\"> </div> \n");
      out.write("                                                <div class=\"list_img\"><img src=\"");
      out.print(list.getValue().getProduct().getProductImage());
      out.write("\" class=\"img-responsive\" alt=\"\"></div>\n");
      out.write("                                                <div class=\"list_desc\"><h4><a href=\"CartServlet?command=remove&productID=");
      out.print(list.getValue().getProduct().getProductID());
      out.write('"');
      out.write('>');
      out.print(list.getValue().getProduct().getProductName());
      out.write("</a></h4>\n");
      out.write("                                                    ");
      out.print(list.getValue().getQuantity());
      out.write(" x<span class=\"actual\"> $");
      out.print(list.getValue().getProduct().getProductPrice());
      out.write("</span>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"clearfix\"></div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"total\">\n");
      out.write("                                        <div class=\"total_left\">Cart Subtotal: </div>\n");
      out.write("                                        <div class=\"total_right\">$");
      out.print(cart.totalToCart());
      out.write("</div>\n");
      out.write("                                        <div class=\"clearfix\"> </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"login_buttons\">\n");
      out.write("                                        <div class=\"check_button\"><a href=\"checkout.jsp\">Kiểm tra</a></div>\n");
      out.write("                                        <div class=\"clearfix\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"clearfix\"></div>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"header-bottom\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"h_menu4\">\n");
      out.write("                    <a class=\"toggleMenu\" href=\"#\">Menu</a>\n");
      out.write("                    <ul class=\"nav\">\n");
      out.write("                        <li class=\"active\"><a href=\"index.jsp\"><i> </i>Trang chủ</a></li>\n");
      out.write("                        <li><a href=\"#\" >Danh mục</a>\n");
      out.write("                            <ul class=\"drop\">\n");
      out.write("                                ");

                                    for (Category c : categoryDAO.getListCategorys()) {
                                
      out.write("\n");
      out.write("                                <li><a href=\"product.jsp?categoryID=");
      out.print(c.getCategoryID());
      out.write("&pages=1\">");
      out.print(c.getCategoryName());
      out.write("</a></li>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </li> \t\t\t\t\t\t\n");
      out.write("                        <li><a href=\"productnew.jsp\" > Mẫu mới</a></li>            \n");
      out.write("                        <li><a href=\"productRun.jsp\" >Mẫu bán chạy nhất</a></li>\t\t\t\t\t\t  \t\t\t\t \n");
      out.write("                        <li><a href=\"#\" >Thông tin bóng đá</a></li>\n");
      out.write("                        <li><a href=\"contact.jsp\" >Liên hệ</a></li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                    <script type=\"text/javascript\" src=\"js/nav.js\"></script>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"header-bottom-in\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"header-bottom-on\">\n");
      out.write("                    <p class=\"wel\"><a href=\"#\">Chào mừng bạn đến với Bóng Đá Shop.</a></p>\n");
      out.write("                    <div class=\"header-can\">\n");
      out.write("                        <ul class=\"social-in\">\n");
      out.write("                            <li><a href=\"#\"><i> </i></a></li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"facebook\"> </i></a></li>\n");
      out.write("                            <li><a href=\"#\"><i class=\"twitter\"> </i></a></li>\t\t\t\t\t\n");
      out.write("                            <li><a href=\"#\"><i class=\"skype\"> </i></a></li>\n");
      out.write("                        </ul>\t\n");
      out.write("                        <!--                            <div class=\"search\">\n");
      out.write("                                                        <form>\n");
      out.write("                                                            <input type=\"text\" value=\"Search\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                                        this.value = '';\n");
      out.write("                                                                    }\" >\n");
      out.write("                                                            <input type=\"submit\" value=\"\">\n");
      out.write("                                                        </form>\n");
      out.write("                                                    </div>-->\n");
      out.write("\n");
      out.write("                        <div class=\"clearfix\"> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
