<%-- 
    Document   : registration
    Created on : Oct 2, 2022, 7:40:45 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="mycss.css" type="text/css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="./img/logo.png">
        <title>Register</title>
        
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
        <link href="css/customstyle.css" rel="stylesheet">
        <link rel="stylesheet" href="css/animate.css" type="text/css" />
        <link rel="stylesheet" href="css/loginStyle.css" type="text/css" />
    </head>
    <body>

        <section>
            <form action="MainControlers" method="post">

                <table>
                    <div class="container">
                        <div class="top">
                            <h1 id="title" class="login_h2"><div id="logo">E <span>Plants</span></div></h1>
                        </div>
                        <div style="margin-top: -50px"  class="login-box animated fadeInUp">
                            <div class="box-header">
                                <h2 class="">Sign Up</h2>
                            </div>
                            <label style="margin-left: -140px" for="username">Email</label>
                            <br/>
                            <input type="text" name="txtemail" required value="<%= (request.getParameter("txtemail") == null) ? "" : request.getParameter("txtemail")%>" pattern="^(\\w)+@(a-zA-Z]+([.](\\w)+){1,2}">
                            <br/>
                            <span style="color: red"><%= (request.getAttribute("erroremail") == null) ? "" : request.getAttribute("erroremail")%> </span>
                            <br/>
                            <label style="margin-left: -110px" for="password">Password</label>
                            <br/>
                            <input type="password" name="txtpassword" required>
                            <br/>
                            <label style="margin-left: -105px" for="fullname">Full Name</label>
                            <br/>
                            <input type="text" name="txtfullname" required value="<%= (request.getParameter("txtfullname") == null) ? "" : request.getParameter("txtfullname")%>">
                            <br/>
                            <label style="margin-left: -140px" for="phone">Phone</label>
                            <br/>
                            <input type="text" name="txtphone" value="<%= (request.getParameter("txtphone") == null) ? "" : request.getParameter("txtphone")%>" >
                            <br/>
                            <span style="color: red"><%= (request.getAttribute("errorphone") == null) ? "" : request.getAttribute("errorphone")%></span>


                            <font style="color: red"> <%= (request.getAttribute("invalid") == null) ? "" : (String) request.getAttribute("invalid")%> </font>
                            <br/>
                            <button style=" width: 210px; border: none; background: #D19C97" type="submit" value="register" name="action">Sign up</button>
                            <br/>
                            
                            <a href="login.jsp"><p style="text-decoration: underline" class="small">Sing In</p></a>
                            
                        </div>
                    </div>
                    <tr>

                    </tr>

                </table>



                <script>
                    $(document).ready(function () {
                        $('#logo').addClass('animated fadeInDown');
                        $("input:text:visible:first").focus();
                    });
                    $('#username').focus(function () {
                        $('label[for="username"]').addClass('selected');
                    });
                    $('#username').blur(function () {
                        $('label[for="username"]').removeClass('selected');
                    });
                    $('#password').focus(function () {
                        $('label[for="password"]').addClass('selected');
                    });
                    $('#password').blur(function () {
                        $('label[for="password"]').removeClass('selected');
                    });
                </script>



            </form>
        </section>




    </body>
</html>
