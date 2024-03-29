<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"
           uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String error = (String) request.getAttribute("error");
%>

<%
    String notification = (String) request.getAttribute("notification");
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
    <link rel="stylesheet" href="login.css">
    <link rel="icon" href="favicon.png" type="image/png">
    <link href="HomePage.css" rel="stylesheet" type="text/css" media="screen,print"/>
    <script src="Home.js"></script>

    <style>
        body {
            margin: 0px;
            padding: 0px;
            /*font-family: sans-serif;*/
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            box-sizing: border-box;
            background-image: url(imageName.jpg);
            background-size: cover;
            background-attachment: fixed;
        }

        .btn:hover {
            cursor: pointer;
        }

        #forgot:hover {
            text-decoration: black;
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
<div id="Thanh_cong_cu">
    <div id="Ten_Web">
        <h1>WEB FURNITURE</h1>
    </div>
    <form>
        <jsp:useBean id="search" scope="request" type="java.lang.String"/>
        <input class="inputSearch" type="text" value="${search}" name="search" placeholder="Tìm kiếm sản phẩm ...">
    </form>
    <div id="Tim_Kiem" onchange="searchProductChange()" onclick="searchProduct()">
        <i class="fa fa-search" aria-hidden="true"></i>
    </div>
    <div id="Hotline">
        <a href="LienHe">
            <div>
                <i class="fa fa-phone-square" aria-hidden="true"></i>
            </div>
            <div id="chu_HotLine">
                <p>Hotline
                    <br>1900.363.079</br>
                </p>
            </div>
        </a>
    </div>
    <div id="TaiKhoan">
        <a href="login">
            <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy">
            <p class="danhNhap"><a
                    href="login">Đăng
                nhập </a>
            <p class="cheo">/</p> <a
                href="register">
            <p class="dangKi">Đăng ký</p></a>  </p>
        </div>
    </div>
    <div class="taiKhoanCuaToi">
        <a href="Dashboard">
            <br>Tài khoản của tôi <i class="fa fa-chevron-down" aria-hidden="true"></i> </br>
        </a>
    </div>

    <div id="gioHang">
        <a href="cart">
            <div>
                <jsp:useBean id="sizeListCart" scope="request" type="java.lang.Integer"/>
                <input class="inputCart"
                       style="border-radius: 100% ; width: 1% ; text-align: center ; margin-top: 1% ; margin-left: -1%"
                       value="${sizeListCart}">

                <i class="fa fa-shopping-cart" aria-hidden="true">
                </i>
            </div>
            <div id="chu_giohang" style="margin-top: -1%">
                <p>Giỏ hàng</p>
            </div>
        </a>
    </div>
</div>
<div id="trangChu_DanhMuc">
    <div id="danhMuc">
        <img id="anh_danhMuc" src="Image/ThanhChon.PNG"/>
        <a href="ProductDetailsListAllProduct">
            <h3 id="chu_DanhMuc"> DANH MỤC SẢN PHẨM </h3>
        </a>

        <div id="top">
            <a href="ProductDetailsListLivingRoom">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="ProductDetailsListBedroom">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="ProductDetailsListKitchen">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="ProductDetailsListOffice">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a href="ProductDetailsListDecoration">
                <div class="danhMuc5">
                    <h4 class="noiDungSanPham5"> ĐỒ TRANG TRÍ </h4>
                </div>
            </a>
        </div>

    </div>
    <a href="ProductDetailsList">
        <div id="trangchu">
            <h3 class="ten"> TRANG CHỦ </h3>
        </div>
    </a>
    <a href="HeThongCuaHang">
        <div id="heThongCuaHang">
            <h3 class="ten"> HỆ THỐNG CỬA HÀNG </h3>
        </div>
    </a>
    <a href="TinTuc">
        <div id="tinTuc">
            <h3 class="ten"> TIN TỨC </h3>
        </div>
    </a>
    <a href="LienHe">
        <div id="lienHe">
            <h3 class="ten"> LIÊN HỆ </h3>
        </div>
    </a>
</div>

<div class="container" style="margin-top: 55px">
    <div class="formWraper">

        <!-- Left section of responsive registration form -->

        <div class="formDiv" style="padding: 4%">
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
                    <input type="email" required name="email" id="email" placeholder="Email" value="${email}"
                           onchange="checkValidate()">
                </div>
                <div class="formGroup">
                    <i class="fas fa-lock"></i>
                    <%--                <jsp:useBean id="password" scope="request" type="java.lang.String"/>--%>
                    <input type="password" name="password" id="password" value="${password}"
                           placeholder="Password" onchange="checkValidate()">
                </div>
