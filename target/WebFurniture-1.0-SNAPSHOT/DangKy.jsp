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
    <link rel="stylesheet" href="<c:url value='DangKy.css'/>">
    <link rel="icon" href="favicon.png" type="image/png">

</head>
<body>
<div class="container">
    <div class="formWraper">

        <!-- Left section of responsive registration form -->

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
            <form action="handling-signup" method="post">
            <p class="text">Sign Up with Email Address</p>
            <div class="formGroup">
                <i class="far fa-user"></i>
<%--                <jsp:useBean id="email" scope="request" type="java.lang.String"/>--%>
                <input type="text" name="name" id="name" placeholder="Name" value="${name}" onchange="checkValidate()">
            </div>
            <div class="formGroup">
                <i class="far fa-envelope"></i>
                <input type="email" name="email" id="email" value="${email}" placeholder="Email" onchange="checkValidate()">
            </div>
            <div class="formGroup">
                <i class="fas fa-lock"></i>
                <input type="password" name="password" id="password" value="${password}" placeholder="Password" onchange="checkValidate()">
            </div>
            <div class="checkBox">
                <input type="checkbox" name="checkbox" id="checkbox">
                <span class="text">I Agree with Term & Conditions.</span>
            </div>
            <a href="register">
                <button onclick="clickValidate()" class="btn">SIGN UP</button>
            </a>
            </form>
        </div>

        <!-- Right section of responsive registration form -->
        <div class="welcomeDiv">
            <h2>Welcome Back!</h2>
            <p class="text">Get in touch with us for our news letter and more updates.</p>
            <a href="login">
                <button class="btn2">SIGN IN</button>
            </a>
        </div>

    </div>
</div>
</body>
<script>
    function clickValidate() {
        let isValid = checkValidate();
        if (isValid) {
            alert('Kiểm tra thông tin đăng ký');
        }else {
            alert('Qúy khách vui lòng điền đầy đủ thông tin !');
        }
    }
    const name = document.getElementById('name');
    const email = document.getElementById('email');
    const password = document.getElementById('password');

    function checkValidate() {
        let nameValue = name.value;
        let emailValue = email.value;
        let passwordValue = password.value;
        let isCheck ;

        if (emailValue == '') {
            isCheck = false;
        }else if (passwordValue == '') {
            isCheck = false;
        }else if (nameValue == '') {
            isCheck = false;
        }else {
            isCheck = true;
        }
        return isCheck;
    }
</script>
</html>