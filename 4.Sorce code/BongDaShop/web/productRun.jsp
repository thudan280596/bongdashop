<%-- 
    Document   : productRun
    Created on : Aug 7, 2018, 4:05:36 PM
    Author     : Admin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Product"%>
<%@page import="DAO.ProductnewDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ProductnewDAO productnewDAO = new ProductnewDAO();
            long productID = 0;
//            if (request.getParameter("product_role") != null) {
//                product_role = (long) Long.parseLong(request.getParameter("product_role"));
//            }
//            Cart cart = (Cart) session.getAttribute("cart");
//            if (cart == null) {
//                cart = new Cart();
//                session.setAttribute("cart", cart);
//            }
//            
//            int pages = 0, firstResult = 0, maxResult=0, total =0;
//            if(request.getParameter("pages")!=null){
//                pages = (int) Integer.parseInt(request.getParameter("pages"));
//            }
////            total = productnewDAO.countProductByCategory(categoryID);
////            if(total<=4){
////                firstResult = 1;
////                maxResult = total;
////            }else{
////                firstResult = (pages - 1) * 4;
////                maxResult = 4;
////            }
            
            ArrayList<Product> listProduct = productnewDAO.getListProductBycategory(productID);
        %>
         <jsp:include page="header.jsp"></jsp:include>
         <br/> <br/>
         <div>
        
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
        </div>
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