<%--                <div class="checkBox">--%>
<%--                    <input type="checkbox" name="checkboxlogin" id="checkbox">--%>
<%--                    <span class="text">I Agree with Term & Conditions.</span>--%>
<%--                </div>--%>
                <% if (error != null) { %>
                <p style="color: red ; font-weight: bold;margin-top: 5%"><%= error%>
                </p>
                <%} %>

                <% if (notification != null) { %>
                <p style="color: #03acca ; font-weight: bold; margin-bottom: 3%"><%= notification%>
                </p>
                <%} %>

                <a href="">
                    <input id="check" style="display: none" type="text" name="check" value="1">
                    <button onclick="clickValidate()" class="btn">SIGN IN</button>
                </a>

                <%--            <form action="ForgotPassword" method="post">--%>
                <input id="text" style="display: none" type="text" name="text" value="1">
                <button type="submit" id="forgot" style="background: lavender; color: black; margin-top: -0.1%"
                        onclick="forgotPassword()" class="btn btn-primary">Forgot password
                </button>
                <%--            </form>--%>
            </form>

        </div>

        <!-- Right section of responsive registration form -->
        <div class="welcomeDiv">
            <h2>Welcome Back!</h2>
            <p class="text">Get in touch with us for our news letter and more updates.</p>
            <a href="register">
                <button class="btn2">SIGN UP</button>
            </a>
        </div>

    </div>
</div>

