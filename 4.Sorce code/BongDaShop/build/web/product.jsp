
<%@page import="java.util.ArrayList"%>

<%@page import="Model.Category"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>product</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>    </head>
    <body>

       <%
            ProductDAO productDAO = new ProductDAO();
            long categoryID = 0;
            if (request.getParameter("categoryID") != null) {
                categoryID = (long) Long.parseLong(request.getParameter("categoryID"));
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            
            int pages = 0, firstResult = 0, maxResult=0, total =0;
            if(request.getParameter("pages")!=null){
                pages = (int) Integer.parseInt(request.getParameter("pages"));
            }
            total = productDAO.countProductByCategory(categoryID);
            if(total<=4){
                firstResult = 1;
                maxResult = total;
            }else{
                firstResult = (pages - 1) * 4;
                maxResult = 4;
            }
            
            ArrayList<Product> listProduct = productDAO.getListProductsByNav(categoryID, firstResult, maxResult);
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <br /><br />
            <!---->
            <div class="container">
                <div class="content">
                    <div class="content-top">
                        <h3 class="future">FEATURED</h3>
                        <div class="content-top-in">

                        <%                    
                            for (Product p : listProduct) {
                        %>

                        <div class="col-md-3 md-col">
                            <div class="col-md">
                                <a href="single.jsp?productID=<%=p.getProductID()%>"><img  src="<%=p.getProductImage()%>" alt="<%=p.getProductName()%>" /></a>	
                                <div class="top-content">
                                    <h5><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h5>
                                    <div class="white">
                                        <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" class="hvr-shutter-in-vertical hvr-shutter-in-vertical2 ">Thêm vào giỏ</a>
                                        <p class="dollar"><span class="in-dollar">VNĐ</span><span><%=p.getProductPrice()%></span></p>
                                        <div class="clearfix"></div>
                                    </div>

                                </div>							
                            </div>
                        </div>

                        <%
                            }
                        %>


                        <div class="clearfix"></div>
                    </div>
                </div>
                <!---->


                <ul class="start">
                    <li ><a href="#"><i></i></a></li>
                    <% for(int i =1; i<=(total/4)+1; i++) { %>
                    <li class="arrow"><a href="product.jsp?categoryID=<%=categoryID%>&pages=<%=i%>"><%=i%></a></li>
                    <% } %>
                    <li ><a href="#"><i  class="next"> </i></a></li>
                </ul>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
