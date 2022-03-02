<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <link rel="stylesheet" href="../stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="img.png" type="image/png" class="icon">
    <title> NHOM 7 WEB FURNITURE - DANH MỤC SẢN PHẨM - NỘI THẤT PHÒNG KHÁCH </title>
    <link rel="stylesheet" href="GheSofa.css">

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
        <a href="../DangNhap.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy">
            <p class="danhNhap"><a
                    href="../DangNhap.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">Đăng
                nhập </a>
            <p class="cheo">/</p> <a
                href="../DangKy.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <p class="dangKi">Đăng ký</p></a>  </p>
        </div>
    </div>
    <div class="taiKhoanCuaToi">
        <a href="../Quản%20trị/Admin/examples/dashboard.jsp">
            <br>Tài khoản của tôi <i class="fa fa-chevron-down" aria-hidden="true"></i> </br>
        </a>
    </div>

    <div id="gioHang">
        <a href="../GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
        <a href="../AllProducts.jsp?_ijt=7pes57a6sf1vpphf135u5omt3j&_ij_reload=RELOAD_ON_SAVE">
            <h3 id="chu_DanhMuc"> DANH MỤC SẢN PHẨM </h3>
        </a>

        <div id="top">
            <a href="../PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="../PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="../PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="../VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a href="../NoiThatDoTrangTri.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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
        <h2 class="trangChu_TinTuc"> Trang Chủ / Danh mục sản phẩm / Nội thất phòng khách / Ghế Sofa </h2>
    </div>
</div>

