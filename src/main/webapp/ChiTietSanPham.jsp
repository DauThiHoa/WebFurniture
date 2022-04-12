<%--<%@ page language ="java" contentType="text/html; charset=ISO-8859-1"--%>
<%--pageEncoding="ISO-8859-1" import="java.util.Date" %>--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.google.gson.Gson" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>THÔNG TIN SẢN PHẨM </title>
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ChiTietSanPham.css">
   
    <link rel="icon" href="img.png" type="image/png" class="icon">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="ChiTietSanPham.js"></script>

    <style>
        figure.zoom {
            background-position: 50% 50%;
            position: relative;
            width: 100%;
            overflow: hidden;
            cursor: zoom-in;
        }

        figure.zoom img:hover {
            opacity: 0;
        }

        figure.zoom img {
            transition: opacity 0.5s;
            display: block;
            width: 100%;
        }

    </style>

</head>
<body>
<jsp:useBean id="productDetails" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails"/>
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
                href="controllerRegister"><p
                class="dangKi">Đăng ký</p></a>  </p>
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

<div class="tieuDe ">
    <h2 class="trangChu_BanAilen_03"> Trang Chủ / ${productDetails.name} </h2>

</div>
<div id="thongTinSanPham">
    <div class="trai">
        <div id="anhDau">
<%--            <figure id="anh" class="anh_BanLamViec"--%>
<%--                    style="background:url(${productDetails.linkImage})"--%>
<%--                    onmousemove="zoom(event)" ontouchmove="zoom(event)">--%>
<%--                <img src="${productDetails.linkImage}"/>--%>
                 <img id="anh" class="anh_BanLamViec" src="${productDetails.linkImage}" />
