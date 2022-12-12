<%-- 
    Document   : OrderDetail
    Created on : Oct 7, 2022, 8:17:03 PM
    Author     : LENOVO
--%>

<%@page import="dao.AccountDAO"%>
<%@page import="basicclass.Account"%>
<%@page import="basicclass.Account"%>
<%@page import="dto.OrderDetail"%>
<%@page import="dao.OrderDAO"%>
<%@page import="dto.Order"%>
<%@page import="dto.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Detail</title>
        <link rel="shortcut icon" href="./img/logo.png">
        <link rel="stylesheet" href="mycss.css" type="text/css" />
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
        
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Order Detail</h1>
                <div class="d-inline-flex">

                    <p class="m-0"><a href="index.jsp">Home</a></p>
                    <p class="m-0 px-2">-</p>
                    <p class="m-0"><a style="color: black" href="personalPage.jsp">View all orders</a></p>

                </div>
            </div>
        </div>
        <p style="text-align: center"><font color='#D19C97'>You must <a style="color: red" href="login.jsp">LOGIN</a> to view Order detail page</font></p>
            <%@include file="footer.jsp" %>
            <%
            } else {
            %>
        <header>
            <%@include file="header_loginedUser.jsp" %>
        </header>
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Order Detail</h1>
                <div class="d-inline-flex">
                    
                    <p class="m-0 px-2">-</p>
                    <p class="m-0"><a href="personalPage.jsp">View all orders</a></p>
                    <p class="m-0 px-2">-</p>

                </div>
            </div>
        </div>
        <section style="text-align: center">
            <h3 style="text-align: center">Welcome ' <%= name%> ' Comeback</h3>          


        </section>

        <section>
            <table class="list_order" style="margin-top: 20px" >
                <tr style="background-color: #EDF1FF">
                    <td>Order ID</td>
                    <td>Plant ID</td>
                    <td>Plant Name</td>
                    <td>Image Path</td>
                    <td>Price/Product</td>
                    <td>Quantity</td>                        
                </tr>
                <%
                    String orderid = request.getParameter("orderid");
                    if (orderid != null) {
                        int orderID = Integer.parseInt(orderid.trim());
                        ArrayList<OrderDetail> list = OrderDAO.getOrderDetails(orderID);
                        if (list != null && !list.isEmpty()) {
                            int money = 0;
                            for (OrderDetail ordDetail : list) {
                %>

                <tr>
                    <td><%=ordDetail.getOrderID()%></td>
                    <td><%=ordDetail.getPlantID()%></td>
                    <td style="text-align: center"><%=ordDetail.getPlantName()%></td>
                    <td> <img style="height: 50px; width: 50px" src=' <%= ordDetail.getImgPath()%> ' class='plantimg' /></td>
                    <td><%= ordDetail.getPrice()%> VND</td>
                    <td><%=ordDetail.getQuantity()%></td>
                    <% money = money + ordDetail.getPrice() * ordDetail.getQuantity(); %>
                </tr>

                <%
                    }// end for
                %>
                
            </table>
                <span style="float: right; margin-right: 10%; margin-top: 20px; padding-bottom: 20px;  font-size: 20px">Total money: <%=money%> VND</span>
            <%
            }//end if
            else {%>
            <p>You don't have any order</p>
            <%
                    }
                }//end if
            %>
        </section>
        <footer style="margin-top: 20px">
            <%@include file="footer.jsp" %>
        </footer>
        <%
            }
        %>
    </body>
</html>