<div id="layout7">
    <div class="thanhDuoi">
        <div class="tenWeb">
            <h1 class="ten">WEB FURNITURE</h1>
            <p class="kinhNghiem">Với kinh nghiệm hơn 10 năm trong ngành nội thất, nội thất WEB FURNITURE tự hào là cung
                cấp những mẫu sản phẩm nội thất tốt nhất . </p>
            <div class="hotline">
                <a href="LienHe">
                    <i class="fa fa-phone-square" aria-hidden="true"></i></a>
                <p class="line">1900.363.079</p>
            </div>
        </div>
        <div class="thongTin">
            <div class="left">
                <h2>Thông tin liên lạc</h2>
            </div>
            <div class="right">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <h3 class="ten">----- Địa chỉ :</h3>
                <p class="noiDung"> Khu Phố 6 , quận Thủ Đức , TP HCM</p>

                <i class="fa fa-phone-square" aria-hidden="true"></i>
                <h3 class="ten">----- Điện thoại :</h3>
                <p class="noiDung"> 1900.363.079 </p>

                <i class="fa fa-envelope" aria-hidden="true"></i>
                <h3 class="ten">----- Email :</h3>
                <p class="noiDung"> webfurniture7@gmail.com </p>

                <i class="fa fa-clock-o" aria-hidden="true"></i>
                <h3 class="ten">----- Giờ mở cửa :</h3>
                <p class="noiDung"> Thứ 2 - Chủ nhật / 08.00 AM - 22.00 PM </p>
            </div>
        </div>
        <div class="NoiDung">
            <div class="hoTro">
                <div class="chucNang">
                    <h2>Về Chúng Tôi</h2>
                    <a href="ProductDetailsList">
                        <p>Trang chủ</p></a>
                    <a href="HeThongCuaHang">
                        <p>Giới thiệu</p>
                    </a>
                    <a href="ProductDetailsListAllProduct">
                        <p>Sản phẩm</p>
                    </a>
                    <a href="TinTuc">
                        <p>Tin tức</p></a>
                    <a href="LienHe">
                        <p>Liên hệ</p></a>
                </div>
                <div class="chucNang">
                    <h2>Chức Năng</h2>
                    <p>Xây dựng Website</p>
                    <p>Social Commerce</p>
                    <p>Quản lý bán hàng</p>
                    <p>Chatbot</p>
                    <p>Google Smart Shopping</p>
                </div>
                <div class="chucNang">
                    <h2>Hỗ Trợ</h2>
                    <p>Học viện</p>
                    <p>Kho giao diện</p>
                    <p>Kho ứng dụng</p>
                    <p>Đại lý</p>
                    <p>Tài liệu hướng dẫn</p>
                </div>
            </div>
            <div class="lienLac">
                <div class="lienLac_left">
                    <div class="left">
                        <h3>Theo dõi mạng xã hội</h3>
                        <a href="https://www.google.com/search?q=fb&oq=fb&aqs=chrome..69i57j46i131i199i433i465i512j69i59j0i512j46i199i291i433i512j69i60l3.1291j0j7&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/fb_left.PNG"/></a>
                        <a href="https://www.google.com/search?q=google&oq=goo&aqs=chrome.0.0i131i355i433i512j46i131i199i433i465i512j0i131i433i512j69i57j69i60l3j69i65.1245j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/g_left.PNG"/></a>
                        <a href="https://www.google.com/search?gs_ssp=eJzj4tLP1TfIyDMsS05XYDRgdGDwYi8pzywpSS0CAFnOB00&q=twitter&oq=tw&aqs=chrome.1.69i57j46i131i199i433i465i512j0i433i512j46i131i433i512j0i131i433i512j46i433i512j0i131i433i512j69i60.3261j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/tw_left.PNG"/></a>
                        <a href="https://www.google.com/search?q=pinterest&oq=p&aqs=chrome.3.69i59l2j69i57j0i131i433i512j69i60l4.10676j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/p_left.PNG"/></a>
                    </div>
                    <div class="right">
                        <h3>Thanh Toán</h3>
                        <a href="https://www.google.com/search?q=visa&oq=visa&aqs=chrome..69i57j0i433i512l2j0i512l2j0i131i433i512j0i512l2j0i10i512j0i512.2103j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/thanhToan1.PNG" height="43" width="62"/></a>
                        <img class="mang" src="Image_Home2/thanhToan2.PNG" height="44" width="65"/>
                        <a href="https://www.google.com/search?q=paypal&oq=paypal&aqs=chrome..69i57j46i199i433i465i512j0i433i512j0i512l6.3397j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/thanhToan3.PNG" height="40" width="64"/></a>
                        <a href="https://www.google.com/search?q=jcb&oq=jcb&aqs=chrome..69i57j46i199i433i465i512j0i512l6j0i10i512j0i512.1389j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/thanhToan4.PNG" height="38" width="62"/></a>
                        <img class="mang" src="Image_Home2/thanhToan5.PNG" height="40" width="57"/>
                    </div>
                </div>

                <form action="MailController" method="post">
                    <div class="lienLac_right">
                        <h2 class="nhanTin">Đăng kí nhận tin</h2>
                        <div class="from">
                            <%--                        <jsp:useBean id="email" scope="request" type="java.lang.String"/>--%>
                            <input onchange="checkValidate()" type="email" required name="email" class="email"
                                   placeholder="Nhập email của bạn ..."> </input>
                            <button type="submit" class="fromDangKi" onclick="clickValidate()">
                                <h6 class="dangKi">Đăng kí</h6>
                            </button>
                        </div>
                    </div>
                </form>
                <%--                <h3 style="color: red ; font-weight: bold ; margin-left: -450px ; margin-top: 500px "></h3>--%>
            </div>
        </div>
    </div>
    <%--    <% if (checkMail != null) { %>--%>
    <%--    <p style="color: white ; font-weight: bold; margin-bottom: -2%"><%= checkMail %> </p>--%>
    <%--    <%} %>--%>
</div>
</body>
<script>
    <%--    <jsp:useBean id="correct" scope="request" type="java.lang.String"/>--%>

    function clickValidate() {
        let isValid = checkValidate();
        if (isValid) {
            alert('Kiểm tra thông tin đăng nhập');
        } else {
            alert('Qúy khách vui lòng điền đầy đủ thông tin !');
        }
    }

    const check = document.getElementById('check');
    const text = document.getElementById('text');

    function makeid() {
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        for (var i = 0; i < 10; i++)
            text += possible.charAt(Math.floor(Math.random() * possible.length));

        return text;
    }

    function forgotPassword() {
        // alert('Mật Khẩu mới đã được gửi về mail của bạn vui lòng kiểm tra mail');
        check.value = 2;
        text.value = makeid();
    }

    const email = document.getElementById('email');
    const password = document.getElementById('password');

    function checkValidate() {
        let emailValue = email.value;
        let passwordValue = password.value;
        let isCheck;
        if (emailValue == '') {
            isCheck = false;
        } else if (passwordValue == '') {
            isCheck = false;
        } else {
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