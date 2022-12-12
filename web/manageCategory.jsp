<%-- 
    Document   : manageCategory
    Created on : Oct 29, 2022, 7:52:05 PM
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
        <title>JSP Page</title>
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
                    <option value="byname">By Cate Name</option>
                    <option value="accID">By CateID</option>

                </select>
                <button style="background-color: #D19C97; border: 0.5px solid #EDF1FF;" type="submit" value="searchCates" name="action" >Search</button>


            </form>

        </div>
        <table class="list_order" style="text-align: center; width: 30%" border="0.1">
            <tr style="background-color:  #EDF1FF;">
                <th>CateID</th>

                <th style="text-align: left; padding-left: 50px">Category Name</th>
                <th>Action</th>


            </tr>
            <form action="MainControlers" method="POST">
                <tr>
                    <td></td>
                    <td style="">
                        <input style="margin-left: 30px" type="text" name="addcname" value="<%=(request.getParameter("addcname") == null) ? "" : request.getParameter("addcname")%>" />
                    </td>
                    <td>
                        <button style="background-color: #529040; border: 0.5px solid #EDF1FF; width: 100px" type="submit" value="addCate" name="action" >Add</button>
                    </td>
                </tr>
            </form>

            <input type="hidden" name="action" value="searchCates">
            <c:forEach var="cate" items="${sessionScope.listcate}">
                <tr>
                    <td>${cate.getCateID()}</td>

                    <td style="text-align: left; padding-left: 50px">${cate.getCateName()}</td>

                    <td>
                        <form action="MainControlers" method="POST">
                            <input type="hidden" name="cateid" value="${cate.getCateID()}" />
                            <button style="background-color: #D19C97; border: 0.5px solid #EDF1FF; width: 100px" type="submit" value="editCates" name="action" >Edit</button>
                        </form>


                    </td>
                </tr>
            </c:forEach>
        </table>
        <%@include file="footer.jsp" %>
    </body>
</html>
