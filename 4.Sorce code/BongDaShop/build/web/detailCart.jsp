<%-- 
    Document   : billdetail
    Created on : Aug 8, 2018, 10:06:36 PM
    Author     : Admin
--%>

<%@page import="Model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Bill"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bill</title>
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



        <style>
            table, td, th {
                border: 1px solid black;
            }

            table {
                border-collapse: collapse;
                width: 80%;

            }

            th {
                height: 50px;
            }
        </style>
    </head>
    <body>
        <%
            Cart cart = (Cart) request.getAttribute("cart");

        %>
        <jsp:include page="header.jsp"></jsp:include>

            <br/><br/>

            <div align="center">
                <table class="data">

                    <tr class="data">                      
                        <th class="data" width="200px" align="center">HÌNH ẢNH</th>
                        <th class="data" width="200px" align="center">TÊN SẢN PHẨM</th>
                        <th class="data" width="200px">SỐ LƯỢNG</th>
                        <th class="data" width="90px"> TỔNG TIỀN </th>
                        <th class="data"width="200px">XÓA</th> 
                        <th class="data"width="200px">SỬA</th> 

                    </tr>
                <%                    if (cart != null) {
                        for (Map.Entry<Long, Item> list : cart.getCartItem().entrySet()) {%>
                <tr>
                    <td class="data"><img src="<%=list.getValue().getProduct().getProductImage()%> " width="300px" height="300px"></td>
                    <td class="data"><%=list.getValue().getProduct().getProductName()%></td>
                    <td class="data"><%=list.getValue().getQuantity()%></td>
                    <td class="data"><%=list.getValue().getQuantity() * list.getValue().getProduct().getProductPrice()%></td>
                    <td class="data"><a href="ChangeCartByUserServlet?productID=<%=list.getValue().getProduct().getProductID()%>">XÓA</a></td>
                    <td class="data"><a href="#">SỬA</a></td>

                </tr>
                <% }
                    }%>

            </table>
            <%
                if (cart.getCartItem().size() == 0) { %>
            <a href="ManagerBillServlet"><input  class="btn btn-primary tt" style="margin-top: 20px;" type="submit" value ="THANH TOÁN"/></a>
            <% } else {
            %>
            <a href="checkout.jsp"><input  class="btn btn-primary" style="margin-top: 20px;" type="submit" value ="THANH TOÁN"/></a>

            <% }%>


        </div>

        <br/><br/>
        <script type="text/javascript">
            $(".tt").click(function () {  
                alert("CHƯA CÓ HÀNG ĐẺ THANH TOÁN VUI LÒNG CHỌN HÀNG ...");
            });
        </script>

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
