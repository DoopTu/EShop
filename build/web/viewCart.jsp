<%-- 
    Document   : viewCart
    Created on : Oct 8, 2022, 1:39:50 PM
    Author     : LENOVO
--%>

<%@page import="dao.PlantDAO"%>
<%@page import="dto.Plant"%>
<%@page import="dto.Plant"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View cart</title>
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
        <link href="css/style.css" rel="stylesheet">
        <link href="css/customstyle.css" rel="stylesheet">

        <script type="text/javascript">
            function warning()
            {
                var ans = window.confirm('Are you sure to delete this product?');
                if (ans === true)
                    return true;
                else
                    return false;
            }
        </script>
    </head>
    <body>

        <%@include file="header.jsp" %>

        <div class="container-fluid bg-secondary mb-5">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">View cart</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="personalPage.jsp">Personal Page</a></p>

                </div>
            </div>
        </div>
        <% if (request.getAttribute("msg") != null) {
        %>
        <script>
            alert("Product is added!");
        </script>
        <%
            }
        %>
        <section>
            <%
                int total = 0;
                String name1 = (String) session.getAttribute("name");
                if (name1 != null) {

            %>
            
            <%
                }
            %>
            <% if (request.getAttribute("WARNING") != null){ %>
            <div style="color: red; margin: 0 auto; text-align: center; margin-bottom: 30px"> <span><%= (request.getAttribute("WARNING") == null) ? "" : (String) request.getAttribute("WARNING")%> </span>
            
            </div>
            <% } %>
        </section>

        <div class="contain_viewcart">
            <table   class="detail_viewcart" style="">
                <tr style="background-color: #EDF1FF;">
                    <td>Product ID</td>
                    <td>Product</td>
                    <td>Quantity</td>
                    <td>Action</td>
                </tr>
                <%
                    HashMap<String, Integer> cart = (HashMap) session.getAttribute("cart");
                    if (cart != null) {
                        Set<String> pids = cart.keySet();
                        for (String pid : pids) {
                            int quantity = cart.get(pid);
                            Plant p = PlantDAO.getPlant(Integer.parseInt(pid));
                            total = total + quantity * p.getPPrice();

                %>

                <form action="MainControlers" method="post">
                    <tr style="border: 0.5px solid #EDF1FF">
                        <td><input type="hidden" value="<%= pid%>" name="pid"><a href="GetPlantServlet?pid=<%=pid%>"><%=pid%></a></td>
                        <td style="text-align: left"> <img style="height: 50px; width: 50px" src="<%= p.getPImgPath()%>"> <span><%=p.getPName()%> </span></td>
                        <td><input style="width: 80px; border: none" type="number" value="<%= quantity%>" name="quantity"></td>
                        <td><button style="background-color: #D19C97; border: none" type="submit"  value="update" name="action">Update</button>
                            <button style="background-color: #D19C97; border: none" type="submit" value="delete" name="action" onclick = "return warning()">Delete</button>
                        </td>
                    </tr>
                </form>



                <%
                    }
                } else {

                %>
                <tr><td>Your cart is empty</td></tr>
                <%                    }

                %>
            </table>
            <div class="cart_summary">
                <div><span>Cart Summary</span></div>
                <p>Total money: <%=total%> VND</p>
                <p>Order Date: <%= (new Date()).toString()%></p>
                <p>Ship Date: N/A</p>
                <form action="MainControlers" method="post">
                    <button type="submit" value="saveorder" name="action" class="submitorder">Order to check out</button>

                </form>
            </div>
        </div>
                <footer>
                    <%@include file="footer.jsp" %>
                </footer>
                   
    </body>
</html>
