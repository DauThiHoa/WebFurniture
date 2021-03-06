<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Form</title>
    <!-- CSS file -->
    <!-- Font Awesome 5 CDN link to add social icons in html5 registration form -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="DangNhap.css">
    <link rel="icon" href="favicon.png" type="image/png">
    <style>
        body {
            margin: 0px;
            padding: 0px;
            font-family: sans-serif;
            box-sizing: border-box;
            background-image: url(imageName.jpg);
            background-size: cover;
            background-attachment: fixed;
        }

        .container {
            display: flex;
            align-content: center;
            justify-content: center;
        }

        .formWraper {
            display: flex;
            width: 55%;
            height: 500px;
            background-color: yellowgreen;
            margin-top: 80px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px black;
        }

        /* code for left sectin of form */
        .formDiv {
            width: 50%;
            padding: 8%;
            background-color: lavender;
            text-align: center;
            border-radius: 10px 0px 0px 10px;
        }

        .formDiv h2 {
            color: green;
            margin-top: -5px;
        }

        /* code for right sectin of the registration form */
        .welcomeDiv {
            width: 50%;
            padding: 10px;
            background-image: url(image1.jpg);
            background-size: cover;
            text-align: center;
            color: white;
        }

        .welcomeDiv h2 {
            margin-top: 150px;
        }


        /* ---- code for Font Awsome social icons */
        .socialBtn {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .icon {
            width: 30px;
            height: 30px;
            border-radius: 15px;
            background-color: lavender;
            margin: 5px;
            line-height: 30px;
            box-shadow: 0px 0px 10px black;

        }


        .text {
            font-size: small;
        }

        .orDiv {
            width: 10%;
            margin: 0 auto;
            background-color: lavender;
            position: relative;
            top: -16px;
            justify-content: center;
        }

        /* code for form input fields */
        .formGroup {
            width: 100%;
            position: relative;
        }

        .formGroup input {
            width: 90%;
            padding: 10px;
            margin-bottom: 10px;
            border-style: none;
            padding-left: 30px !important;
        }


        /* Code for Icones inside html form input */
        .formGroup i {
            position: absolute;
            left: 0px;
            top: 0px;
            color: grey;
            font-size: smaller;
            margin: 10px !important;
        }


        input::placeholder {
            position: relative;
            left: 10px;
        }

        input:focus {
            border-color: red;
        }

        .checkBox {
            width: 100%;
            margin-top: 2px;
        }

        .btn {
            width: 70%;
            padding: 15px;
            background-color: green;
            margin-top: 15px;
            color: lavender;
            border-radius: 20px;
            border-style: none;
        }

        .btn2 {
            width: 70%;
            padding: 15px;
            background-color: transparent;
            margin-top: 15px;
            color: lavender;
            border-radius: 20px;
            border-style: none;
            border: 2px solid rgb(247, 243, 243);
        }

        /* CSS mouse hover efects */
        .btn:hover, .btn2:hover, .icon:hover {
            background-color: rgb(7, 80, 35);
            color: whitesmoke;
        }

        /* making HTML registration form responsive to mobile devices */
        @media screen and (max-width: 1000px) {
            .formWraper {
                width: 70%;
            }
        }

        @media screen and (max-width: 670px) {
            .formDiv {
                width: 90%;
                border-radius: 10px 10px 10px 10px;
            }

            .welcomeDiv {
                display: none;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <div class="formWraper">

        <!-- Left section of responsive registration form -->

        <div class="formDiv">
            <h2>Sign In</h2>
            <p class="text"> Sign In with Social Media</p>

            <!-- Font Awesome Icons -->
            <div class="socialBtn">
                <div class="facebook icon"><i class="fab fa-facebook-f"></i></div>
                <div class="twitter icon"><i class="fab fa-twitter"></i></div>
                <div class="instagram icon"><i class="fab fa-instagram"></i></div>
            </div>

            <!--Horizontal Line-->
            <hr>
            <div class="orDiv">Or</div>
            <form action="handling-login" method="post">
            <p class="text">Sign In with Email Address</p>
            <div class="formGroup">
                <i class="far fa-envelope"></i>
<%--                <jsp:useBean id="email" scope="request" type="java.lang.String"/>--%>
                <input type="email" name="email" id="email" placeholder="Email" value="${email}" onchange="checkValidate()">
            </div>
            <div class="formGroup">
                <i class="fas fa-lock"></i>
<%--                <jsp:useBean id="password" scope="request" type="java.lang.String"/>--%>
                <input type="password" name="password" id="password" value="${password}" placeholder="Password" onchange="checkValidate()">
            </div>
            <div class="checkBox">
                <input type="checkbox" name="checkboxlogin" id="checkbox">
                <span class="text">I Agree with Term & Conditions.</span>
            </div>
                <% if(error != null) { %>
                    <p><%= error%></p>
                <%} %>

            <a href="">
                <button onclick="clickValidate()" class="btn">SIGN IN</button>
            </a>
            </form>
        </div>

        <!-- Right section of responsive registration form -->
        <div class="welcomeDiv">
            <h2>Welcome Back!</h2>
            <p class="text">Get in touch with us for our news letter and more updates.</p>
            <a href="controllerRegister">
                <button class="btn2">SIGN UP</button>
            </a>
        </div>

    </div>
</div>
</body>
<script>
<%--    <jsp:useBean id="correct" scope="request" type="java.lang.String"/>--%>
    function clickValidate() {
        let isValid = checkValidate();
        if (isValid) {
            alert('Ki???m tra th??ng tin ????ng nh???p');
            <%--alert('${correct}');--%>
        }else {
            alert('Q??y kh??ch vui l??ng ??i???n ?????y ????? th??ng tin !');
        }
    }
    const email = document.getElementById('email');
    const password = document.getElementById('password');
    function checkValidate() {
        let emailValue = email.value;
        let passwordValue = password.value;
        let isCheck ;
        if (emailValue == '') {
            isCheck = false;
        } else  if (passwordValue == '') {
            isCheck = false;
        }else {
            isCheck = true;
        }
        return isCheck;
    }
function zoom(e) {
    var zoomer = e.currentTarget;
    e.offsetX ? offsetX = e.offsetX : offsetX = e.touches[0].pageX
    e.offsetY ? offsetY = e.offsetY : offsetX = e.touches[0].pageX
    x = (offsetX / zoomer.offsetWidth) * 100
    y = (offsetY / zoomer.offsetHeight) * 100
    zoomer.style.backgroundPosition = x + "% " + y + "%";
}
</script>
</html>