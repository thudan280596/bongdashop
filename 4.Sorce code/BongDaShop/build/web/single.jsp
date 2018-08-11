<%-- 
    Document   : single
    Created on : Jul 15, 2018, 9:43:15 AM
    Author     : Admin
--%>

<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>detail</title>
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
        </script>
    </head>
    <body>

        <%
            ProductDAO productDAO = new ProductDAO();
            Product product = new Product();
            String productID = "";
            if (request.getParameter("productID") != null) {
                productID = request.getParameter("productID");
                product = productDAO.getProduct(Long.parseLong(productID));
            }
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="single">
                    <div class="col-md-9 top-in-single">
                        <div class="col-md-5 single-top">	

                            <a href="optionallink.html">
                                <img class="etalage_thumb_image img-responsive" src="<%=product.getProductImage()%>" alt="" >
                            </a>

                        </div>	
                    <div class="col-md-7 single-top-in">
                        <div class="single-para">
                            <h4><%=product.getProductName()%></h4>
                            <div class="para-grid">
                                <span class="add-to"><%=product.getProductPrice()%> VNĐ</span>
                                
                                <a href="#" class="hvr-shutter-in-vertical cart-to" disabled>Thêm vào giỏ</a>					
                                <div class="clearfix"></div>
                            </div>
                            <h5>Còn hàng</h5>
                            <div class="available">
                                <h6>Tùy chọn :</h6>
                                <ul>
                                    
                                    <li>Size:<select>
                                            <option>S</option>
                                            <option>M</option>
                                            <option>L</option>
                                        </select></li>
<!--                                    <li>Quality:<select>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select></li>-->
                                </ul>
                            </div>
                            <p><%=product.getProductDescription()%></p>

                            <!--<a href="#" class="hvr-shutter-in-vertical ">More details</a>-->

                        </div>
                    </div>
                    <div class="clearfix"> </div>
                    <div>
                              
                    <div class="fb-comments" data-href="http://localhost:8080/BongDaShop/single.jsp?productID=<%=productID%>" data-width="850" data-numposts="5"></div> 
                        
                    </div>
                    
                </div>
                <div class="col-md-3">
                    <div class="single-bottom">
                        <h4>Danh mục</h4>
                        <ul>
                            <li><a href="/BongDaShop/product.jsp?categoryID=1&pages=1"><i> </i>Arsenal</a></li>
                            <li><a href="/BongDaShop/product.jsp?categoryID=2&pages=1"><i> </i>Barcelona</a></li>
                            <li><a href="/BongDaShop/product.jsp?categoryID=4&pages=1"><i> </i>Real madrid</a></li>
                            <li><a href="/BongDaShop/product.jsp?categoryID=3&pages=1"><i> </i>Manchester United</a></li>
                        </ul>
                    </div>


                </div>
                <div class="clearfix"> </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
