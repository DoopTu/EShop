<%-- 
    Document   : manageAccounts
    Created on : Oct 17, 2022, 9:50:59 PM
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
        <title>Manage Plants Page</title>
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
    </head>
    <body>
        <c:if test="${requestScope.msgadd != null}">
            <script>
                alert("The product was added!");
            </script>

        </c:if>

        <c:if test="${requestScope.msgchange != null}">
            <script>
                alert("The infomation was changed!");
            </script>

        </c:if>
        <div class="container-fluid bg-secondary mb-5" style="margin-bottom: -40px">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Manage Plants</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>
        <c:import url="header_loginedAdmin.jsp"/>
        <div style="position: relative">
            <form style="text-align: center" action="MainControlers" method="post" class="form_search_account">
                <input style="width: 500px;" type="text" name="txtsearch" value="<%=(request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">
                <select name="searchby">
                    <option value="byname">By name</option>
                    <option value="accID">By CateID</option>

                </select>
                <button style="background-color: #D19C97; border: 0.5px solid #EDF1FF;" type="submit" value="searchPlants" name="action" >Search</button>


            </form>

        </div>

        <table class="list_order" style="text-align: center; margin-top: 40px; width: 90%" border="0.1">
            <tr style="background-color:  #EDF1FF;">
                <th>PID</th>

                <th style="text-align: left; padding-left: 50px">PName</th>
                <th>Price</th>
                <th>Image</th>
                <th>Description</th>
                <th>Status</th>    
                <th>CateID</th>
                <th>Action</th>

            </tr>
            <form action="MainControlers" method="POST">
                <tr>
                    <td></td>
                    <td style="padding-left: 50px">
                        <input  type="text" name="addfullname" value="<%=(request.getParameter("addfullname") == null) ? "" : request.getParameter("addfullname")%>" />
                    </td>
                    <td>
                        <input type="text" name="addprice" value="<%=(request.getParameter("addprice") == null) ? "" : request.getParameter("addprice")%>"/>
                    </td>
                    <td>
                        <input type="text" name="addimg" value="<%=(request.getParameter("addimg") == null) ? "" : request.getParameter("addimg")%>"/>
                    </td>
                    <td>
                        <input style="width: 450px" type="text" name="addDescription" value="<%=(request.getParameter("addDescription") == null) ? "" : request.getParameter("addDescription")%>"/>
                    </td>
                    <td>
                        <input style="width: 50px" type="text" name="addstatus"/>
                        <%
                            if (request.getAttribute("msgstatus") != "") {
                        %>
                        <span style="color: red; position: relative">${requestScope.msgstatus}</span>
                        <%}%>
                    </td>
                    <td>
                        <input style="width: 50px" type="text" name="addCateID" value="<%=(request.getParameter("addCateID") == null) ? "" : request.getParameter("addCateID")%>"/>
                    </td>
                    <td>
                        <button style="background-color: #529040; border: 0.5px solid #EDF1FF; width: 100px" type="submit" value="addPlant" name="action" >Add</button>
                    </td>
                </tr>
            </form>

            <input type="hidden" name="action" value="searchPlants">

            <c:forEach var="plant" items="${sessionScope.listPlant}">
                <tr>
                    <td>${plant.getPID()}</td>

                    <td style="text-align: left; padding-left: 50px">${plant.getPName()}</td>
                    <td>${plant.getPPrice() } VND</td>
                    <td><img style="width: 100px; height: 100px" src="${plant.getPImgPath()}"></td>
                    <td>${plant.getPDescription()}</td>
                    <td>
                        <c:choose>
                            <c:when test="${plant.getPStatus() eq 1}"><span style="color: green">In Stock</span></c:when>
                            <c:otherwise> <span style="color: red">Out of stock</span></c:otherwise>
                        </c:choose>
                    </td>

                    <td>${plant.getPCateID()}</td>

                    <td>

                        <c:url var="mylink" value="MainControlers">
                            <c:param name="plantid" value="${plant.getPID()}"></c:param>
                            <c:param name="status" value="${plant.getPStatus()}"></c:param>
                            <c:param name="action" value="updatePlantsStatus"></c:param>
                        </c:url>
                        <c:choose>
                            <c:when test="${plant.getPStatus() eq 0}"><a style="font-size: 15px" href="${mylink}">UnRemove</a></c:when>
                            <c:otherwise> <a style="font-size: 15px" href="${mylink}">Remove</a></c:otherwise>
                        </c:choose>
                        
                        <form action="MainControlers" method="POST">
                            <input type="hidden" name="pid" value="${plant.getPID()}" />
                            <button style="background-color: #D19C97; border: 0.5px solid #EDF1FF; width: 100px" type="submit" value="editPlants" name="action" >Edit</button>
                        </form>


                    </td>
                </tr>
            </c:forEach>

        </table>

        <%@include file="footer.jsp" %>
    </body>
</html>
