<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %><!DOCTYPE html>
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
    <link rel="stylesheet" href="VanPhong.css">

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
        <a href="DangNhap.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy">
            <p class="danhNhap"><a
                    href="DangNhap.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">Đăng
                nhập </a>
            <p class="cheo">/</p> <a
                href="DangKy.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
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
                <a href="PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Khách</p>
                    </div>
                </a>
                <a href="PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Ngủ </p>
                    </div>
                </a>
                <a href="PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Bếp</p>
                    </div>
                </a>
                <a href="VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Văn Phòng</p>
                    </div>
                </a>
                <a href="NoiThatDoTrangTri.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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
                        <input class="check" type="checkbox" name="timtheomucgia"/>
                        <p class="mucGia"> Giá dưới 500.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia"><input class="check" type="checkbox" name="timtheomucgia"/>
                        <p class="mucGia"> 500.000đ - 1.000.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia"><input class="check" type="checkbox" name="timtheomucgia"/>
                        <p class="mucGia"> 1.000.000đ - 1.500.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia"><input class="check" type="checkbox" name="timtheomucgia"/>
                        <p class="mucGia"> 2.000.000đ - 3.500.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia"><input class="check" type="checkbox" name="timtheomucgia"/>
                        <p class="mucGia"> 3.500.000đ - 5.000.000đ</p>
                    </div>
                </div>
                <div class="gia">
                    <div class="khungGia"><input class="check" type="checkbox" name="timtheomucgia"/>
                        <p class="mucGia"> Giá trên 5.000.000đ</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="tuKhoa">
            <div class="khung">
                <h2 class="ten"> Từ Khóa</h2>
            </div>
            <div class="noiDung">
                <input class="tuKhoaTimKiem" placeholder="Từ khóa tìm kiếm"></input>
            </div>
        </div>

        <div class="mauSac">
            <div class="khung">
                <h2 class="tenMauSac"> Màu Sắc</h2>
            </div>
            <div class="boMau">
                <i class="fa fa-circle " id="fa1" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa2" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa3" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa4" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa5" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa6" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa7" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa8" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa9" aria-hidden="true"></i>
                <i class="fa fa-circle " id="fa10" aria-hidden="true"></i>
            </div>
        </div>

        <div class="apDung">
            <h3 class="tenApDung"> Áp dụng</h3>
        </div>
    </div>

    <div id="right">
        <div id="CacLoaiDoTrangTri">
            <i class="fa fa-chevron-circle-left" aria-hidden="true"></i>
            <div class="loai">
                <a href="NoiThatVanPhong/BanLamViec.jsp?_ijt=afedu4rmvu71rltpdugkadgo4l&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="ImageProduct/Ban_lam_viec_go.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Bàn làm việc</h3>
                </a>

            </div>
            <div class="loai">
                <a href="NoiThatVanPhong/Ghe.jsp?_ijt=afedu4rmvu71rltpdugkadgo4l&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="NoiThatVanPhong/Image_vanphong/ghe-xoay.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Ghế</h3>
                </a>

            </div>
            <div class="loai">
                <a href="NoiThatVanPhong/Sofa.jsp?_ijt=k085o4525afcc1aaffmng95bir&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh"
                         src="ImageProduct/Sofa_nau_co_dien.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Sofa</h3>
                </a>

            </div>
            <div class="loai1">
                <a href="NoiThatVanPhong/DenLamViec.jsp?_ijt=k085o4525afcc1aaffmng95bir&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="ImageProduct/Den_de_ban.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Đèn làm việc </h3>
                </a>

            </div>
            <div class="loai">
                <a href="NoiThatVanPhong/TrangTri.jsp?_ijt=k085o4525afcc1aaffmng95bir&_ij_reload=RELOAD_ON_SAVE">
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
            <div class="tenKieu">
                <input class="SapXep" type="radio" name="Chonradio" checked>
                <p class="noiDungSapXep"> Mặc định</p>
            </div>
            <div class="tenKieu">
                <input class="SapXep" type="radio" name="Chonradio">
                <p class="noiDungSapXep"> Tên A -> Z </p>
            </div>
            <div class="tenKieu">
                <input class="SapXep" type="radio" name="Chonradio">
                <p class="noiDungSapXep"> Tên Z -> A </p>
            </div>
            <div class="tenKieu">
                <input class="SapXep" type="radio" name="Chonradio">
                <p class="noiDungSapXep"> Hàng mới </p>
            </div>
            <div class="tenKieu">
                <input class="SapXep" type="radio" name="Chonradio">
                <p class="noiDungSapXep"> Giá thấp đến cao </p>
            </div>
            <div class="tenKieu">
                <input class="SapXep" type="radio" name="Chonradio">
                <p class="noiDungSapXep"> Giá cao xuống thấp </p>
            </div>
        </div>

        <div id="CacSanPham">
            <jsp:useBean id="ProductDetailsOffice" scope="request" type="java.util.List"/>
            <c:forEach var="p" items="${ProductDetailsOffice}">
            <c:if test="${p.id == 'sp59'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'sp60'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'vp1'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'vp2'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'vp3'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'sp64'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'vp4'}" >
            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh" src="${p.linkImage}"/>
                    </div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">${p.name}</h4>
                        <h4 class="gia">${p.priceNew}đ</h4>
                    </div>
                    <div class="nutgiohang">
                        <a href="cart-add?id=${p.id}">
                            <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-cart-plus"
                                                            aria-hidden="true"></i><span> </span></button>
                        </a>
                        <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                              aria-hidden="true"></i></button>
                        <a href="ThanhToan.jsp">
                            <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                    data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                <span></span></button>
                        </a>
                    </div>
                </div>
            </div>
            </c:if>
            <c:if test="${p.id == 'vp5'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp6'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp7'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp8'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp9'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp10'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp11'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp12'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp13'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp14'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp15'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp16'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp17'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp18'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp19'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp20'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            <c:if test="${p.id == 'vp21'}" >
                <div class="sanPham">
                    <div class="sanPhamNoiThat">
                        <div class="anhDoTrangTri">
                            <img class="anh" src="${p.linkImage}"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">${p.name}</h4>
                            <h4 class="gia">${p.priceNew}đ</h4>
                        </div>
                        <div class="nutgiohang">
                            <a href="cart-add?id=${p.id}">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="ThanhToan.jsp">
                                <button type="button" class="btnBuyNow buy-now medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                                    <span></span></button>
                            </a>
                        </div>
                    </div>
                </div>
            </c:if>
            </c:forEach>
            </div>



        <div id="themTrangMoi">
            <div class="khung1">
                <i class="fa fa-angle-double-left" aria-hidden="true"></i>
            </div>
            <div class="khung2">
                <h3 class="fa2"> 1 </h3>
            </div>
            <div class="khung">
                <h3 class="fa"> 2 </h3>
            </div>
            <div class="khung">
                <h3 class="fa"> 3 </h3>
            </div>
            <div class="khung">
                <h3 class="fa"> 4 </h3>
            </div>
            <div class="khung">
                <h3 class="fa"> 5 </h3>
            </div>
            <div class="khung">
                <i class="fa fa-angle-double-right" aria-hidden="true"></i>
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
                    <a href="AllProducts.jsp">
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