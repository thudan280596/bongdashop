<%-- 
    Document   : header
    Created on : Jul 12, 2018, 3:08:14 PM
    Author     : Admin
--%>

<%@page import="java.util.Map"%>
<%@page import="Model.Item"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Users"%>
<%@page import="Model.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    <div id="fb-root"></div>
    <script>(function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id))
                return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=1166134143526600&autoLogAppEvents=1';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

    <style>
        /* Style The Dropdown Button */
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        /* The container <div> - needed to position the dropdown content */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* Dropdown Content (Hidden by Default) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* Change color of dropdown links on hover */
        .dropdown-content a:hover {background-color: #f1f1f1}

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* Change the background color of the dropdown button when the dropdown content is shown */
        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
        }
    </style>
</head>
<body>

    <%
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

    %>

    <!--header-->
    <div class="header">
        <div class="header-top">
            <div class="container">	
                <div class="header-top-in">			
                    <div class="logo">
                        <a href="index.jsp"><img src="images/logo.png" alt=" " ></a>
                    </div>
                    <div class="header-in">
                        <ul class="icon1 sub-icon1">

                            <%if (users != null) {%>

                            <li> <div class="dropdown">
                                    <a href="bill.jsp?user_id=<%=users.getUserID()%>" class="dropbtn"><%=users.getUserEmail()%></a>
                                    <div class="dropdown-content">
                                        <a href="ManagerBillServlet" style="font-size: 15px; color: black; padding: 10px">Xem Giỏ Hàng</a>
                                        <a href="LogOutServlet" style="font-size: 15px; color: black; padding: 10px">Log Out</a>

                                    </div>
                                </div> 
                            </li>
                            <%}%>
                            <%if (users == null)  { %>
                            <li><a href="register.jsp">ĐĂNG KÍ</a></li>
                            <li><a href="login.jsp">ĐĂNG NHẬP</a></li>
                            <% } %>
                            <li><a href="checkout.jsp" >KIỂM TRA</a> </li>	
                            <li><div class="cart">
                                    <a href="#" class="cart-in"> </a>
                                    <span> <%=cart.countItem()%></span>
                                </div>
                                <ul class="sub-icon1 list">
                                    <h3>Recently added items</h3>
                                    <div class="shopping_cart">

                                        <%for (Map.Entry<Long, Item> list : cart.getCartItem().entrySet()) {%>
                                        <div class="cart_box">
                                            <div class="message">
                                                <div class="alert-close"> </div> 
                                                <div class="list_img"><img src="<%=list.getValue().getProduct().getProductImage()%>" class="img-responsive" alt=""></div>
                                                <div class="list_desc"><h4><a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"><%=list.getValue().getProduct().getProductName()%></a></h4>
                                                    <%=list.getValue().getQuantity()%> x<span class="actual"> $<%=list.getValue().getProduct().getProductPrice()%></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <%}%>

                                    </div>
                                    <div class="total">
                                        <div class="total_left">Cart Subtotal: </div>
                                        <div class="total_right">$<%=cart.totalToCart()%></div>
                                        <div class="clearfix"> </div>
                                    </div>
                                    <div class="login_buttons">
                                        <div class="check_button"><a href="checkout.jsp">Kiểm tra</a></div>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <div class="header-bottom">
            <div class="container">
                <div class="h_menu4">
                    <a class="toggleMenu" href="#">Menu</a>
                    <ul class="nav">
                        <li class="active"><a href="index.jsp"><i> </i>Trang chủ</a></li>
                        <li><a href="#" >Danh mục</a>
                            <ul class="drop">
                                <%
                                    for (Category c : categoryDAO.getListCategorys()) {
                                %>
                                <li><a href="product.jsp?categoryID=<%=c.getCategoryID()%>&pages=1"><%=c.getCategoryName()%></a></li>
                                    <%
                                        }
                                    %>
                            </ul>
                        </li> 						
                        <li><a href="productnew.jsp" > Mẫu mới</a></li>            
                        <li><a href="productRun.jsp" >Mẫu bán chạy nhất</a></li>						  				 
                        <li><a href="#" >Thông tin bóng đá</a></li>
                        <li><a href="contact.jsp" >Liên hệ</a></li>

                    </ul>
                    <script type="text/javascript" src="js/nav.js"></script>
                </div>
            </div>
        </div>
        <div class="header-bottom-in">
            <div class="container">
                <div class="header-bottom-on">
                    <p class="wel"><a href="#">Chào mừng bạn đến với Bóng Đá Shop.</a></p>
                    <div class="header-can">
                        <ul class="social-in">
                            <li><a href="#"><i> </i></a></li>
                            <li><a href="https://www.facebook.com/BongDaShopGroup/"><i class="facebook"> </i></a></li>
                            <li><a href="#"><i class="twitter"> </i></a></li>					
                            <li><a href="#"><i class="skype"> </i></a></li>
                        </ul>	
                        <!--                            <div class="search">
                                                        <form>
                                                            <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                        this.value = '';
                                                                    }" >
                                                            <input type="submit" value="">
                                                        </form>
                                                    </div>-->

                        <div class="clearfix"> </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
