<%-- 
    Document   : newjsp
    Created on : Sep 17, 2022, 11:43:34 AM
    Author     : LENOVO
--%>

<%@page import="dao.AccountDAO"%>
<%@page import="basicclass.Account"%>
<%@page import="basicclass.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PlantDAO"%>
<%@page import="dto.Plant"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="utf-8">
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
        <link href="css/customstyle.css" rel="stylesheet">
    </head>
    <body>
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
        <div class="container-fluid mb-5">
            <div class="row border-top px-xl-5">
                <div class="col-lg-3 d-none d-lg-block">
                    <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" data-toggle="collapse" href="#navbar-vertical" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                        <h6 class="m-0">Categories</h6>
                        <i class="fa fa-angle-down text-dark"></i>
                    </a>
                    <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                        <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                            <div class="nav-item dropdown">

                                <a href="MainControlers?name=action&value=search"  class="nav-link" data-toggle="dropdown">Hoa Hồng <i class="fa fa-angle-down float-right mt-1"></i></a>
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
                            <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Plant</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                                <a href="personalPage.jsp" class="nav-item nav-link">Personal Page</a>
                                <a href="detail.jsp" class="nav-item nav-link">Shop Detail</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="cart.jsp" class="dropdown-item">Shopping Cart</a>
                                        <a href="checkout.jsp" class="dropdown-item">Checkout</a>
                                    </div>
                                </div>
                                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
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


                    <div id="header-carousel" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active" style="height: 410px;">
                                <img class="img-fluid" src="img/slideshow1.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Beautiful Flowers</h3>
                                        <a href="MainControlers?action=search" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="img/slideshow2.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                        <a href="MainControlers?action=search" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item" style="height: 410px;">
                                <img class="img-fluid" src="img/slideshow3.jpg" alt="Image">
                                <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                    <div class="p-3" style="max-width: 700px;">
                                        <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                        <h3 class="display-4 text-white font-weight-semi-bold mb-4">The Best Quality</h3>
                                        <a href="MainControlers?action=search" class="btn btn-light py-2 px-3">Shop Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                <span class="carousel-control-prev-icon mb-n2"></span>
                            </div>
                        </a>
                        <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                            <div class="btn btn-dark" style="width: 45px; height: 45px;">
                                <span class="carousel-control-next-icon mb-n2"></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar End -->


        <!-- Featured Start -->
        <div style="margin-top: -50px" class="container-fluid pt-5">
            <div class="row px-xl-5 pb-3">
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">Best products</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                        <h5 class="font-weight-semi-bold m-0">Free Ship</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">Return in 14 days</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                        <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                        <h5 class="font-weight-semi-bold m-0">Support 24/7</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Featured End -->



        <!-- New Products -->
        <div class=" mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 100px; margin-top: -40px">
                <h2 class="font-weight-semi-bold text-uppercase mb-3">Best seller</h2>

            </div>
        </div>
        <!-- New Products End -->




        <!-- Products Start -->
        <%
            String keyword = request.getParameter("txtsearch");
            String searchby = request.getParameter("searchby");
            ArrayList<Plant> list;
            String[] tmp = {"Out of stock", "Availble"};
            if (keyword == null && searchby == null) {
                list = PlantDAO.getPlant("", "");
            } else {
                list = PlantDAO.getPlant(keyword, searchby);
            }

            if (list != null && !list.isEmpty()) {
        %>




        <div style="margin-top: -60px" class="row px-xl-5 pb-3">
            <%
                for (Plant plant : list) {
            %>

            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="<%= plant.getPImgPath()%>" alt="">
                    </div>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <h6 class="text-truncate mb-3"><%=plant.getPName()%></h6>
                        <h6 class="text-truncate mb-3"><%=plant.getPDescription()%></h6>
                        <div class="d-flex justify-content-center">
                            <h6><%=plant.getPPrice()%> VND</h6><h6 class="text-muted ml-2"><del style="color: red">210000 VND</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <input type="hidden" value="<%= plant.getPID() %>" name="pid">
                        <a href="GetPlantServlet?pid=<%=plant.getPID() %>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="MainControlers?action=addtocart&pid=<%= plant.getPID()%>" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                    </div>
                </div>
            </div>

            <%
                }
            %>
        </div>
        <%
            }
        %>





        <!-- Subscribe Start -->
        <div class="container-fluid bg-secondary my-5">
            <div class="row justify-content-md-center py-5 px-xl-5">
                <div class="col-md-6 col-12 py-5">
                    <div class="text-center mb-2 pb-2">
                        <h2 class="section-title px-5 mb-3"><span class="bg-secondary px-2">Stay Updated</span></h2>
                        <p>Amet lorem at rebum amet dolores. Elitr lorem dolor sed amet diam labore at justo ipsum eirmod duo labore labore.</p>
                    </div>
                    <form action="">
                        <div class="input-group">
                            <input type="text" class="form-control border-white p-4" placeholder="Email Goes Here">
                            <div class="input-group-append">
                                <button class="btn btn-primary px-4">Subscribe</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Subscribe End -->





        <!-- Footer Start -->
        <%@include file="footer.jsp" %>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