<%--            </figure>--%>

        </div>
        <img id="anhDau1" class="anh_BanLamViec_min" src="${productDetails.linkImage}" onclick="zoomount(this)"
             alt="image"/>
        <c:if test="${productDetails.id == 'sp24'}" >
        <img id="anhDau2" class="anh_BanLamViec_min1" src="Image_ThongTinSanPham_Home/gheaillen2.PNG"
             onclick="zoomount(this)" alt="image"/>
        <img id="anhDau3" class="anh_BanLamViec_min2" src="Image_ThongTinSanPham_Home/gheaileen3.PNG"
             onclick="zoomount(this)" alt="image"/>
        </c:if>
    </div>
    <div class="phai">
        <div class="tieuDe">
            <h2 class="ten">${productDetails.name}</h2>
        </div>

        <div class="danhGia">
            <div class="sao">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <div class="danhGiaCuaBan">
                <p class="thongTinDanhGia"> Viết đánh giá của bạn </p>
            </div>
        </div>
        <div class="thongTin">
            <div class="maSanPham">
                <h3 class="tieuDe"> Mã sản phẩm : </h3>
                <p class="ma">${productDetails.id}</p>
            </div>
            <div class="thuongHieu">
                <h3 class="tieuDe">Thương hiệu : </h3>
                <p class="ma">${productDetails.trademark}</p>
            </div>
        </div>
        <hr class="thanh"></hr>
        <div class="gia">
            <h2 class="giaBLV">${productDetails.priceNew}đ</h2>
            <div class="TinhTrang">
                <h4 class="tieuDe"> Tình Trạng : </h4>
                <p class="hang">${productDetails.status}</p>
            </div>
        </div>
        <div class="thongTinChiTiet">
            <p class="thongTinct">${productDetails.description}</p>
        </div>
        <div class="mauSac">
            <div class="top">
                <h3 class="tieuDe"> Màu sắc : </h3>
                <p class="soMau"> Màu đen , Màu gỗ , Màu trắng </p>
            </div>
            <div class="bottom">
                <img class="anh_BanLamViec_min" src="${productDetails.linkImage}" onclick="zoomount(this)"
                     alt="image"/>

                <c:if test="${productDetails.id == 'sp24'}" >
                <img class="anh_BanLamViec_min1" src="Image_ThongTinSanPham_Home/gheaillen2.PNG"
                     onclick="zoomount(this)" alt="image"/>
                <img class="anh_BanLamViec_min2" src="Image_ThongTinSanPham_Home/gheaileen3.PNG"
                     onclick="zoomount(this)" alt="image"/>
                </c:if>

            </div>
        </div>
        <c:if test="${productDetails.id != 'sp24'}">
        <div class="chatLieu" style="margin-top: 20%" >
            <h3 class="tieuDe" > Chất liệu : </h3>
            <p class="thongTin" > Chân bàn: Sắt sơn tĩnh điện.
                Mặt bàn: Gỗ MDF chống ẩm, sơn phủ PU . </p>
        </div>
        </c:if>
        <c:if test="${productDetails.id == 'sp24'}">
            <div class="chatLieu" >
                <h3 class="tieuDe" > Chất liệu : </h3>
                <p class="thongTin" > Chân bàn: Sắt sơn tĩnh điện.
                    Mặt bàn: Gỗ MDF chống ẩm, sơn phủ PU . </p>
            </div>
        </c:if>

        <form action="cart-add?id=${productDetails.id}" method="post" class="soLuongSanPham">
     <input style="margin-top: 10% ; font-size: 250% ; font-weight: bold ; height: 250% ;width: 10%; border-radius: 5px ;
     background: white ; color: #1fb5d4 ; text-align: center ; margin-left: -87%" class="so soLuongDat quantity" name="quantitySold"
     type="number" value="1" onclick="clickQuantitySold()">

                <button type="submit" class="gioHang" style="margin-top: 10% ; margin-right: -50% ; margin-left: -60%" >
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="them">Thêm vào giỏ hàng</h3>
                </button>
      </form>
        <form action="paymentAddProductDetails?id=${productDetails.id}&&priceNew=${productDetails.priceNew}"
              method="post" class="soLuongSanPham" style="margin-top: -198px ; margin-left: 7%" >
            <input style="display: none ; margin-top: 100px" class="quantityPayment" name="quantitySold" type="number" value="1" >
            <c:if test="${productDetails.id != 'sp24'}">
                <button class="muaNgay" style="margin-left: 60%" type="submit">
                    <h3 class="mua"> Đặt mua ngay </h3>
                </button>
            </c:if>
            <c:if test="${productDetails.id == 'sp24'}">
                <button class="muaNgay" style="margin-left: 60% ; margin-top: 4%"  type="submit">
                    <h3 class="mua"> Đặt mua ngay</h3 >
                </button>
            </c:if>
        </form>
<%--        </form>--%>
        </div>
    </div>
</div>

<div class="uuDai1">
    <h2 class="sanPhamCungLoai"> SẢN PHẨM CÙNG LOẠI </h2>
    <div class="fromSpcl" style="overflow-x:auto; overflow-y:auto; height: 500px; width: 110%">
    <jsp:useBean id="productDetailsAllName" scope="request" type="java.util.List"/>
    <c:forEach var="p" items="${productDetailsAllName}">
        <form action="ProductDetails" method="POST">
            <a href="ProductDetails">
                <input style="display: none" type="text" name="id" value="${p.id}">
                <input style="display: none" type="text" name="name" value="${p.name}">
                <button type="submit" style="background: white;border: 1px solid white ; width: 100% ; height: 100% ">
    <div class="giaoHang" style="width: 99%" >
        <img class="anh" src="${p.linkImage}"/>
        <div class="thongTin" style="text-align: left">
            <h3 class="tieuDe">${p.name}</h3>
            <p class="thongTinChiTiet">${p.priceNew}đ </p>
        </div>
    </div>
                </button>
            </a>
        </form>
    </c:forEach>

<%--    <div class="giaoH
'ang1">--%>
<%--        <p class="thongTinChiTiet1">Xem Thêm</p>--%>
<%--    </div>--%>
</div>
</div>

