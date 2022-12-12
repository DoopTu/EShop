<%-- 
    Document   : viewPlant
    Created on : Oct 17, 2022, 8:56:55 PM
    Author     : LENOVO
--%>
<%@page import="basicclass.Account"%>
<%@page import="basicclass.Account"%>
<%@page import="dao.AccountDAO"%>
<%@page import="dao.OrderDAO"%>
<%@page import="dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/logo.png">
        <title>View Plants</title>
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

        
        <%@include file="header_loginedUser.jsp" %>
            <%
                } else
                    login = true;

                if (login) {
            %>
        <header>
            <%@include file="header_loginedUser.jsp" %>
        </header>
        <% } %>
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">View Plants</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>


        <jsp:useBean id="plantObj" class="dto.Plant" scope="request"/>
        <table style="margin: 0 auto">
            <tr><td rowspan="8"><img src="<jsp:getProperty name="plantObj" property="PImgPath"></jsp:getProperty>"></td></tr>

                <tr ><td style="padding-left: 30px">Product Name: <jsp:getProperty name="plantObj" property="PName"></jsp:getProperty> </td></tr>
                <tr>
                    <td style="padding-left: 30px"><div class="text-primary mr-2">
                            <small class="fas fa-star"></small>
                            <small class="fas fa-star"></small>
                            <small class="fas fa-star"></small>
                            <small class="fas fa-star-half-alt"></small>
                            <small class="far fa-star"></small>
                        </div>
                    </td>
                </tr>
                <tr><td style="padding-left: 30px">Price: <jsp:getProperty name="plantObj" property="PPrice"></jsp:getProperty> VND</td></tr>
            <tr><td style="padding-left: 30px">Description: <jsp:getProperty name="plantObj" property="PDescription"></jsp:getProperty> </td></tr>
                <tr>
                    <td style="padding-left: 30px">Status: 
                        <c:choose>
                            
                            <c:when test="${plantObj.PStatus eq 0}"><span style="color: green">In Stock</span></c:when>
                            <c:otherwise> <span style="color: red">Out of stock</span></c:otherwise>
                        </c:choose>

                    

                    </td>
                </tr>
                <tr><td style="padding-left: 30px">Category: <jsp:getProperty name="plantObj" property="PCateName"></jsp:getProperty> </td></tr>
            <tr><td style="padding-left: 30px"><a href="MainControlers?action=addtocart&pid=<%= plantObj.getPID()%>" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a></td></tr>    
        </table>





        <%@include file="footer.jsp" %>
        
    </body>
</html>
