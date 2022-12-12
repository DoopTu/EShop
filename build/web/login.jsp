<%-- 
    Document   : login
    Created on : Oct 2, 2022, 7:38:52 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
                        <div class="login-box animated fadeInUp">
                            <div class="box-header">
                                <h2 class="">Log In</h2>
                            </div>
                            <label for="username">Email</label>
                            <br/>
                            <input type="text" id="username" name="email" required>
                            <br/>
                            <label for="password">Password</label>
                            <br/>
                            <input type="password" id="password" name="password" required>
                            <br/>
                            <font style="color: red"> <%= (request.getAttribute("invalid") == null) ? "" : (String) request.getAttribute("invalid")%> </font>
                            <br/>
                            <button style="margin-top: 10px" type="submit" value="login" name="action">Sign In</button>
                            <br/>
                            <a href="#"><p style="text-decoration: underline" class="small">Forgot your password?</p></a>
                            <a href="#"><p style="text-decoration: underline" class="small">Sing Up</p></a>
                            <p class="small"><input  type="checkbox" value="savelogin" name="savelogin"/>Stay signed in</p>
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