<div class="uuDai">
    <div class="giaoHang">
        <img class="anh" src="Image_ThongTinSanPham_Home/ct1.PNG"/>
        <div class="thongTin">
            <h3 class="tieuDe">GIAO HÀNG MIỄN PHÍ </h3>
            <p class="thongTinChiTiet">Đối với các đơn hàng trên 2.000.000 đ </p>
        </div>
    </div>
    <div class="giaoHang">
        <img class="anh" src="Image_ThongTinSanPham_Home/ct2.PNG"/>
        <div class="thongTin">
            <h3 class="tieuDe">TÍCH ĐIỂM ĐỔI QUÀ</h3>
            <p class="thongTinChiTiet">Cam kết chính hàng chính hãng 100% </p>
        </div>
    </div>
    <div class="giaoHang">
        <img class="anh" src="Image_ThongTinSanPham_Home/ct3.PNG"/>
        <div class="thongTin">
            <h3 class="tieuDe">BẢO HÀNH TOÀN QUỐC</h3>
            <p class="thongTinChiTiet">Gọi ngay hotline để được tư vấn</p>
        </div>
    </div>
    <div class="giaoHang">
        <img class="anh" src="Image_ThongTinSanPham_Home/ct4.PNG"/>
        <div class="thongTin">
            <h3 class="tieuDe">TƯ VẤN 24/7</h3>
            <p class="thongTinChiTiet">Giảm giá từ 10% - 30% các ngày cuối tuần</p>
        </div>
    </div>

</div>

<div class="MoTa_ThongTinThanhToan">
    <div class="ten"> Mô tả
        <div class="khungMoTa">
            <p>
            ${productDetails.description}
            </p>
        </div>
    </div>
    <div class="tenThongTinThanhToan">
        Thông Tin Thanh Toán
        <div class="khungMoTa1">
            <p>
                <b> Ngân hàng Vietcombank : </b>
            <p> - Ng Van A </p>
            <p> - STK: 0691000374599 </p>
            <p> - Ngân hàng Vietcombank Hà Tây </p>
            <b> Ngân hàng Agribank :</b>
            <p> - Ng Van A</p>
            <p> - STK: 2000206180703 </p>
            <p> - Ngân hàng Agribank Đà Nẵng </p>
            </p>
        </div>
    </div>
</div>
<form action="send" method="post">
<div class="NhanXet"  >
    <h2 class="tieude"> GỬI NHẬN XÉT CỦA BẠN </h2>
    <div class="from">
        <h3 class="ten"> 1. Đánh giá của bạn về sản phẩm này: </h3>
        <div class="danhGia "  onclick="starOne()">
            <input name="ratTe" type="radio" value="Rất tệ" />
<%--            <i class="fa fa-star twoStar starOne" aria-hidden="true"></i>--%>
            <h3 class="DanhGia starOned">Rất tệ</h3>
        </div>
        <div class="danhGia "  onclick="starTwo()">
            <input name="te" type="radio" value="Tệ" />
<%--            <i class="fa fa-star oneStar starTwo"  aria-hidden="true"></i>--%>
            <h3 class="DanhGia starTwod">Tệ</h3>
        </div>
        <div class="danhGia2 "  onclick="starThree()">
            <input name="bt" type="radio" value="Bình thường" />
<%--            <i class="fa fa-star ThreeStar starThree "  aria-hidden="true"></i>--%>
            <h3 class="DanhGia starThreed">Bình thường</h3>
        </div>
        <div class="danhGia "  onclick="starfour()">
            <input name="tot" type="radio" value="Tốt" />
<%--            <i class="fa fa-star oneStar starfour" aria-hidden="true"></i>--%>
            <h3 class="DanhGia starfourd">Tốt</h3>
        </div>
        <div class="danhGia1 "  onclick="starFive()">
            <input name="ratTot" type="radio" value="Rất tốt" />
