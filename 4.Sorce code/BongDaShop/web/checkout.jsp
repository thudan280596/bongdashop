<%-- 
    Document   : checkout
    Created on : Jul 20, 2018, 8:35:25 AM
    Author     : Admin
--%>

<%@page import="Model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check out</title>
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
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
    </head>
    <body>
        <%
            Users users = (Users) session.getAttribute("user");
            if(users==null){
                response.sendRedirect("/BongDaShop/login.jsp");
            }
            %>
        
        
        <jsp:include page="header.jsp"></jsp:include>

           <div class="container">
		<div class="account">
			<h2 class="account-in">Checkout</h2>
                        <form action="CheckOutServlet" method="POST"> 
                        
				<div>			
					<span>Address*</span>
                                        <input type="text" name="address"> 
				</div>	
                                <div>			
					<span>Payment*</span> 
                                        <select name="payment">
                                            <option value="Chuyển khoản ngân hàng">Chuyển khoản ngân hàng.</option>
                                            <option value="Thanh toán trực tiếp">Thanh toán trực tiếp khi nhận hàng.</option>
                                        </select>
				</div>
                                <input type="submit" value="Checkout"> 
                        </form>
		</div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
