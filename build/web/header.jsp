<%-- 
    Document   : header
    Created on : Oct 2, 2022, 7:34:43 PM
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
        <link rel="shortcut icon" href="./img/logo.png">
        <title>Plants Shop</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css" integrity="sha384-X8QTME3FCg1DLb58++lPvsjbQoCT9bp3MsUU3grbIny/3ZwUJkRNO8NPW6zqzuW9" crossorigin="anonymous">
        <link rel="stylesheet prefetch" href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css">

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
    </head>
    <body>



        <!-- Topbar Start -->
        <div class="container-fluid">
            <div class="row bg-secondary py-2 px-xl-5">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark" href="">FAQs</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="">Help</a>
                        <span class="text-muted px-2">|</span>
                        <a class="text-dark" href="">Support</a>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-dark pl-2" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row align-items-center py-3 px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a href="" class="text-decoration-none">
                        <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Plants</h1>
                    </a>
                </div>
                <div class="col-lg-6 col-6 text-left">
                    <form action="MainControlers" method="post">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search for products" name="txtsearch" value="<%=(request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">
                            <div class="input-group-append">
                                <input type="hidden" name="searchby" value="byname">
                                <input class="input-group-text bg-transparent text-primary" type="submit" value="search" name="action" >

                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-3 col-6 text-right">
                    <a href="" class="btn border">
                        <i class="fas fa-heart text-primary"></i>
                        <span class="badge">Like</span>
                    </a>
                    <a href="MainControlers?action=viewcart" class="btn border">
                        <i class="fas fa-shopping-cart text-primary"></i>
                        <span class="badge">View cart</span>
                    </a>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link" data-toggle="dropdown">Hoa Hồng <i class="fa fa-angle-down float-right mt-1"></i></a>
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                    <a href="" class="dropdown-item">Hoa Hồng Đỏ</a>
                                    <a href="" class="dropdown-item">Hoa Hồng Trắng</a>
                                    <a href="" class="dropdown-item">Hoa Hồng Đen</a>
                                </div>
                            </div>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link" data-toggle="dropdown">Hoa Tulip <i class="fa fa-angle-down float-right mt-1"></i></a>
                                <div class="dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0">
                                    <a href="" class="dropdown-item">Hoa Tulip đỏ</a>
                                    <a href="" class="dropdown-item">Hoa Tulip Trắng</a>
                                    <a href="" class="dropdown-item">Hoa Tulip cam</a>
                                </div>
                            </div>
                            <a href="MainControlers?action=search&txtsearch=1&searchby=bycate" class="nav-item nav-link">Hoa Tươi</a>
                            <a href="MainControlers?action=search&txtsearch=3&searchby=bycate" class="nav-item nav-link">Hoa cưới</a>
                            <a href="MainControlers?action=search&txtsearch=2&searchby=bycate" class="nav-item nav-link">Hoa sinh nhật</a>
                            <a href="MainControlers?action=search&txtsearch=4&searchby=bycate" class="nav-item nav-link">Hoa Tết</a>
                            <a href="MainControlers?action=search&txtsearch=6&searchby=bycate" class="nav-item nav-link">Hoa lễ</a>
                            <a href="MainControlers?action=search&txtsearch=7&searchby=bycate" class="nav-item nav-link">Hoa lễ tốt nghiệp</a>
                            <a href="MainControlers?action=search&txtsearch=8&searchby=bycate" class="nav-item nav-link">Hoa theo mùa</a>
                            <a href="MainControlers?action=search&txtsearch=1&searchby=bycate" class="nav-item nav-link">Best Sellers</a>
                        </div>
                    </nav>
                </div>
                <div class="col-lg-9">
                    <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                        <a href="" class="text-decoration-none d-block d-lg-none">
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="index.jsp" class="nav-item nav-link">Home</a>
                                <a href="personalPage.jsp" class="nav-item nav-link">Personal Page</a>
                                <a href="detail.html" class="nav-item nav-link ">Shop Detail</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="cart.html" class="dropdown-item">Shopping Cart</a>
                                        <a href="checkout.html" class="dropdown-item">Checkout</a>
                                    </div>
                                </div>
                                <a href="contact.html" class="nav-item nav-link">Contact</a>
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
                                <a href="personalPage.jsp" class="nav-item nav-link"><i style="font-size: 20px" class="icon-user"> </i></a>
                                <span class="nav-item nav-link"> | </span>
                                <a href="MainControlers?action=logout" class="nav-item nav-link">Logout</a>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        

    </body>
</html>
