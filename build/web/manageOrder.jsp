<%-- 
    Document   : manageOrder
    Created on : Nov 2, 2022, 11:57:11 AM
    Author     : LENOVO
--%>

<%@page import="dao.AccountDAO"%>
<%@page import="basicclass.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Oreder Page</title>
        <link rel="shortcut icon" href="./img/logo.png">
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
        <link href="css/style.css.css" rel="stylesheet">
        <link href="css/customstyle.css" rel="stylesheet">
    </head>
    <body>

        <div class="container-fluid bg-secondary mb-5" style="margin-bottom: -40px">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Manage Orders</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>
        <c:import url="header_loginedAdmin.jsp"/>
        <div >
            <form action="MainControlers" style="text-align: center" method="POST">

                <span>From</span>
                <input type="date" name="datefrom" value="<%=(request.getParameter("datefrom") == null) ? "" : request.getParameter("datefrom")%>">
                <span>To</span>
                <input type="date" name="dateto" value="<%=(request.getParameter("dateto") == null) ? "" : request.getParameter("dateto")%>">
                <button style="border: none; background-color: #D19C97" type="submit" name="action" value="searchdate">Search </button>
            </form>
        </div>
        <table class="list_order" style="text-align: center; margin-top: 40px" border="0.1">
            <tr style="background-color:  #EDF1FF;">
                <th>OrderID</th>
                <th>Order Date</th>
                <th>Ship Date</th>
                <th>Status</th>
                <th>AccID</th>

            </tr>

            <input type="hidden" name="action" value="searchOrders">
            
                <c:forEach var="order" items="${sessionScope.listOrder}">
                    <tr>
                        <td>${order.getOrderID()}</td>
                        <td>${order.getOrderDate()}</td>
                        <td>${order.getShipDate()}</td>
                        <td>
                            <c:choose>
                                <c:when test="${order.getStatus() eq 1}"><span style="color: orange">Processing</span></c:when>
                                <c:when test="${order.getStatus() eq 2}"><span style="color: green">Completed</span></c:when>
                                <c:when test="${order.getStatus() eq 3}"><span style="color: red">Canceled</span></c:when>
                            </c:choose>
                        </td>
                        <td>${order.getAccID()}</td>

                    </tr>
                </c:forEach>
            

        </table>
        <%@include file="footer.jsp" %>
    </body>
</html>
