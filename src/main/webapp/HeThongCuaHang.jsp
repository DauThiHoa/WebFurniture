<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <link href="HeThongCuaHang.css" rel="stylesheet" type="text/css" media="screen,print"/>
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="HeThongCuaHang.png" type="image/png" class="icon" style="border-radius: 10px">
    <title>NHOM 7 WEB FURNITURE</title>
    <style>

    </style>

</head>
<body>
<div id="Thanh_cong_cu">
    <div id="Ten_Web">
        <h1>WEB FURNITURE</h1>
    </div>
    <form action="ProductDetailsList"  >
        <input type="text" name="search" placeholder="Tìm kiếm sản phẩm ...">
        <button id="Tim_Kiem" type="submit" style="height: 42px ; width: 43px" >
            <i style=" font-size : 130% ; margin-top: 3px ; margin-left: 6px" class="fa fa-search" aria-hidden="true"></i>
        </button>
    </form>
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
                href="controllerRegister">
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
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
            </div>
            <div id="chu_giohang">
                <p>Giỏ hàng</p>
            </div>
        </a>
    </div>
</div>


<div id="trangChu_DanhMuc">
    <div id="danhMuc">
        <img id="anh_danhMuc" src="Image/ThanhChon.PNG"/>
        <a href="AllProducts.jsp?_ijt=7pes57a6sf1vpphf135u5omt3j&_ij_reload=RELOAD_ON_SAVE">
            <h3 id="chu_DanhMuc"> DANH MỤC SẢN PHẨM </h3>
        </a>

        <div id="top">
            <a href="PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a href="NoiThatDoTrangTri.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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

<div id="layout6">
    <div class="TieuDe">
        <h2 class="ten">Hệ Thống Cửa Hàng</h2>
    </div>
    <hr class="thanhKe"></hr>
    <div class="meoVatHay">
        <div class="meoVat1">
            <!--            <img class="anh" src="Image/hethong.png" style="height: 400px; width: 450px"/>-->
            <iframe class="anh"
                    src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3919.6222423427866!2d106.65440106462233!3d10.763568992330226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1z4bqnbmcgNCwgdMOyYSBuaMOgIEZsZW1pbmd0b24sIHPhu5EgMTgyLCDEkcaw4budbmcgTMOqIMSQ4bqhaSBIw6BuaCwgcGjGsOG7nW5nIDE1LCBxdeG6rW4gMTEsIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1639496942948!5m2!1svi!2s"
                    style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        <div class="meoVat">
            <div>
                <h2 class="ten"> Hệ thống cửa hàng của WEB FURNITURE trên toàn quốc </h2>
                <button class="buttonTP" style="align-content: center">Thành phố Hồ Chí Minh</button>
                <h5 class="noiDung"><i class="fa fa-compass"></i> Trụ Sở:</h5>
                <p class="noiDung"> -Địa chỉ: Khu Phố 6 , quận Thủ Đức , TP HCM</p>
                <p class="noiDung"> -Số điện thoại: 1900.363.079</p>
            </div>
            <div>
                <button class="buttonHN" style="align-content: center">Hà Nội</button>
                <h5 class="noiDung"><i class="fa fa-compass"></i> Trụ Sở:</h5>
                <p class="noiDung"> -Địa chỉ: Số 1, ngõ 219/41 đường Định Công Thượng, P. Định Công, Q. Hoàng Mai,Tp. Hà
                    Nội </p>
                <p class="noiDung"> -Số điện thoại: 0985018882</p>
            </div>
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
                    <a href=" ../Product/AllProducts.jsp?_ijt=lb79ipc726t04q7dgtat16sn83">
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
                            <img class="mang" src="Image_Home2/fb_left.PNG"/> </a> 
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
                            <img class="mang" src="Image_Home2/thanhToan1.PNG"/></a>
                        <img class="mang" src="Image_Home2/thanhToan2.PNG"/>
                        <a href="https://www.google.com/search?q=paypal&oq=paypal&aqs=chrome..69i57j46i199i433i465i512j0i433i512j0i512l6.3397j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/thanhToan3.PNG"/></a>
                        <a href="https://www.google.com/search?q=jcb&oq=jcb&aqs=chrome..69i57j46i199i433i465i512j0i512l6j0i10i512j0i512.1389j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/thanhToan4.PNG"/></a>
                        <img class="mang" src="Image_Home2/thanhToan5.PNG"/></div>
                </div>
                <form action="MailController" method="post">
                    <div class="lienLac_right">
                        <h2 class="nhanTin">Đăng kí nhận tin</h2>
                        <div class="from">
                            <input onchange="checkValidate()" type="email" name="email" class="email" placeholder="Nhập email của bạn ..."> </input>
                            <button type="submit" class="fromDangKi" onclick="clickValidate()">
                                <h6 class="dangKi">Đăng kí</h6>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


</body>
<script>
    function clickValidate() {
        let isValid = checkValidate();
        if (isValid) {
            alert('Gửi đăng ký thành công');
        }else {
            alert('Qúy khách đăng kí nhận tin không thành công');
        }
    }
    const email = document.querySelector('.email');
    function checkValidate() {
        let emailValue = email.value;
        let isCheck = true;
        if (emailValue == '') {
            alert('Email không được để trống');
            isCheck = false;
        }else {
            isCheck = true;
        }
        return isCheck;
    }
</script>
</html>