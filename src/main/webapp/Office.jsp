<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <link rel="icon" href="img.png" type="image/png" class="icon">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> NHOM 7 WEB FURNITURE - DANH MỤC SẢN PHẨM - NỘI THẤT VĂN PHÒNG </title>
    <link rel="stylesheet" href="Office.css">

</head>
<body>
<div id="Thanh_cong_cu">
    <div id="Ten_Web">
        <h1>WEB FURNITURE</h1>
    </div>
    <form action="ProductDetailsList" >
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
                <jsp:useBean id="sizeListCart" scope="request" type="java.lang.Integer"/>
                <input class="inputCart"
                       style="border-radius: 100% ; width: 1% ; text-align: center ; margin-top: 1% ; margin-left: -1%" value="${sizeListCart}">

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


<div id="khungTinTuc">
    <div id="tenTinTuc">
        <h2 class="trangChu_TinTuc"> Trang Chủ / Danh mục sản phẩm / Nội thất văn phòng </h2>
    </div>
</div>

<div id="layout1">
    <div id="left">
        <div class="khung">
            <div class="tieuDe">
                <h2 class="ten"> Danh Mục Sản Phẩm </h2>
            </div>
            <div class="noiDung">
                <a href="ProductDetailsListLivingRoom">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Khách</p>
                    </div>
                </a>
                <a href="ProductDetailsListBedroom">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Ngủ </p>
                    </div>
                </a>
                <a href="ProductDetailsListKitchen">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Bếp</p>
                    </div>
                </a>
                <a href="ProductDetailsListOffice">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Văn Phòng</p>
                    </div>
                </a>
                <a href="ProductDetailsListDecoration">
                    <div class="noiThat">
                        <p class="nd">Nội thất Đồ Trang Trí</p>
                    </div>
                </a>
            </div>
        </div>


        <div class="khung1">
            <div class="tieuDe1">
                <h2 class="ten1">Bộ Lọc </h2>
            </div>
            <div class="noiDung">
                <h3 class="noiDungBoLoc"> Tìm theo mức giá</h3>
                <div class="gia">
                    <div class="khungGia">
                        <input class="check" type="radio" name="radio" value="500000" onclick="clickDuoi500000()"/>
                        <p class="mucGia"> Giá dưới 500.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia">
                        <input class="check" type="radio" name="radio" value="1000000" onclick="clickDuoi1000000()"/>
                        <p class="mucGia"> 500.000đ - 1.000.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia">
                        <input class="check" type="radio" name="radio" value="1500000" onclick="clickDuoi1500000()"/>
                        <p class="mucGia"> 1.000.000đ - 1.500.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia">
                        <input class="check" type="radio" name="radio" value="2000000" onclick="clickDuoi2000000()"/>
                        <p class="mucGia"> 1.500.000đ - 2.000.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia">
                        <input class="check" type="radio" name="radio" value="2500000" onclick="clickDuoi2500000()"/>
                        <p class="mucGia"> 2.000.000đ - 2.500.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia">
                        <input class="check" type="radio" name="radio" value="2501000" onclick="clickTren2501000()"/>
                        <p class="mucGia"> Giá trên 2.500.000đ</p>
                    </div>
                </div>
            </div>
        </div>
        <form action="ColorOffice" method="post">
            <div class="mauSac">
                <div class="khung">
                    <h2 class="tenMauSac"> Màu Sắc</h2>
                </div>
                <div class="boMau">
                    <input type="submit" class="fa fa-circle " id="fa1"  value="hồng" style="background: #ffa9bf ; font-size: 0.1px ; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa2"  value="vàng" style="background: yellow ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa3"  value="xám" style="background: #9a9a9a ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa4"  value="xanh lam" style="background: #1fb5d4 ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa5"  value="xanh lục" style="background: #00dea2 ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa6"  value="cam" style="background: orange ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa7"  value="trắng" style="border : 1px solid black ; background: white ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa8"  value="đen" style="background: black ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa9"  value="tím" style="background: #9d03ad ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa10" value="đỏ" style="background: red ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                </div>
            </div>
        </form>

        <form action="SearchOffice" method="post">

            <div class="tuKhoa" style="margin-top: 25px">
                <div class="khung">
                    <h2 class="ten"> Từ Khóa</h2>
                </div>
                <div class="noiDung">
                    <input value="" class="tuKhoaTimKiem" name="search" placeholder="Từ khóa tìm kiếm" onchange="timkiem()" ></input>
                </div>
            </div>

            <button class="apDung" type="submit" onclick="ClickSearchName()">
                <h3 class="tenApDung"> Áp dụng</h3>
            </button>
        </form>
    </div>

    <div id="right">
        <div id="CacLoaiDoTrangTri">
            <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            <div class="loai">
                <a href="ProductDetailsListControllerOfficeDesk">
                    <img class="anh" src="ImageProduct/Ban_lam_viec_go.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Bàn làm việc</h3>
                </a>

            </div>
            <div class="loai">
                <a href="ProductDetailsListControllerOfficeChair">
                    <img class="anh" src="NoiThatVanPhong/Image_vanphong/ghe-xoay.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Ghế</h3>
                </a>

            </div>
            <div class="loai">
                <a href="ProductDetailsListControllerOfficeSofa">
                    <img class="anh"
                         src="ImageProduct/Sofa_nau_co_dien.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Sofa</h3>
                </a>

            </div>
            <div class="loai1">
                <a href="ProductDetailsListControllerOfficeLamp">
                    <img class="anh" src="ImageProduct/Den_de_ban.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Đèn làm việc </h3>
                </a>

            </div>
            <div class="loai">
                <a href="ProductDetailsListControllerOfficeDecorator">
                    <img class="anh" src="ImageProduct/trang-tri.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Trang trí</h3>
                </a>

            </div>
            <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
        </div>

        <div id="tieuDe">
            <h1 class="noiThatTrangtri"> Nội Thất Văn Phòng </h1>
        </div>

        <div id="sapXep">
            <div class="tenSapXep"><h3 class="ten">Xếp theo : </h3></div>
            <button class="tenKieu" style="background: white ; border: 1px solid white">
                <input class="SapXep" type="radio" name="radio" checked onclick="clickMacDinh()">
                <p class="noiDungSapXep"> Mặc định</p>
            </button>
            <button class="tenKieu" style="background: white ; border: 1px solid white">
                <input class="SapXep" type="radio" name="radio" onclick="clickAZ()">
                <p class="noiDungSapXep"> Tên A -> Z </p>
            </button>
            <button class="tenKieu" style="background: white ; border: 1px solid white">
                <input class="SapXep" type="radio" name="radio" onclick="clickZA()">
                <p class="noiDungSapXep"> Tên Z -> A </p>
            </button>
            <button class="tenKieu" style="background: white ; border: 1px solid white">
                <input class="SapXep" type="radio" name="radio" onclick="clickHangMoi()">
                <p class="noiDungSapXep"> Hàng mới </p>
            </button>
            <button class="tenKieu" style="background: white ; border: 1px solid white">
                <input class="SapXep" type="radio" name="radio" onclick="clickGiaThapDenCao()">
                <p class="noiDungSapXep"> Giá thấp đến cao </p>
            </button>
            <button class="tenKieu" style="background: white ; border: 1px solid white">
                <input class="SapXep" type="radio" name="radio" onclick="clickGiaCaoXuongThap()">
                <p class="noiDungSapXep"> Giá cao xuống thấp </p>
            </button>
        </div>

        <jsp:useBean id="block" scope="request" class="java.lang.String"/>
        <jsp:useBean id="none" scope="request" class="java.lang.String"/>
        <jsp:useBean id="display" scope="request" class="java.lang.String"/>

        <div class="getColor" id="CacSanPham" style="display: ${none}">
            <jsp:useBean id="getColor" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getColor}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="searchName" id="CacSanPham" style="display: ${none}">
            <jsp:useBean id="searchName" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${searchName}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList2501000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList2501000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList2501000}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList2500000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList2500000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList2500000}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList2000000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList2000000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList2000000}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList1500000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList1500000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList1500000}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList1000000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList1000000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList1000000}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList500000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList500000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList500000}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="az" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListAZ" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListAZ}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="za" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListZA" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListZA}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="priceaz" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListPriceAZ" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListPriceAZ}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="priceza" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListPriceZA" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListPriceZA}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ; height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>

                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class= "ClassSanPham" id="CacSanPham" style="display: ${block}" >
            <jsp:useBean id="ProductDetailsOffice" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${ProductDetailsOffice}">
                <c:if test="${p.id == 'sp59' || p.id == 'sp60' || p.id == 'vp1' || p.id == 'vp2' || p.id == 'vp3' || p.id == 'sp64'
    || p.id == 'vp4' || p.id == 'vp5' || p.id == 'vp6' || p.id == 'vp7' || p.id == 'vp8' || p.id == 'vp9'
    ||  p.id == 'vp10' || p.id == 'vp11' || p.id == 'vp12' || p.id == 'vp13' || p.id == 'vp14' || p.id == 'vp15'
    || p.id == 'vp16' || p.id == 'vp17' || p.id == 'vp18' || p.id == 'vp19' || p.id == 'vp20' || p.id == 'vp21'}" >
                <div class="sanPham">
                        <div class="sanPhamNoiThat" style="height: 285px">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="width: 100% ; background: white ; border: 0px solid #1fb5d4" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom anh" style="background:url(${p.linkImage}) ;
                                            height: 170px ; margin-left: 4px"
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                            </div>
                            <div class="nutgiohang">
                                <a href="cart-add?id=${p.id}&quantitySold=${1}" >
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            style="margin-top: -3px ; margin-left: 10px"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <form style="margin-top: -25px ; margin-left: 43px"
                                      action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                    <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                             data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>

                                </form>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
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
                            <input onchange="checkValidate()" type="email" required name="email" class="email" placeholder="Nhập email của bạn ..."> </input>
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

    const layout7 = document.getElementById('layout7');
    const getColor = document.querySelector('.getColor');
    const az = document.querySelector('.az');
    const za = document.querySelector('.za');
    const priceaz = document.querySelector('.priceaz');
    const priceza = document.querySelector('.priceza');
    const getList500000 = document.querySelector('.getList500000');
    const getList1000000 = document.querySelector('.getList1000000');
    const getList1500000 = document.querySelector('.getList1500000');
    const getList2000000 = document.querySelector('.getList2000000');
    const getList2500000 = document.querySelector('.getList2500000');
    const getList2501000 = document.querySelector('.getList2501000');
    const searchName = document.querySelector('.searchName');
    const ClassSanPham = document.querySelector('.ClassSanPham');

    function ClickSearchName() {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "block";
    }
    function clickTren2501000() {
        getColor.style.display = "none";
        layout7.style.marginTop = "-1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "block";
        searchName.style.display = "none";
    }
    function clickDuoi2500000() {
        getColor.style.display = "none";
        layout7.style.marginTop = "-1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "block";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickDuoi2000000() {
        getColor.style.display = "none";
        layout7.style.marginTop = "-1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "block";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickDuoi1500000() {
        getColor.style.display = "none";
        layout7.style.marginTop = "-1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "block";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickDuoi1000000() {
        getColor.style.display = "none";
        layout7.style.marginTop = "-1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "block";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickDuoi500000() {
        getColor.style.display = "none";
        layout7.style.marginTop = "-1000px";
        az.style.display = "none";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "block";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickAZ() {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "block";
        ClassSanPham.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickMacDinh() {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        ClassSanPham.style.display = "block";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickHangMoi() {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        ClassSanPham.style.display = "block";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickZA() {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        za.style.display = "block";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        ClassSanPham.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickGiaThapDenCao () {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "block";
        priceza.style.display = "none";
        ClassSanPham.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function clickGiaCaoXuongThap() {
        getColor.style.display = "none";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "block";
        ClassSanPham.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }
    function ClickGetColor() {
        getColor.style.display = "block";
        layout7.style.marginTop = "1000px";
        az.style.display = "none";
        za.style.display = "none";
        priceaz.style.display = "none";
        priceza.style.display = "none";
        ClassSanPham.style.display = "none";
        getList500000.style.display = "none";
        getList1000000.style.display = "none";
        getList1500000.style.display = "none";
        getList2000000.style.display = "none";
        getList2500000.style.display = "none";
        getList2501000.style.display = "none";
        searchName.style.display = "none";
    }

    function clickValidate() {
        let isValid = checkValidate();
        if (isValid) {
            // alert('Gửi đăng ký thành công');
        }else {
            // alert('Qúy khách đăng kí nhận tin không thành công');
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