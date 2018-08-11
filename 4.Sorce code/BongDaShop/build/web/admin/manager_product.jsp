<%-- 
    Document   : manager_product
    Created on : Jul 30, 2018, 11:02:47 AM
    Author     : Admin
--%>


<%@page import="Model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager product</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>

        <%
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> listProduct = productDAO.getListProduct();
        %>

        <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

                <div id="rightContent">
                    <h3>Quản lý sản phẩm</h3>
                    <a href="${root}/admin/insert_product.jsp">Thêm sản phẩm</a>
                <table class="data">
                    <tr class="data">
                        <th class="data" width="30px">STT</th>
<!--                        <th class="data">Mã danh mục </th>-->
                        <th class="data">Mã sản phẩm </th>
                        <th class="data">Tên sản phẩm</th>
                        <th class="data" width="75px">Tùy chọn</th>
                    </tr>

                    <%                            int count = 0;
                        for (Product product : listProduct) {
                            count++;

                    %>

                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        
                        <td class="data"><%=product.getProductID()%></td>
                        <td class="data"><%=product.getProductName()%></td>
                        <td class="data" width="90px">
                    <center>
                        <a href="#">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                        <a href="#">Xóa</a>
                    </center>
                    </td>
                    </tr>
                    <% }%>
                </table>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
