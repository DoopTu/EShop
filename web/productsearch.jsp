<%-- 
    Document   : productsearch
    Created on : Oct 16, 2022, 8:52:36 PM
    Author     : LENOVO
--%>

<%@page import="dao.PlantDAO"%>
<%@page import="dto.Plant"%>
<%@page import="dto.Plant"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/logo.png">
        <title>Products</title>

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
    </head>
    <body>
        <%@include file="header.jsp" %>
        <!-- Page Header Start -->
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Products</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>
        <!-- Page Header End -->
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




        <div  id="show-product" class="row px-xl-5 pb-3 show-product">
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
                            <h6><%=plant.getPPrice()%> VND</h6><h6 class="text-muted ml-2"><del style="color: red">210000</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="GetPlantServlet?pid=<%=plant.getPID() %>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                        <a href="MainControlers?action=addtocart&pid=<%= plant.getPID() %>" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        
                    </div>
                </div>
            </div>

            <%
                }
            %>
        </div>
        <%
            } else {
            %>
            <h3 style="text-align: center; color: red"><%= request.getAttribute("msg") %></h3>
        <%
            }
        %>
        <%@include file="footer.jsp" %>
    </body>
</html>
