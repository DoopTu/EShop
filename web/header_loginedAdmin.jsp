<%-- 
    Document   : header_loginedAdmin.jsp
    Created on : Oct 17, 2022, 9:20:50 PM
    Author     : LENOVO
--%>

<%@page import="dao.AccountDAO"%>
<%@page import="basicclass.Account"%>
<%@page import="basicclass.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="./img/logo.png">
        <title>Plants Shop</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link href="mycss.css" rel="stylesheet" type="text/css">
    </head>
    <body>



        
        <div style="margin: 0 auto; " class="col-lg-9">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                    <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div style="" class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav mr-auto py-0">
                        <a href="index.jsp" class="nav-item nav-link">Home</a>
                        <a href="personalPage.jsp" class="nav-item nav-link">Personal Page</a>
                        <a href="MainControlers?action=manageAccounts" class="nav-item nav-link ">Manage Accounts</a>
                        <a href="MainControlers?action=searchPlants" class="nav-item nav-link ">Manage Plants</a>
                        <a href="MainControlers?action=searchOrders" class="nav-item nav-link ">Manage Orders</a>
                        <a href="MainControlers?action=searchCates" class="nav-item nav-link ">Manage Categories</a>
                    </div>
                    <%
                        String name = (String) session.getAttribute("name");
                        String email = (String) session.getAttribute("email");
                        Cookie[] c = request.getCookies();
                        boolean login = false;
                        if (name == null) {
                            String token = "";
                            for (Cookie acookie : c) {
                                if (acookie.getName().equals("selector")) {
                                    token = acookie.getValue();
                                    Account acc = AccountDAO.getAccounts(token);
                                    if (acc != null) {
                                        name = acc.getFullname();
                                        email = acc.getEmail();
                                        login = true;
                                    }
                                }
                            }
                    %>
                    <div class="navbar-nav ml-auto py-0">
                        <a href="login.jsp" class="nav-item nav-link">Login</a>
                        <span class="nav-item nav-link"> | </span>
                        <a href="registration.jsp" class="nav-item nav-link">Register</a>
                    </div>
                    <%
                        } else
                            login = true;

                        if (login) {
                    %>
                    <div class="navbar-nav ml-auto py-0">
                        <a href="personalPage.jsp" class="nav-item nav-link">Admin  <i style="font-size: 20px" class="icon-user"> </i></a>
                        <span class="nav-item nav-link"> | </span>
                        <a href="MainControlers?action=logout" class="nav-item nav-link">Logout</a>
                    </div>
                    <%
                        }
                    %>
                </div>
            </nav>
        </div>
                    
    </body>
</html>
