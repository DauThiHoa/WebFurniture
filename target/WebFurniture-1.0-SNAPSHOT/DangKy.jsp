<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Form</title>
    <!-- CSS file -->
    <!-- Font Awesome 5 CDN link to add social icons in html5 registration form -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="<c:url value='/DangKy/DangKy.css'/>">
    <link rel="icon" href="favicon.png" type="image/png">

</head>
<body>
<div class="container">
    <div class="formWraper">

        <!-- Left section of responsive registration form -->
        <form action="register" method="post">
        <div class="formDiv">
            <h2>Create Account</h2>
            <p class="text"> Sign Up with Social Media</p>

            <!-- Font Awesome Icons -->
            <div class="socialBtn">
                <div class="facebook icon"><i class="fab fa-facebook-f"></i></div>
                <div class="twitter icon"><i class="fab fa-twitter"></i></div>
                <div class="instagram icon"><i class="fab fa-instagram"></i></div>
            </div>

            <!--Horizontal Line-->
            <hr>
            <div class="orDiv">Or</div>
            <p class="text">Sign Up with Email Address</p>
            <div class="formGroup">
                <i class="far fa-user"></i>
                <input type="text" name="name" id="name" placeholder="Name">
            </div>
            <div class="formGroup">
                <i class="far fa-envelope"></i>
                <input type="email" name="email" id="email" placeholder="Email">
            </div>
            <div class="formGroup">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" id="password" placeholder="Password">
            </div>
            <div class="checkBox">
                <input type="checkbox" name="checkbox" id="checkbox">
                <span class="text">I Agree with Term & Conditions.</span>
            </div>
<<<<<<< HEAD:target/WebFurniture-1.0-SNAPSHOT/DangKy.jsp
            <a href="DangNhap.jsp">
                <button class="btn">SIGN UP</button>
=======
            <a href=""  >
                <button class="btn"> SIGN UP</button>

>>>>>>> d7c202f0a6198696207c97dcbc351fe206ae06d6:src/main/webapp/DangKy/DangKy.jsp
            </a>


        </div>
        </form>
        <!-- Right section of responsive registration form -->
        <div class="welcomeDiv">
            <h2>Welcome Back!</h2>
            <p class="text">Get in touch with us for our news letter and more updates.</p>
<<<<<<< HEAD:target/WebFurniture-1.0-SNAPSHOT/DangKy.jsp
            <a href="DangNhap.jsp">
=======
            <a href="dang-nhap">
>>>>>>> d7c202f0a6198696207c97dcbc351fe206ae06d6:src/main/webapp/DangKy/DangKy.jsp
                <button class="btn2">SIGN IN</button>
            </a>
        </div>

    </div>
</div>
</body>
</html>