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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="NoiThatPhongBep/img.png" type="image/png" class="icon">
    <title> NHOM 7 WEB FURNITURE - DANH MỤC SẢN PHẨM - NỘI THẤT PHÒNG BẾP </title>
    <link rel="stylesheet" href="NoiThatPhongBep_HoaGia.css">

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
        <a href="../DangNhap/DangNhap.html?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy">
            <p class="danhNhap"><a
                    href="../DangNhap/DangNhap.html?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">Đăng
                nhập </a>
            <p class="cheo">/</p> <a
                href="../DangKy/DangKy.html?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <p class="dangKi">Đăng ký</p></a>  </p>
        </div>
    </div>
    <div class="taiKhoanCuaToi">
        <a href="../Quản%20trị/Admin/examples/dashboard.html">
            <br>Tài khoản của tôi <i class="fa fa-chevron-down" aria-hidden="true"></i> </br>
        </a>
    </div>

    <div id="gioHang">
        <a href="../GioHang/GioHang.html?_ijt=jcprnpa34msltves625aqk8542">
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
    <a href="HomePage.html?_ijt=pae316ajrmdat5oebu7viiupon">
        <div id="trangchu">
            <h3 class="ten"> TRANG CHỦ </h3>
        </div>
    </a>
    <a href="../HeThongCuaHang/HeThongCuaHang.html?_ijt=tbj9541mbers5cne53u03tmg0j">
        <div id="heThongCuaHang">
            <h3 class="ten"> HỆ THỐNG CỬA HÀNG </h3>
        </div>
    </a>
    <a href="../TinTuc/TinTuc.html?_ijt=iv6smvovu312mhdpg2551fpkq2">
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
        <h2 class="trangChu_TinTuc"> Trang Chủ / Danh mục sản phẩm / Nội thất phòng bếp / Lọ hoa giả </h2>
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
        <form action="ColorKitchenFlower" method="post">
            <div class="mauSac">
                <div class="khung">
                    <h2 class="tenMauSac"> Màu Sắc</h2>
                </div>
                <div class="boMau">
                    <input type="submit" class="fa fa-circle " id="fa1"  value="hong" style="background: #ffa9bf ; font-size: 0.1px ; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa2"  value="vang" style="background: yellow ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa3"  value="xam" style="background: #9a9a9a ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa4"  value="xanh lam" style="background: #1fb5d4 ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa5"  value="xanh luc" style="background: #00dea2 ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa6"  value="cam" style="background: orange ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa7"  value="trang" style="border : 1px solid black ; background: white ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa8"  value="den" style="background: black ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa9"  value="tim" style="background: #9d03ad ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                    <input type="submit" class="fa fa-circle " id="fa10" value="do" style="background: red ; font-size: 0.1px; width: 46px ; height: 46px" name="color" onclick="ClickGetColor()">
                </div>
            </div>
        </form>
        <form action="SearchKitchenFlower" method="post">

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
                <a href="ProductDetailsListControllerKitchenTable">
                    <img class="anh" src="NoiThatPhongBep/Image_phongbep/ban-an.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Bàn ăn</h3>
                </a>
            </div>
            <div class="loai2">
                <a href="ProductDetailsListControllerKitchenChair">
                    <img class="anh" src="NoiThatPhongBep/Image_phongbep/ghe-nha-bep.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Ghế bếp</h3>
                </a>

            </div>
            <div class="loai">
                <a href="ProductDetailsListControllerKitchenCabinet">
                    <img class="anh" src="NoiThatPhongBep/Image_phongbep/tu-bep-hien-dai.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Tủ bếp </h3>
                </a>
            </div>
            <div class="loai1">
                <a href="ProductDetailsListControllerKitchenFlower">
                    <img class="anh" src="NoiThatDoTrangTri/Image_DoTrangTri/loHoa1.PNG"/>
                    <h3 class="tenLoaiDoTrangTri">Lọ hoa giả</h3>
                </a>
            </div>
            <div class="loai">
                <a href="ProductDetailsListControllerKitchenNapkin">
                    <img class="anh" src="NoiThatPhongBep/Image_phongbep/khan-trai-ban.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Khăn trải bàn </h3>
                </a>
            </div>
            <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
        </div>


        <div id="tieuDe">
            <h1 class="noiThatTrangtri"> Nội Thất Phòng Bếp</h1>
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
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="searchName" id="CacSanPham" style="display: ${none}">
            <jsp:useBean id="searchName" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${searchName}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList2501000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList2501000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList2501000}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList2500000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList2500000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList2500000}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList2000000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList2000000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList2000000}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList1500000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList1500000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList1500000}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList1000000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList1000000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList1000000}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="getList500000" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getList500000" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getList500000}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="az" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListAZ" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListAZ}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="za" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListZA" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListZA}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="priceaz" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListPriceAZ" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListPriceAZ}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class="priceza" id="CacSanPham" style="display: ${display}">
            <jsp:useBean id="getListPriceZA" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${getListPriceZA}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>
        <div class= "ClassSanPham" id="CacSanPham" style="display: ${block}" >
            <jsp:useBean id="ProductDetailsDecoration" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${ProductDetailsDecoration}">
                <c:if test="${p.id == 'h1' || p.id == 'h2' || p.id == 'h3' || p.id == 'h4' || p.id == 'h5' || p.id == 'h6'
    || p.id == 'h7' || p.id == 'h8' || p.id == 'h9' || p.id == 'h10' || p.id == 'h11' || p.id == 'h12' || p.id == 'h13'|| p.id == 'h14'
    || p.id == 'h15'|| p.id == 'h16'|| p.id == 'h17'|| p.id == 'h18'|| p.id == 'h19'|| p.id == 'h20'}" >
                    <div class="sanPham">
                        <div class="sanPhamNoiThat">
                            <form action="ProductDetails" method="post" >
                                <input type="text" style="display: none" name="id" value="${p.id}">
                                <input style="display: none" type="text" name="name" value="${p.name}">
                                <button style="height: 200px ; width: 53% ; background: white ; border: 1px solid white" type="submit" class="anhDoTrangTri">
                                    <figure class="zoom  anh " style="background:url(${p.linkImage}) "
                                            onmousemove="zoom(event)" ontouchmove="zoom(event)">
                                        <img src="${p.linkImage}" />
                                    </figure>
                                </button>
                            </form>
                            <div class="noiDungDoTrangTri" style="margin-top: -165px ; margin-left: 56%">
                                <h4 class="ten">${p.name}</h4>
                                <h4 class="gia">${p.priceNew}đ</h4>
                                <div class="nutgiohang" style="margin-left: 0%">
                                    <a href="cart-add?id=${p.id}" >
                                        <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                                style="margin-top: -3px ; margin-left: 3px"
                                                data-id="1050379730"><i class="fa fa-cart-plus"
                                                                        aria-hidden="true"></i><span> </span></button>
                                    </a>
                                    <form
                                            style="margin-top: -25px ; margin-left: 36px"
                                            action = "paymentAddProductDetails?id=${p.id}&&priceNew=${p.priceNew}&&quantitySold=${1}" method="post" >
                                        <button  type="submit" class="btnBuyNow buy-now medium--hide small--hide"
                                                 data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                            <span></span></button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:if>
            </c:forEach>
        </div>

    </div>

