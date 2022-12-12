<%-- 
    Document   : changeProfile
    Created on : Oct 28, 2022, 1:15:34 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.AccountDAO"%>
<%@page import="basicclass.Account"%>
<%@page import="java.util.ArrayList"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Profile Page</title>
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
                <h1 class="font-weight-semi-bold text-uppercase mb-3">Change Profile</h1>
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
                
            </tr>
            <input type="hidden" name="action" value="searchAccount">
            <form action="MainControlers" method="POST">
                
                    <c:forEach var="acc" items="${requestScope.acclist}">
                        <tr>
                            <td>${acc.getAccID()}</td>
                            <td style="text-align: left; padding-left: 50px">${acc.getEmail()}

                            </td>
                            <td style="text-align: left; padding-left: 50px">${acc.getFullname()}
                                <input style="margin-right: 5px;" type="text" name="changefullname" value="<%=(request.getParameter("changefullname") == null) ? "" : request.getParameter("changefullname")%>"/>
                                <input type="hidden" name="oldfullname" value="${acc.getFullname()}"/>
                            </td>
                            <td>
                                <c:choose>
                                    <c:when test="${acc.getStatus() eq 1}"><span style="color: green">Active</span></c:when>
                                    <c:otherwise> <span style="color: red">InActive</span></c:otherwise>
                                </c:choose>
                                <input style="margin-right: 5px;" type="text" name="changestatus" value="<%=(request.getParameter("changestatus") == null) ? "" : request.getParameter("changestatus")%>"/>
                                <input type="hidden" name="oldstatus" value="${acc.getStatus()}"/>
                                <%
                                    if(request.getAttribute("msgstatus") != ""){
                                %>
                                <span style="color: red; position: relative">${requestScope.msgstatus}</span>
                                <%}%>
                            </td>
                            <td>${acc.getPhone()}
                                <input style="margin-right: 5px;" type="text" name="changephone" value="<%=(request.getParameter("changephone") == null) ? "" : request.getParameter("changephone")%>"/>
                                <input type="hidden" name="oldphone" value="${acc.getPhone()}"/>
                            </td>

                            <td>
                                <c:choose>
                                    <c:when test="${acc.getRole() eq 1}">Admin</c:when>
                                    <c:otherwise>User</c:otherwise>
                                </c:choose>
                                <input style="margin-right: 5px;" type="text" name="changerole" value="<%=(request.getParameter("changerole") == null) ? "" : request.getParameter("changerole")%>"/>
                                <input type="hidden" name="oldrole" value="${acc.getRole()}"/>
                                <%
                                    if(request.getAttribute("msgrole") != ""){
                                %>
                                <span style="color: red; ">${requestScope.msgrole}</span>
                                <%}%>
                            </td>
                            
                            <td>
                                <br/>
                                <input type="hidden" name="accid" value="${acc.getAccID()}">
                                <button style="width: 60px ;background-color: #D19C97; border: 0.5px solid #EDF1FF; margin-left: 5px; margin-right: 5px" type="submit" name="action" value="saveChangeProfile">Save</button>

                            </td>
                        </tr>
                    </c:forEach>
                
            </form>
            
    </body>
</html>
