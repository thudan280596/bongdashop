<%-- 
    Document   : resgister
    Created on : Jul 15, 2018, 9:01:47 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>resgister</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

                function check_username_ajax(username) {
                    $("#user-result").html('<img src="img/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="account">
                    <h2 class="account-in">Register</h2>
                    <form action="${root}/UsersServlet" method="POST" name="myForm" onsubmit="return validateForm()"> 	
                    <div>

                        <span class="name-in">Username*</span>
                        <input type="text" name="email" id="email"> 
                        <span id="user-result"></span>
                    </div>			
                    <div> 
                        <span class="word">Password*</span>
                        <input type="password" name="pass">
                        <span></span>
                    </div>
                    <input type="hidden" value="insert" name="command">
                    <input type="submit"  value="Register"> 
                    <%

                        if (request.getAttribute("message") != null) {
                    %>  <p>
                            ${message
                            }</p>
                        <%}%>
                </form>
            </div>
        </div>
        <script>
            function validateForm() {
                debugger;
                var pass = document.forms["myForm"]["pass"].value;
                var email = document.forms["myForm"]["email"].value;
                if (pass == "") {
                    alert("BẠN CHƯA NHẬP PASS");
                    return false;
                }
                if (email == "") {
                    alert("BẠN CHƯA NHẬP EMAIl");
                    return false;
                }

            }
        </script>                        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