</div>


</div>
        <%--
        <div id="CacSanPham">

            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa1.PNG" height="212" width="216"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Bó hoa trang trí không gian gia đình GHS-6702</h4>
                        <h4 class="gia"> 80.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa2.PNG" height="213" width="211"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Lọ hoa bằng sứ thiết kế sáng tạo GHS-6699</h4>
                        <h4 class="gia"> 249.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa3.PNG" height="213" width="208"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Hoa hướng lụa thiết kế cho gia đình GHS-6697 </h4>
                        <h4 class="gia"> 150.000đ </h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa4.PNG" height="215" width="207"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Lọ hoa bằng sứ chất lượng cao GHS-6696 </h4>
                        <h4 class="gia"> 369.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa5.PNG" height="214" width="205"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Hoa lan vũ nữ bằng lụa cao cấp GHS-6693</h4>
                        <h4 class="gia"> 60.000đ </h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa6.PNG" height="207" width="202"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Hoa hồng lụa chất lượng cao dùng trang trí GHS-6692</h4>
                        <h4 class="gia"> 60.000đ </h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh " src="NoiThatDoTrangTri/Image_lohoagia/lohoa7.PNG" height="215"
                             width="205"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Lọ hoa để bàn cao cấp phong cách hiện đại GHS-6691 </h4>
                        <h4 class="gia">490.000đ </h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang/GioHang.html">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan/ThanhToan.html">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa8.PNG" height="211"
                                 width="213"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Lọ hoa trang trí để bàn cho gia đình GHS-6690 </h4>
                            <h4 class="gia"> 300.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa9.PNG" height="215"
                                 width="211"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Lọ hoa bằng sứ thiết kế đẹp ấn tượng GHS-6684</h4>
                            <h4 class="gia"> 600.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa10.PNG" height="212"
                                 width="207"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">Bình hoa sứ trang trí gia đình cao cấp GHS-6683 </h4>
                            <h4 class="gia"> 230.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa11.PNG" height="211"
                                 width="208"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Cành cherry đỏ giả chất lượng cao GHS-6607</h4>
                            <h4 class="gia"> 250.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa12.PNG" height="208"
                                 width="206"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Cành cherry đỏ giả chất lượng cao GHS-6607 </h4>
                            <h4 class="gia"> 270.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa14.PNG" height="213"
                                 width="209"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Bộ lọ hoa trang trí gia đình GHS-6562 </h4>
                            <h4 class="gia"> 1.400.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa15.PNG" height="214"
                                 width="215"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Mẹt hoa trang trí kèm đèn Led đẹp hiện đại GHS-6556 </h4>
                            <h4 class="gia"> 330.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa16.PNG" height="212"
                                 width="198"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Bình hoa sứ cao cấp thanh lịch GHS-6257-1 </h4>
                            <h4 class="gia"> 270.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa17.PNG" height="211"
                                 width="210"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Lọ hoa gốm cao cấp tạo điểm nhấn không gian GHS-6257-5 </h4>
                            <h4 class="gia">880.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa18.PNG" height="211"
                                 width="212"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Lọ hoa gốm trang trí đẹp GHS-6256-2</h4>
                            <h4 class="gia"> 560.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa19.PNG" height="207"
                                 width="211"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Lọ hoa thủy tinh trong sắc màu đẹp GHS-6221-2 </h4>
                            <h4 class="gia"> 900.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa20.PNG" height="214"
                                 width="210"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Chậu hoa để bàn bằng sứ tráng men GHS-6540 </h4>
                            <h4 class="gia"> 90.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="NoiThatDoTrangTri/Image_lohoagia/lohoa21.PNG" height="213"
                                 width="211"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Lồng sắt trang trí nội thất GHS-6219</h4>
                            <h4 class="gia"> 980.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang/GioHang.html">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan/ThanhToan.html">
                                    <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                        <span></span></button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>


</div>

--%>
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
            alert('Gửi đăng ký thành công');
        }else {
            alert('Qúy khách đăng kí nhận tin không thành công');}
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