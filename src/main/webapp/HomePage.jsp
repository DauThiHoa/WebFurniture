<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="HomePage.css" rel="stylesheet" type="text/css" media="screen,print"/>
    <link rel="icon" href="img.png" type="image/png" class="icon">
    <title>NHOM 7 WEB FURNITURE</title>
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <script src="Home.js"></script>

</head>
<body>
<div id="Thanh_cong_cu">
    <div id="Ten_Web">
        <h1>WEB FURNITURE</h1>
    </div>
    <form>
        <input type="text" name="search" placeholder="Tìm kiếm sản phẩm ...">
    </form>
    <div id="Tim_Kiem">
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
            <a href="PhongKhach.jsp">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="PhongNgu.jsp">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="PhongBep.jsp">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="VanPhong.jsp">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a href="NoiThatDoTrangTri.jsp">
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


<div class="khungtrang">
    <i class="fa fa-chevron-circle-left" aria-hidden="true" onclick="zoomountLeft(this)" alt="image"></i>
    <img id="trangKhung" src="Image/Capture.PNG"/>
    <img id="trangKhung1" src="img_1.png"/>
    <i class="fa fa-chevron-circle-right" aria-hidden="true" onclick="zoomountRight(this)" alt="image"></i>
</div>

<div id="ThanhHoTro">
    <div id="chatLuong">
        <img id="anh_ChatLuong" src="Image/chatLuong.PNG"/>
        <div id="bd"><h4> Bảo đảm chất lượng </h4></div>
        <div id="sp">
            <p>Sản phẩm bảo đảm chất lượng</p>
        </div>
    </div>
    <div id="giaoHang">
        <img id="anh_GiaoHang" src="Image/giaoHang.PNG"/>
        <div id="mp"><h4>Miễn phí giao hàng</h4></div>
        <div id="dh">
            <p>Cho đơn hàng từ 2 triệu đồng </p>
        </div>
    </div>
    <div id="hoTro">
        <img id="anh_HoTro" src="Image/hoTro.PNG"/>
        <div id="ht"><h4>Hỗ trợ 24/7</h4></div>
        <div id="hl">
            <p>Hotline: 0123 456 789 </p>
        </div>
    </div>
    <div id="doiTra">
        <img id="anh_DoiTro" src="Image/doiTra.PNG"/>
        <div id="dt"><h4>Đổi trả hàng</h4></div>
        <div id="dk">
            <p>Trong vòng 7 ngày</p>
        </div>
    </div>
</div>

<div id="hinh">
    <img id="hinh1" src="Image/hinh1.PNG"/>
    <img id="hinh2" src="Image/hinh2.PNG"/>
    <img id="hinh3" src="Image/hinh3.PNG"/>
    <img id="hinh4" src="Image/hinh4.PNG"/>
</div>


