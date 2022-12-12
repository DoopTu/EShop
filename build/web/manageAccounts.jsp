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
        <title>ManageAccount Page</title>
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
        <c:if test="${requestScope.msgchange != null}">
            <script>
                alert("The infomation was changed!");
            </script>
            
        </c:if>
        <div class="container-fluid bg-secondary mb-5" style="margin-bottom: -40px">
            <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 200px">
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Manage Account</h1>
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
                    <option value="accID">By AccID</option>
                    <option value="email">By email</option>
                </select>
                <button style="background-color: #D19C97; border: 0.5px solid #EDF1FF;" type="submit" value="searchAccount" name="action" >Search</button>
            </form>
        </div>
        <table class="list_order" style="text-align: center; margin-top: 4  0px" border="0.1">
            <tr style="background-color:  #EDF1FF;">
                <th>ID</th>
                <th style="text-align: left; padding-left: 50px">Email</th>
                <th style="text-align: left; padding-left: 50px">Full Name</th>
                <th>Status</th>
                <th>Phone</th>
                <th>Role</th>
                <th>Action</th>
                <th></th>
            </tr>
            <input type="hidden" name="action" value="searchAccount">
            <c:if test="${requestScope.msg == null }">
                <c:forEach var="acc" items="${sessionScope.listacc}">
                    <tr>
                        <td>${acc.getAccID()}</td>
                        <td style="text-align: left; padding-left: 50px">${acc.getEmail()}</td>
                        <td style="text-align: left; padding-left: 50px">${acc.getFullname()}</td>
                        <td>
                            <c:choose>
                                <c:when test="${acc.getStatus() eq 1}"><span style="color: green">Active</span></c:when>
                                <c:otherwise> <span style="color: red">InActive</span></c:otherwise>
                            </c:choose>
                        </td>
                        <td>${acc.getPhone()}</td>

                        <td>
                            <c:choose>
                                <c:when test="${acc.getRole() eq 1}">Admin</c:when>
                                <c:otherwise>User</c:otherwise>
                            </c:choose>
                        </td>
                        <td >
                            <c:if test="${acc.getRole() eq 0}">
                                <c:url var="mylink" value="MainControlers">
                                    <c:param name="email" value="${acc.getEmail()}"></c:param>
                                    <c:param name="status" value="${acc.getStatus()}"></c:param>
                                    <c:param name="action" value="updateStatusAccount"></c:param>
                                </c:url>
                                
                                <c:choose>
                                <c:when test="${acc.getStatus() eq 1}"><a href="${mylink}">Ban</a></c:when>
                                <c:otherwise><a href="${mylink}">UnBan</a></c:otherwise>
                            </c:choose>
                                

                            </c:if>

                        </td>
                        <td>
                            <form action="MainControlers" method="POST">
                                <input type="hidden" name="accid" value="${acc.getAccID()}">
                                <button style="width: 60px ;background-color: #D19C97; border: 0.5px solid #EDF1FF;" type="submit" name="action" value="changeProfile">Edit</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${requestScope.msg == \"\" }">
                <h3 style="color: red">${requestScope.msg}</h3>
            </c:if>
        </table>
        <%@include file="footer.jsp" %>
    </body>
</html>
