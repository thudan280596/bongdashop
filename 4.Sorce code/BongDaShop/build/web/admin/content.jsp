<%-- 
    Document   : content
    Created on : Jul 30, 2018, 10:15:26 AM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>content</title>
    </head>
    <body>
        
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getListCategorys();
        %>
        
        <div id="rightContent">
            <h3>Quản trị</h3>
            <div class="quoteOfDay">
            <b>Quote of the day :</b><br>
            <i style="color: #5b5b5b;">"If you think you can, you really can"</i>
            </div>
                    <div class="shortcutHome">
                    <a href=""><img src="img/posting.png"><br>Danh mục</a>
                    </div>
                    <div class="shortcutHome">
                    <a href=""><img src="img/photo.png"><br>Sản phẩm</a>
                    </div>
                    <div class="shortcutHome">
                    <a href=""><img src="img/halaman.png"><br>Đơn đặt hàng</a>
                    </div>
                    <div class="shortcutHome">
                    <a href=""><img src="img/halaman.png"><br>Thống kê</a>
                    </div>
                    <div class="clear"></div>

                    <div id="rightContent"><h3>Quản lý danh mục</h3>
                    <table class="data">

                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã danh mục</th>
                            <th class="data">Tên danh mục</th>
                            <th class="data" width="90px">Tùy chọn</th>
                        </tr>


                    </table>
                    </div>
                    
            </div>
        <div class="clear"></div>
        
    </body>
</html>