<div id="SanPhamNoiBat">

    <div id="BanLamViec" >
        <jsp:useBean id="productDetailsAll" scope="request" type="java.util.List"/>
        <c:forEach var="p" items="${productDetailsAll}">
        <c:if test="${p.id == 'sp1'}" >
        <form action="ProductDetails" method="POST">
            <a href="ProductDetails">
                <input style="display: none" type="text" name="id" value="${p.id}">
                <input style="display: none" type="text" name="name" value="${p.name}">
            <button  type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100% ">
                <img  id="anh_BanLamViec" style="margin-left: 0px ; margin-top:  10px" src="${p.linkImage}" />
            </button>
            </a>
        </form>
        <div id="blv">
                    <h1 class="chuBanLamViec">${p.name}</h1>
            <div class="sao3">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <p id="luxury">${p.trademark}</p>
            <h2 id="giaBLV">${p.priceNew}đ</h2>
            <div class="gioHang">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        </c:forEach>
    </div>

    <div id="chu_SanPhamNoiBat">
        <h2 class="tenSanPhamNoBat">SẢN PHẨM NỔI BẬT</h2>
    </div>
    <div id="sangTraiPhaiSPNB">
        <img id="left" src="Image/sangTrai.PNG" onclick="left(this)" alt="left"/>
        <img id="right" src="Image/sangPhai.PNG" onclick="right(this)" alt="right"/>

    </div>

    <div id="tenCacSanPhamNoiBat">
        <jsp:useBean id="productDetailsSanPhamNoiBat1" scope="request" type="java.util.List"/>
        <c:forEach var="p" items="${productDetailsSanPhamNoiBat1}">
            <c:if test="${p.id == 'sp2'}" >
        <div class="tensanpham" >
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>

            <c:if test="${p.id == 'sp3'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>

            <c:if test="${p.id == 'sp4'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>

            <c:if test="${p.id == 'sp5'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>

            <c:if test="${p.id == 'sp6'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>

            <c:if test="${p.id == 'sp7'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        </c:forEach>

        <div class="tenCacSanPhamNoiBat1">
            <!-- San Pham Bam nut chuyen -->
            <jsp:useBean id="productDetailsSanPhamNoiBat2" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${productDetailsSanPhamNoiBat2}">
                <c:if test="${p.id == 'sp8'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            </c:if>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->

                <c:if test="${p.id == 'sp9'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            </c:if>

            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
                <c:if test="${p.id == 'sp10'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            </c:if>

            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->

                <c:if test="${p.id == 'sp11'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            </c:if>

            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->

                <c:if test="${p.id == 'sp12'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            </c:if>

            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->

            <c:if test="${p.id == 'sp13'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            </c:if>
            </c:forEach>
            <!-- San Pham Bam nut chuyen -->

        </div>
    </div>
</div>


