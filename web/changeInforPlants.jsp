<%-- 
    Document   : changeInforPlants
    Created on : Oct 29, 2022, 1:54:45 PM
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
        <title>Change Plants Page</title>
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
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Change Information Plants</h1>
                <div class="d-inline-flex">
                    <p class="m-0"><a href="index.jsp">Home</a></p>

                </div>
            </div>
        </div>
        <c:import url="header_loginedAdmin.jsp"/>
        <div >
            <form style="text-align: center" action="MainControlers" method="post" class="form_search_account">
                <input style="width: 500px;" type="text" name="txtsearch" value="<%=(request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">
                <select name="searchby">
                    <option value="byname">By name</option>
                    <option value="accID">By CateID</option>

                </select>
                <button style="background-color: #D19C97; border: 0.5px solid #EDF1FF;" type="submit" value="searchPlants" name="action" >Search</button>


            </form>
        </div>
        <table class="list_order" style="text-align: center; margin-top: 4  0px" border="0.1">
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
            <input type="hidden" name="action" value="searchPlants">
            <form action="MainControlers" method="POST">

                <c:forEach var="plant" items="${requestScope.plantlist}">
                    <tr>
                        
                        <td style="text-align: left; padding-left: 10px">${plant.getPID()}

                        </td>
                        <td style="text-align: left; padding-left: 50px">
                            <input style="margin-right: 5px;" type="text" name="changepname" value="<%=(request.getParameter("changepname") == null) ? "" : request.getParameter("changepname")%>"/>
                            <input type="hidden" name="oldpname" value="${plant.getPName()}"/>
                            ${plant.getPName()}
                        </td>

                        <td>
                            <input style="margin-right: 5px;" type="text" name="changeprice" value="<%=(request.getParameter("changeprice") == null) ? "" : request.getParameter("changeprice")%>"/>
                            <input type="hidden" name="oldprice" value="${plant.getPPrice()}"/>
                            ${plant.getPPrice()} VND
                        </td>

                        <td>
                            <input style="margin-right: 5px;" type="text" name="changeimg" value="<%=(request.getParameter("changeimg") == null) ? "" : request.getParameter("changeimg")%>"/>
                            <input type="hidden" name="oldimg" value="${plant.getPImgPath()}"/>
                            ${plant.getPImgPath()}
                        </td>

                        <td>
                            <input style="margin-right: 5px; margin-top: 25px " type="text" name="changedes" value="<%=(request.getParameter("changedes") == null) ? "" : request.getParameter("changedes")%>"/>
                            <input type="hidden" name="olddes" value="${plant.getPDescription()}"/>
                            ${plant.getPDescription()}
                        </td>

                        <td>
                            
                            <input style="margin-right: 5px;" type="text" name="changepstatus" value="<%=(request.getParameter("changepstatus") == null) ? "" : request.getParameter("changepstatus")%>"/>
                            <input type="hidden" name="oldpstatus" value="${plant.getPStatus()}"/>
                            <%
                                if (request.getAttribute("msgstatus") != "") {
                            %>
                            <span style="color: red; position: relative">${requestScope.msgstatus}</span>
                            <%}%>
                            <c:choose>
                                <c:when test="${plant.getPStatus() eq 1}"><span style="color: green">In Stock</span></c:when>
                                <c:otherwise> <span style="color: red">Out of stock</span></c:otherwise>
                            </c:choose>
                        </td>

                        <td>
                            <input style="margin-right: 5px;" type="text" name="changecateid" value="<%=(request.getParameter("changecateid") == null) ? "" : request.getParameter("changecateid")%>"/>
                            <input type="hidden" name="oldcateid" value="${plant.getPCateID()}"/>
                            ${plant.getPCateID()}
                        </td>

                        <td>
                            <br/>
                            <input type="hidden" name="pid" value="${plant.getPID()}">
                            <button style="width: 60px ;background-color: #D19C97; border: 0.5px solid #EDF1FF; position: absolute; margin-top: -37px; margin-left: -30px" type="submit" name="action" value="saveChangePlants">Save</button>

                        </td>
                    </tr>
                </c:forEach>

            </form>
    </body>
</html>