<div id="layout1">
    <div id="left">
        <div class="khung">
            <div class="tieuDe">
                <h2 class="ten"> Danh Mục Sản Phẩm </h2>
            </div>
            <div class="noiDung">
                <a href="../PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Khách</p>
                    </div>
                </a>
                <a href="../PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Ngủ </p>
                    </div>
                </a>
                <a href="../PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Phòng Bếp</p>
                    </div>
                </a>
                <a href="../VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                    <div class="noiThat">
                        <p class="nd">Nội Thất Văn Phòng</p>
                    </div>
                </a>
                <a href="../NoiThatDoTrangTri.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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
            <div class="loai2">
                <a href="../NoiThatPhongKhach/BanTra.jsp?_ijt=fk2t0r4e54mbcbqcu89nrkltgm&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="../ImageProduct/ban-tra-phong-khach.webp"/>
                    <h3 class="tenLoaiDoTrangTri">Bàn trà</h3>
                </a>

            </div>
            <div class="loai1">
                <a href="../NoiThatPhongKhach/GheSofa.jsp?_ijt=fk2t0r4e54mbcbqcu89nrkltgm&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="../ImageProduct/Sofa_nau_co_dien.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Ghế Sofa</h3>
                </a>
            </div>
            <div class="loai">
                <a href="../NoiThatPhongKhach/KeTivi.jsp?_ijt=5ru345jeipunuhl7u90o1a1ns8&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="../ImageProduct/ke-tivi.jpg"/>
                    <h3 class="tenLoaiDoTrangTri">Kệ tivi</h3>
                </a>
            </div>
            <div class="loai">
                <a href="../NoiThatPhongKhach/GoiSofa.jsp?_ijt=5a9ujc352almkagjduojj3h8io&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="../NoiThatDoTrangTri/Image_DoTrangTri/loaiDoTrangTri4.PNG"/>
                    <h3 class="tenLoaiDoTrangTri">Gối sofa</h3>
                </a>
            </div>
            <div class="loai">
                <a href="../NoiThatPhongKhach/RemCua.jsp?_ijt=5a9ujc352almkagjduojj3h8io&_ij_reload=RELOAD_ON_SAVE">
                    <img class="anh" src="../NoiThatDoTrangTri/Image_DoTrangTri/loaiDoTrangTri5.PNG"/>
                    <h3 class="tenLoaiDoTrangTri">Rèm cửa </h3>
                </a>
            </div>
            <i class="fa fa-chevron-circle-right" aria-hidden="true"></i>
        </div>


        <div id="tieuDe">
            <h1 class="noiThatTrangtri"> Nội Thất Phòng Khách</h1>
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

            <div class="sanPham">
                <div class="sanPhamNoiThat">
                    <div class="anhDoTrangTri">
                        <img class="anh"
                             src="../ImageProduct/ghe_Sofa.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Sofa </h4>
                        <h4 class="gia"> 2.070.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                        <img class="anh"
                             src="../ImageProduct/Ghe_Bong_Bong.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Ghế bong bóng</h4>
                        <h4 class="gia"> 580.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                        <img class="anh"
                             src="../ImageProduct/ghe_Daw_Fabric.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Ghế Daw Fabric</h4>
                        <h4 class="gia"> 370.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                        <img class="anh"
                             src="../ImageProduct/ghe_Sofa.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Sofa </h4>
                        <h4 class="gia"> 2.070.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                        <img class="anh"
                             src="../ImageProduct/Ghe_Diamond.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten">Ghế Diamond</h4>
                        <h4 class="gia"> 400.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                        <img class="anh"
                             src="../ImageProduct/Ghe_Sofa_giuong_keo.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Ghế Sofa giường kéo</h4>
                        <h4 class="gia"> 2.600.000đ</h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                        <img class="anh" src="../ImageProduct/Sofa_nau_co_dien.jpg"/></div>
                    <div class="noiDungDoTrangTri">
                        <h4 class="ten"> Sofa nâu cổ điển </h4>
                        <h4 class="gia">2.190.000đ </h4>
                        <div class="nutgiohang" style="margin-left: 0%">
                            <a href="../GioHang.jsp">
                                <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                        data-id="1050379730"><i class="fa fa-cart-plus"
                                                                aria-hidden="true"></i><span> </span></button>
                            </a>
                            <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                    data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                  aria-hidden="true"></i></button>
                            <a href="../ThanhToan.jsp">
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
                            <img class="anh"
                                 src="../ImageProduct/Sofapk.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa phòng khách họa tiết</h4>
                            <h4 class="gia"> 2.280.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh"
                                 src="../ImageProduct/Goi-tua-lung-sofa-phong-cach-hien-dai.webp"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa phòng khách hiện đại</h4>
                            <h4 class="gia"> 3.160.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh"
                                 src="../ImageProduct/goi_tua_lung.webp"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten">Sofa phòng khách </h4>
                            <h4 class="gia"> 4.100.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/sofa-vai-tan-co-dien.jpg"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Bộ sofa cổ điển</h4>
                            <h4 class="gia"> 7.250.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh"
                                 src="Image_NTTTPhongkhach/Bo-ban-ghe-tan-co-dien.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Bộ bàn ghế sofa cổ điển </h4>
                            <h4 class="gia"> 10.170.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/sofa1.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa hiện đại </h4>
                            <h4 class="gia"> 3.270.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh"
                                 src="Image_NTTTPhongkhach/sofa2.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Bộ Sofa phòng khách </h4>
                            <h4 class="gia"> 8.200.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/sofa3.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa phòng khách</h4>
                            <h4 class="gia"> 3.290.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="../NoiThatDoTrangTri/Image_Goisofa/goi16.PNG" height="230"
                                 width="246"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa gia đình</h4>
                            <h4 class="gia"> 2.190.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/ghe-sofa-hinh-chu-U.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa phòng khách hình chữ U </h4>
                            <h4 class="gia">4.280.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/ghe-sofa-chu-U-cao-cap-dep-hien-dai.jpg"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Ghế sofa chữ U cao cấp </h4>
                            <h4 class="gia"> 4.560.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh"
                                 src="Image_NTTTPhongkhach/ghe-sofa-boc-vai-cao-cap-hien-dai-SF028-1.jpg"/></div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Ghế sofa bọc vải cao cấp </h4>
                            <h4 class="gia"> 2.290.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/sofa_phong_khach.png"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa phòng khách </h4>
                            <h4 class="gia">3.330.000đ</h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/phoi-hop-ban-tra-voi-ghe-sofa-01.jpg"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa phối hợp với bàn trà </h4>
                            <h4 class="gia"> 3.180.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
                            <img class="anh" src="Image_NTTTPhongkhach/Sofa_giuong_nhap_khau.jpg"/>
                        </div>
                        <div class="noiDungDoTrangTri">
                            <h4 class="ten"> Sofa giường nhập khẩu </h4>
                            <h4 class="gia"> 3.500.000đ </h4>
                            <div class="nutgiohang" style="margin-left: 0%">
                                <a href="../GioHang.jsp">
                                    <button type="button" class="btnAddToCart add-to-cart medium--hide small--hide"
                                            data-id="1050379730"><i class="fa fa-cart-plus"
                                                                    aria-hidden="true"></i><span> </span></button>
                                </a>
                                <button type="button" class="btnQuickView quick-view medium--hide small--hide"
                                        data-handle="/products/sofa-da-hana-bd-24"><i class="fa fa-search-plus"
                                                                                      aria-hidden="true"></i></button>
                                <a href="../ThanhToan.jsp">
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
            <div class="khung3">
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

</script>
</html>