<%--            <i class="fa fa-star twoStar starFive" aria-hidden="true"></i>--%>
            <h3 class="DanhGia starFived">Rất tốt</h3>
        </div>
    </div>

    <div class="from">
        <h3 class="ten"> 2. Tên khách hàng: </h3>
        <input type="text"  name="nameCustomer" onchange="binhluan()" placeholder="Nhập tên khách hàng " class="nhap nhapTieuDe nhapTenKhachHang">
    </div>
    <div class="from">
        <h3 class="ten"> 3. Tiêu đề của nhận xét: </h3>
        <input type="text"  name="title" onchange="binhluan()"  placeholder="Nhập tiêu đề nhận xét " class="nhap nhapTieuDe">
    </div>
    <div class="from1">
        <h3 class="ten"> 4. Viết nhận xét của bạn vào bên dưới:</h3>
        <textarea type="text"   name="content" onchange="binhluan()"  placeholder="Nhận xét của bạn về sản phẩm này " class="nhap nhapNoiDung"> </textarea>
<%--        <jsp:useBean id="productDetails1" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.ProductDetails"/>--%>
    </div>
    <div class="from2">
<%--        <h3 class="ten"> Thêm hình sản phẩm nếu có (tối đa 5 hình): </h3>--%>
<%--        <div class="chonHinh">--%>
<%--            <h3 class="hinh"> Chọn hình </h3>--%>
<%--        </div>--%>
        <div class="chonHinh">
<%--            <a href="send">--%>
                <input type="text" style="display: none" name="id" value="${productDetails.id}">
                <input type="text" style="display: none" name="name" value="${productDetails.name}">
                <input type="text" style="display: none" name="linkImage" value="${productDetails.linkImage}">
            <button class="submit" type="submit" style="font-weight: bold; font-size: 100%" value=" Gửi nhận xét " onclick="success()">
<%--            <h3 class="hinh gui"> Gửi nhận xét </h3>--%>
                 Gửi nhận xét
            </button>
<%--            </a>--%>
        </div>
    </div>
</div>
</form>
<div id="khungBinhLuan" style=" height: ${count + 1 }00px ; margin-top: 350px ">
    <jsp:useBean id="count" scope="request" type="java.lang.Integer"/>
    <h3 class="soBinhLuan"> Nhận xét ( ${count} Nhận xét )</h3>
    <div class="binhLuan">
        <jsp:useBean id="ProductDetailsReview" scope="request" type="java.util.List"/>
        <c:forEach var="r" items="${ProductDetailsReview}">
        <div class="noiDungBinhLuan">
            <div class="anh">
                <img class="anhBinhLuan" src="TinTuc/Image_TinTuc/anhDaiDien2.PNG"/>
            </div>
            <div class="thongTinBinhLuan">
                <div class="ChiTiet">
                    <h4 class="tenNguoiBinhLuan">Tên : ${r.nameCustomer}
                        <c:if test="${r.evaluate == 'Rất tệ' || r.evaluate == 'Tệ' || r.evaluate == 'Bình thường' || r.evaluate == 'Tốt' || r.evaluate == 'Rất tốt'}" >
                        <i class="fa fa-star one" aria-hidden="true"></i>
                        </c:if>
                        <c:if test="${ r.evaluate == 'Tệ' || r.evaluate == 'Bình thường' || r.evaluate == 'Tốt' || r.evaluate == 'Rất tốt'}" >
                        <i class="fa fa-star two" aria-hidden="true"></i>
                        </c:if>
                        <c:if test="${ r.evaluate == 'Bình thường' || r.evaluate == 'Tốt' || r.evaluate == 'Rất tốt'}" >
                        <i class="fa fa-star three" aria-hidden="true"></i>
                        </c:if>
                        <c:if test="${r.evaluate == 'Tốt' || r.evaluate == 'Rất tốt'}" >
                        <i class="fa fa-star four" aria-hidden="true"></i>
                        </c:if>
                        <c:if test="${r.evaluate == 'Rất tốt'}" >
                        <i class="fa fa-star five" aria-hidden="true"></i>
                        </c:if>
                    </h4>
                </div>
                <p class="ngayDang danhgiabinhluan">Đánh giá : ${r.evaluate}</p>
                <p class="ngayDang danhgiaTieuDe">Tiêu đề : ${r.title}</p>
                <p class="noiDung noiDungTieuDe" >Nhận xét : ${r.content}</p>
            </div>
        </div>
        </c:forEach>
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
                            <input onchange="checkValidate()" type="email" name="email" class="email" placeholder="Nhập email của bạn ..."> </input>
