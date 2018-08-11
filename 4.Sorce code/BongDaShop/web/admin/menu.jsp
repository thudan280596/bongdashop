<%-- 
    Document   : menu
    Created on : Jul 30, 2018, 10:13:56 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu</title>
        
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        
        <div id="leftBar">
            <ul>
                    <li><a href="MenuServlet?flag=home">Trang chủ</a></li>
                    <li><a href="MenuServlet?flag=category">Danh mục</a></li>
                    <li><a href="MenuServlet?flag=product">Sản phẩm</a></li>
                    <li><a href="MenuServlet?flag=bill">Đơn hàng</a></li>
                    <li><a href="MenuServlet?flag=chart">Thống kê</a></li>
            </ul>
	</div>
        
    </body>
</html>