<div id="SanPhamHot">
    <div id="chu_SanPhamHot">
        <h2 id="chu">SẢN PHẨM HOT</h2>
        <hr id="thanhKe2">
        <p id="hot1" onclick="hot1( this)" alt="hot1"> Bàn , ghế thư giãn </p>
        <p id="hot2" onclick="hot2( this)" alt="hot2"> Đồ dùng văn phòng </p>
        <!-- Do Dung Van Phong -->

        <div class="DoDungVanPhong">
            <jsp:useBean id="productDetailsSanPhamHotDoDungVanPhong" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${productDetailsSanPhamHotDoDungVanPhong}">
            <c:if test="${p.id == 'sp14'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <!-- San pham -->
            <c:if test="${p.id == 'sp15'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <!-- San pham -->

            <!-- San pham -->
            <c:if test="${p.id == 'sp16'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <!-- San pham -->

            <!-- San pham -->
            <c:if test="${p.id == 'sp17'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            </c:forEach>
            <!-- San pham -->
        </div>
        <!-- Do Dung Van Phong -->
        <p id="hot3" onclick="hot3( this)" alt="hot3"> Nội thất gỗ </p>

        <!-- Do Dung Van Phong -->

        <div class="NoiThatGo">
            <jsp:useBean id="productDetailsSanPhamHotNoiThatGo" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${productDetailsSanPhamHotNoiThatGo}">
            <c:if test="${p.id == 'sp18'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <!-- San pham -->
            <c:if test="${p.id == 'sp19'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <!-- San pham -->

            <!-- San pham -->
            <c:if test="${p.id == 'sp20'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <!-- San pham -->

            <!-- San pham -->
            <c:if test="${p.id == 'sp21'}" >
            <div class="gheGoBapBenhIconic">
                <form action="ProductDetails" method="POST" style="height: 63% ; margin-bottom: -100px">
                    <a href="ProductDetails">
                        <input style="display: none" type="text" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button  type="submit" style="background: white;border: 1px solid white ; width: 98% ; height: 100%  ; margin-left: 0px">
                            <img  class="anh_gheGoBapBenhIconic" style="margin-left: 15px ; margin-top: 2px " src="${p.linkImage}" />
                        </button>
                    </a>
                </form>
                <div class="iconic">
                        <h2 class="ten">${p.name}</h2>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">${p.priceNew}đ</h3>
                    <div class="gioHang4">
                        <a href="cart-add?id=${p.id}">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            </c:forEach>
            <!-- San pham -->
        </div>
        <!-- Noi That Go -->
    </div>
    <jsp:useBean id="productDetailsSanPhamHotBanGheThuGian" scope="request" type="java.util.List"/>
    <c:forEach var="p" items="${productDetailsSanPhamHotBanGheThuGian}">
    <c:if test="${p.id == 'sp22'}" >
    <div id="gheGoBapBenhIconic">
        <form action="ProductDetails" method="POST" style="height: 60% ; margin-bottom: -95px">
            <a href="ProductDetails">
                <input style="display: none" type="text" name="id" value="${p.id}">
                <input style="display: none" type="text" name="name" value="${p.name}">
                <button  type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100%  ; margin-left: 0px">
                    <img class="anh_gheGoBapBenhIconic" style=" height: 95% ; width: 90%; margin-top: 0px ; margin-left: -5px" src="${p.linkImage}" />
                </button>
            </a>
        </form>
        <div id="iconic">
                <h2 class="ten">${p.name}</h2>
            <div class="sao4">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaIconic">${p.priceNew}đ</h3>
            <div class="gioHang4">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${p.id == 'sp23'}" >
    <div id="ghePhongKhachArctander">
        <form action="ProductDetails" method="POST" style="height: 60% ; margin-bottom: -15px">
            <a href="ProductDetails">
                <input style="display: none" type="text" name="id" value="${p.id}">
                <input style="display: none" type="text" name="name" value="${p.name}">
                <button  type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100%  ; margin-left: 0px">
                    <img id="anh_ghePhongKhachArctander" style="margin-top: 0px   ; margin-left: 18px" src="${p.linkImage}" />
                </button>
            </a>
        </form>
        <div id="Arctander">
                <h2 class="ten">${p.name}</h2>
                <div class="sao4">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            <h3 id="giaArctander">${p.priceNew}đ</h3>
            <div class="gioHang4">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${p.id == 'sp24'}" >
    <div id="BanAillen03">
        <form action="ProductDetails" method="POST" style="height: 60% ; margin-bottom: -15px">
            <a href="ProductDetails">
                <input style="display: none" type="text" name="id" value="${p.id}">
                <input style="display: none" type="text" name="name" value="${p.name}">
                <button  type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100%  ; margin-left: 0px">
                    <img id="anh_BanAillen03" style="margin-top: 0px  ; margin-left: 18px" src="${p.linkImage}" />
                </button>
            </a>
        </form>
        <div id="Aillen03">
                <h2 class="ten">${p.name}</h2>
            <div class="sao4">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaAillen03">${p.priceNew}đ</h3>
            <div class="gioHang4">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    </c:if>
    <c:if test="${p.id == 'sp25'}" >
    <div id="banBinas">
        <form action="ProductDetails" method="POST" style="height: 60% ; margin-bottom: -15px">
            <a href="ProductDetails">
                <input style="display: none" type="text" name="id" value="${p.id}">
                <input style="display: none" type="text" name="name" value="${p.name}">
                <button  type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100%  ; margin-left: 0px">
                    <img id="anh_banBinas" style="margin-top: 0px  ; margin-left: 18px" src="${p.linkImage}" />
                </button>
            </a>
        </form>
        <div id="binas">
                <h2 class="ten">${p.name}</h2>
            <div class="sao4">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaBinas">${p.priceNew}đ</h3>
            <div class="gioHang4">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    </c:if>
    </c:forEach>
    <div id="sangTraiPhaiSPH">
        <img id="left_SPH" src="Image/sangTrai.PNG" onclick="left(this)" alt="left"/>
        <img id="right_SPH" src="Image/sangPhai.PNG" onclick="right(this)" alt="right"/>
    </div>
</div>