<%--                            <input style="display: none" type="text" name="session" value="ProductDetails"> </input>--%>
                            <button type="submit" class="fromDangKi" onclick="clickValidate()">
                                <h6 class="dangKi" >Đăng kí</h6>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="ChiTietSanPham.js"></script>
<script>
    var soLuongDat = document.querySelector('.quantity');
    var quantityPayment = document.querySelector('.quantityPayment');

    function clickQuantitySold () {
        quantityPayment.value = Number( soLuongDat.value ) ;
        soLuongDat.value = quantityPayment.value;
    }

    function send () {
        const danhgiaTieuDe = document.querySelector('.danhgiaTieuDe');
        const noiDungTieuDe = document.querySelector('.noiDungTieuDe');
        var nhapTieuDe = document.querySelector('.nhapTieuDe').value;
        var nhapNoiDung = document.querySelector('.nhapNoiDung').value;

        danhgiaTieuDe.innerHTML = "Tiêu đề : " + nhapTieuDe;
        noiDungTieuDe.innerHTML = "Nhận xét : " + nhapNoiDung;
        alert("Khách hàng đã nhận xét thành công !");
    }
    function starOne() {
        const danhgiabinhluan = document.querySelector('.danhgiabinhluan');
        var starOned = document.querySelector('.starOned').innerHTML;
        danhgiabinhluan.innerHTML = "Đánh giá : " + starOned;

        const one = document.querySelector('div#khungBinhLuan div.binhLuan div.noiDungBinhLuan div.thongTinBinhLuan div.chiTiet h4.tenNguoiBinhLuan i.one');
        const two = document.querySelector('i.two');
        const three = document.querySelector('.three');
        const four = document.querySelector('.four');
        const five = document.querySelector('.five');
        one.style.color = "red";
        two.style.color = "red";
        three.style.color = "red";
        four.style.color = "red";
        five.style.color = "red";
        alert("kk");
    }
    function count () {
        const two = document.querySelector('.two');
        alert("mmm");
        two.style.color = "red";
    }
    const one = document.getElementById('#one');
    one.onclick = function () {
        one.style.color = "red";
        alert("hhh");
    };
    // nhapTenKhachHang nhapTieuDe nhapNoiDung
    const nhapTenKhachHang = document.querySelector('.nhapTenKhachHang');
    const nhapTieuDe = document.querySelector('.nhapTieuDe');
    const nhapNoiDung = document.querySelector('.nhapNoiDung');

    function binhluan() {
        let ischeck ;
        if (nhapTenKhachHang.value == "") {
            alert("kkkkkkkk");
            ischeck = false;
        } else if (nhapTieuDe.value  == "") {
            ischeck = false;
        }else if (nhapNoiDung.value  == "") {
            ischeck = false;
        }
        else {
            ischeck = true;
        }
        return ischeck;
    }
    function success () {
        if(binhluan()){
            alert("Qúy khách đã bình luận thành công !");
        }else{
            alert('Qúy khách vui lòng điền đầy đủ thông tin !');
        }
    }

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
    function zoom(e) {
        var zoomer = e.currentTarget;
        e.offsetX ? offsetX = e.offsetX : offsetX = e.touches[0].pageX
        e.offsetY ? offsetY = e.offsetY : offsetX = e.touches[0].pageX
        x = (offsetX / zoomer.offsetWidth) * 100
        y = (offsetY / zoomer.offsetHeight) * 100
        zoomer.style.backgroundPosition = x + "% " + y + "%";
    }
</script>
</body>
</html>