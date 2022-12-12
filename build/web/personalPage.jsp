<%-- 
    Document   : personalPage
    Created on : Oct 2, 2022, 7:51:59 PM
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
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="mycss.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/logo.png">
        <title>Personal Page</title>
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
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Persional Page</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>
        <p style="text-align: center"><font color='#D19C97'>You must <a style="color: red" href="login.jsp">LOGIN</a> to view personal page</font></p>
            <%@include file="footer.jsp" %>
            <%
                } else
                    login = true;

                if (login) {
            %>
        <header>
            <%@include file="header_loginedUser.jsp" %>
        </header>
        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Persional Page</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>
        <h4 style="text-align: center">Welcome ' <%= name%> ' Comeback</h4>
        <br/>
        <h5 style="text-align: center">Your Order's history</h5>
        <div style="text-align: center; margin-bottom: 30px; margin-top: 30px">
<!--            <form action="MainControlers" method="POST">

                <span>From</span>
                <input type="date" name="datefrom">
                <span>To</span>
                <input type="date" name="dateto">
                <button style="border: none; background-color: #D19C97" type="submit" name="action" value="searchdate">Search</button>
            </form>-->
        </div>
        <section>
            <%
                ArrayList<Order> list = OrderDAO.getOrders(email);
                String[] status = {"", "Processing", "Completed", "Canceled"};
                if (list != null && !list.isEmpty()) {
            %>

            <table class="list_order" >
                <tr style="background-color: #EDF1FF; font-size: 18px;">
                    <td>Order ID</td>
                    <td>Order Date</td>
                    <td>Ship Date</td>
                    <td>Order's Status</td>
                    <td>Action</td>      
                </tr>
                <%
                    for (Order ord : list) {
                %>

                <tr>
                    <td><%=ord.getOrderID()%></td>                
                    <td><%=ord.getOrderDate()%></td>
                    <td><%=ord.getShipDate()%></td>


                <form action="MainControlers" method="POST">
                    <input type="hidden" name="orderid" value="<%=ord.getOrderID()%>">
                    <input type="hidden" name="status" value="<%=ord.getStatus()%>">
                    <% if (ord.getStatus() == 1) {%>
                    <td style="color: green"><%=status[ord.getStatus()]%>
                        <br/>
                        <button style="color: black; border: none; background-color: #D19C97" type="submit" name="action" value="updateOrderStatus">Cancel Order</button>

                    </td>
                    <%} else if (ord.getStatus() == 2) {%>
                    <td style="color: green"><%=status[ord.getStatus()]%> </td>
                    <%} else if (ord.getStatus() == 3) {%>
                    <td style="color: red"><%=status[ord.getStatus()]%> 
                        <br/>
                        <button style="color: black; border: none; background-color: #D19C97" type="submit" name="action" value="updateOrderStatus">PreOrder</button>
                    </td>
                    <%}%>
                </form>
                <td ><a href="OrderDetail.jsp?orderid=<%= ord.getOrderID()%>">Detail</a></td>
                </tr>

                <%
                    }
                %>


            </table>
            <%
            } else {
            %>
            <p>You don't have any order</p>
            <% }
            %>
        </section>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
        <%
            }
        %>

    </body>
</html>