<div id="SanPhamMoi">
    <div id="Kozoka_trysil">
        <jsp:useBean id="productDetailsSanPhamMoiMiNi" scope="request" type="java.util.List"/>
        <c:forEach var="p" items="${productDetailsSanPhamMoiMiNi}">
        <c:if test="${p.id == 'sp26'}" >
            <form action="ProductDetails" method="POST" style="height: 65%">
                <a href="ProductDetails">
                    <input style="display: none" type="text" name="id" value="${p.id}">
                    <input style="display: none" type="text" name="name" value="${p.name}">
                    <button  type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100% ">
                        <img id="anh_Kozoka_trysil" style="margin-left: 0px" src="${p.linkImage}" />
                    </button>
                </a>
            </form>
        <div id="Kozoka">
                <h2 class="ten">${p.name}</h2>
            <div class="sao3">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaKozoka">${p.priceNew}đ</h3>
            <div class="gioHang">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        </c:forEach>
    </div>

    <div id="chu_SamPhamMoi">
        <h2>SẢN PHẨM MỚI</h2>
    </div>
    <div id="sangTraiPhaiSPM">
        <img id="left_SPM" src="Image/sangTrai.PNG" onclick="left_SPM(this)" alt="SPM"/>
        <img id="right_SPM" src="Image/sangPhai.PNG" onclick="right_SPM(this)" alt="SPM"/>
    </div>
    <div id="tenCacSanPhamMoi">
        <jsp:useBean id="productDetailsSanPhamMoi1" scope="request" type="java.util.List"/>
        <c:forEach var="p" items="${productDetailsSanPhamMoi1}">
        <c:if test="${p.id == 'sp27'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        <c:if test="${p.id == 'sp28'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        <c:if test="${p.id == 'sp29'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        <c:if test="${p.id == 'sp30'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        <c:if test="${p.id == 'sp31'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        <c:if test="${p.id == 'sp32'}" >
        <div class="tensanpham">
            <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                        <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
            <div class="sanpham">
                    <h2 class="ten">${p.name}</h2>
                <h3 class="giasanpham">${p.priceNew}đ</h3>
            </div>
            <div class="gioHang5">
                <a href="cart-add?id=${p.id}">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        </c:if>
        </c:forEach>

        <div class="tenCacSanPhamMoi3">
            <!-- San Pham Bam nut chuyen -->
            <jsp:useBean id="productDetailsSanPhamMoi2" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${productDetailsSanPhamMoi2}">
                <c:if test="${p.id == 'sp33'}" >
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
                </c:if>
                <c:if test="${p.id == 'sp34'}" >
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
                </c:if>
                <c:if test="${p.id == 'sp35'}" >
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}"> 
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
                </c:if>
                <c:if test="${p.id == 'sp36'}" >
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
                </c:if>
                <c:if test="${p.id == 'sp37'}" >
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
                </c:if>
                <c:if test="${p.id == 'sp38'}" >
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: 3px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anhSanPham" type="submit" style="background: white;border: 1px solid white ; height: 95% ">
                            <img class="anhSanPham" style="height: 100% ; width: 105% ; margin: auto ; margin-left: -5px " src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="sanpham">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="giasanpham">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
                </c:if>
            </c:forEach>
            <!-- San Pham Bam nut chuyen -->

        </div>

    </div>
</div>
<div id="layout4">
    <div class="layout4_danhMucSanPham">
        <a href="NoiThatDoTrangTri.jsp?_ijt=6ckcb7ad8uk7545qms42j8a53d">
            <div class="danhMucSanPham">
                <img class="anh"
                     src="NoiThatDoTrangTri/Image_DoTrangTri/rem4.PNG"/>
                <div class="noiThat">
                    <h2 class="tenNoiThat"> Đồ trang trí </h2>
                    <p class="noiDung"> Ấn tượng , thu hút </p>
                </div>
            </div>
        </a>
    </div>
    <div class="layout4_danhMucSanPham">
        <a href="PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
            <div class="danhMucSanPham">
                <img class="anh" src="Image/img_12.png"/>
                <div class="noiThat">
                    <h2 class="tenNoiThat"> Nội thất phòng bếp </h2>
                    <p class="noiDung"> Vẻ đẹp hiện đại , độc đáo và mới lạ </p>
                </div>
            </div>
        </a>
    </div>
    <div class="layout4_danhMucSanPham">
        <a href="PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
            <div class="danhMucSanPham">
                <img class="anh" src="Image/img_5.png"/>
                <div class="noiThat">
                    <h2 class="tenNoiThat"> Nội thất phòng khách </h2>
                    <p class="noiDung"> Rộng rãi tạo cảm giác gần gũi </p>
                </div>
            </div>
        </a>
    </div>
    <div class="layout4_danhMucSanPham">
        <a href="PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
            <div class="danhMucSanPham">
                <img class="anh" src="Image/img_11.png"/>
                <div class="noiThat">
                    <h2 class="tenNoiThat"> Nội thất phòng ngủ </h2>
                    <p class="noiDung"> Sang trọng và hiện đại </p>
                </div>
            </div>
        </a>
    </div>
    <div class="layout4_danhMucSanPham">
        <a href="VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
            <div class="danhMucSanPham">
                <img class="anh" src="Image/img_10.png"/>
                <div class="noiThat">
                    <h2 class="tenNoiThat"> Nội thất văn phòng </h2>
                    <p class="noiDung"> Nội thất phù hợp sáng tạo </p>
                </div>
            </div>
        </a>
    </div>
</div>
<div id="layout5">
    <div class="sanPham">
        <div class="tieuDe">
            <div class="left">
                <h2 class="ten"> Bộ sưu tập </h2>
                <p class="noiDung"> Tiện nghi , hài hòa và sang trọng</p>
            </div>
            <div class="right">
                <img class="leftBoSuuTap" src="Image/sangTrai.PNG" onclick="leftBoSuuTap ( this)" alt="leftBoSuuTap"/>
                <img class="rightBoSuuTap" src="Image/sangPhai.PNG" onclick="rightBoSuuTap ( this)"
                     alt="rightBoSuuTap"/>
            </div>
        </div>
        <div class="tenCacSanPham">
                <jsp:useBean id="productDetailsBoSuuTap1" scope="request" type="java.util.List"/>
                <c:forEach var="p" items="${productDetailsBoSuuTap1}">
                    <c:if test="${p.id == 'sp39'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                </div>

                <div class="gioHang">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
                    </c:if>
                    <c:if test="${p.id == 'sp40'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                    <p><strike CLASS="giaCu" style="margin-left: -88px">${p.priceOld}đ</strike></p>
                </div>
                <div class="gioHang2">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true" style="margin-left: -80px"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
                    </c:if>
                    <c:if test="${p.id == 'sp41'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
                    </c:if>
                    <c:if test="${p.id == 'sp42'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                    <p><strike CLASS="giaCu" style="margin-left: -78px">${p.priceOld}đ</strike></p>
                </div>
                <div class="gioHang1">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true" style="margin-left: -70px"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
                    </c:if>
                </c:forEach>
        </div>

        <!-- SanPham Khi Nhan Nut -->
        <div class="tenCacSanPham2">

<jsp:useBean id="productDetailsBoSuuTap2" scope="request" type="java.util.List"/>
<c:forEach var="p" items="${productDetailsBoSuuTap2}">
    <c:if test="${p.id == 'sp43'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp44'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                <a href="ProductDetails">
                    <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                    <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                        <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                    </button>
                </a>
            </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp45'}" >
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia" style="margin-top: 100px ; margin-left: -190px">${p.priceNew}đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp46'}" >
            <!-- SAN PHAM NHO -->
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
</c:forEach>
            <!-- SAN PHAM NHO -->
        </div>
    </div>
    <!-- SanPham Khi Nhan Nut-->
    <div class="sanPham1">
        <div class="tieuDe">
            <div class="left">
                <h2 class="ten"> Sản phẩm khuyến mãi </h2>
                <p class="noiDung"> ( Ưu đãi lên đến 50% )</p>
            </div>
            <div class="right">
                <img class="leftSanPhamKhuyenMai" src="Image/sangTrai.PNG" onclick="leftSanPhamKhuyenMai(this)"
                     alt="leftSanPhamKhuyenMai"/>
                <img class="rightSanPhamKhuyenMai" src="Image/sangPhai.PNG" onclick="rightSanPhamKhuyenMai(this)"
                     alt="rightSanPhamKhuyenMai"/>
            </div>
        </div>
        <div class="tenCacSanPham">
<jsp:useBean id="productDetailsSanPhamKhuyenMai1" scope="request" type="java.util.List"/>
<c:forEach var="p" items="${productDetailsSanPhamKhuyenMai1}">
    <c:if test="${p.id == 'sp47'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp48'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia">${p.priceNew}đ</h3>
                    <p><strike CLASS="giaCu">${p.priceOld}đ</strike></p>
                </div>
                <div class="gioHang">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp49'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia1">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp50'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia" style="margin-left: -190px ">${p.priceNew}đ</h3>
                </div>
                <div class="gioHang">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
</c:forEach>
        </div>

        <!-- SanPham Khi Nhan Nut -->
        <div class="tenCacSanPham4">
<jsp:useBean id="productDetailsSanPhamKhuyenMai2" scope="request" type="java.util.List"/>
<c:forEach var="p" items="${productDetailsSanPhamKhuyenMai2}">
    <c:if test="${p.id == 'sp51'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia" style="margin-left: -175px ; margin-top: 100px">${p.priceNew}đ</h3>
                    <p><strike style="margin-left: -175px " CLASS="giaCu">${p.priceOld}đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp52'}" >
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia" style="margin-left: -200px ; margin-top: 100px">${p.priceNew}đ</h3>
                    <p><strike style="margin-left: -200px  " CLASS="giaCu">${p.priceOld}đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp53'}" >
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia" style="margin-left: -190px ; margin-top: 100px">${p.priceNew}đ</h3>
                    <p><strike style="margin-left: -190px " CLASS="giaCu">${p.priceOld}đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
    <c:if test="${p.id == 'sp54'}" >
            <!-- SAN PHAM NHO -->
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <form action="ProductDetails" method="POST" style="height: 70% ; margin-bottom: -150px">
                    <a href="ProductDetails">
                        <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                        <button class="anh5" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                            <img class="anh5" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                        </button>
                    </a>
                </form>
                <div class="moTa">
                        <h2 class="ten">${p.name}</h2>
                    <h3 class="gia" style="margin-left: -205px ; margin-top: 100px">${p.priceNew}đ</h3>
                    <p><strike style="margin-left: -205px " CLASS="giaCu">${p.priceOld}đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="cart-add?id=${p.id}">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>

                <div class="sao">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>
    </c:if>
</c:forEach>
            <!-- SAN PHAM NHO -->
        </div>
    </div>
    <!-- SanPham Khi Nhan Nut-->

</div>
</div>
<div class="DiemDen">
    <h1 class="chuDiemDenMoi"> Sản Phẩm Đặc Trưng </h1>
<jsp:useBean id="productDetailsDacTrung" scope="request" type="java.util.List"/>
<c:forEach var="p" items="${productDetailsDacTrung}">
    <c:if test="${p.id == 'sp55'}" >
    <div class="SanPhamDiemDenMoi">
        <form action="ProductDetails" method="POST" style="height: 57% ; margin-bottom: 50px">
            <a href="ProductDetails">
                <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                <button class="anh" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                    <img class="anh" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                </button>
            </a>
        </form>
        <h2 class="ten">${p.name}</h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia">${p.priceNew}đ </h3>
        <div class="gioHang3">
            <a href="cart-add?id=${p.id}">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>
    </c:if>
    <c:if test="${p.id == 'sp56'}" >

    <div class="SanPhamDiemDenMoi">
        <form action="ProductDetails" method="POST" style="height: 57% ; margin-bottom: 50px">
            <a href="ProductDetails">
                <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                <button class="anh" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                    <img class="anh" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                </button>
            </a>
        </form>
        <h2 class="ten">${p.name}</h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia">${p.priceNew} đ </h3>
        <div class="gioHang3">
            <a href="cart-add?id=${p.id}">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>
    </c:if>
    <c:if test="${p.id == 'sp57'}" >
    <div class="SanPhamDiemDenMoi">
        <form action="ProductDetails" method="POST" style="height: 57% ; margin-bottom: 50px">
            <a href="ProductDetails">
                <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                <button class="anh" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                    <img class="anh" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                </button>
            </a>
        </form>
        <h2 class="ten">${p.name}</h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia"> ${p.priceNew}đ </h3>
        <div class="gioHang3">
            <a href="cart-add?id=${p.id}">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>
    </c:if>
    <c:if test="${p.id == 'sp58'}" >

    <div class="SanPhamDiemDenMoi">
        <form action="ProductDetails" method="POST" style="height: 57% ; margin-bottom: 50px">
            <a href="ProductDetails">
                <input type="text" style="display: none" name="id" value="${p.id}">
                        <input style="display: none" type="text" name="name" value="${p.name}">
                <button class="anh" type="submit" style="background: white;border: 1px solid white ; height: 100% ">
                    <img class="anh" style="height: 100% ; width: 100% ; margin: auto" src="${p.linkImage}"/>
                </button>
            </a>
        </form>
        <h2 class="ten">${p.name}</h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia">${p.priceNew}đ </h3>
        <div class="gioHang3">
            <a href="cart-add?id=${p.id}">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>
    </c:if>
</c:forEach>
</div>


<div id="layout6">

    <div class="TieuDe">
        <h2 class="ten"> Mẹo vặt hay</h2>
        <div class="right">
            <img src="Image/sangTrai.PNG"/>
            <img src="Image/sangPhai.PNG"/>
        </div>

    </div>
    <div class="meoVatHay">
        <div class="meoVat">
            <a href="">
                <img class="anh" src="Image_Home2/baoQuanVaVeSinh_Layout7.PNG"/>
                <div class="lich">
                    <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    <p class="ngay"> 16/10/2021 Đăng bởi : Sea Team</p>
                </div>
                <h2 class="ten"> Mẹo vặt bảo quản và vệ sinh các đồ nội thất </h2>
            </a>
            <p class="noiDung"> Đối với nội thất bằng kim loại - khi xủ lý các vết bẩn thông thường bạn chỉ cần ..</p>
        </div>
        <div class="meoVat">
            <a href="TinTuc/MeoVat.jsp?_ijt=42n7g22303aucjlb03u168175o">
                <img class="anh" src="Image_Home2/meoVat_2.PNG" height="447" width="785"/>
                <div class="lich">
                    <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    <p class="ngay"> 17/10/2021 Đăng bởi : Sea </p>
                </div>
                <h2 class="ten"> Xua tan nắng nóng với nội thất màu xanh ngọc </h2>
            </a>
            <p class="noiDung"> Điểm xuyến nội thất màu xanh ngọc sẽ giúp các thành viên cảm thấy thoải mái ...</p>
        </div>
        <div class="meoVat">
            <a href="../TinTuc/DoAm.jsp?_ijt=nojc88mlm2aq7mku56lr2rvkjv">
                <img class="anh" src="Image_Home2/baoQuanDoGo_layout7.PNG"/>
                <div class="lich">
                    <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    <p class="ngay"> 18/10/2021 Đăng bởi : Team </p>
                </div>
                <h2 class="ten"> Bảo quản đồ gỗ khi độ ẩm không khí cao </h2>
            </a>
            <p class="noiDung"> Đồ nội thất bằng gỗ chất lượng cao là một sự đầu tư tuyệt vời để trang trí ngôi nhà
                ...</p>
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
                <p class="noiDung"> WebFurniture@gmail.com </p>

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
                <div class="lienLac_right">
                    <h2 class="nhanTin">Đăng kí nhận tin</h2>
                    <div class="from">
                        <input type="email" class="email" placeholder="Nhập email của bạn ..."> </input>
                        <button class="fromDangKi">
                            <h6 class="dangKi">Đăng kí</h6>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>
