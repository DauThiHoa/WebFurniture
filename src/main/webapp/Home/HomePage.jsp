<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
    <link rel="stylesheet" href="../stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <style>

    </style>
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
        <a href="../LienHe/LienHe.jsp?_ijt=bgebfatbnkkhu3d1mtpkq4j6ov">
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
        <a href="../DangNhap/DangNhap.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy">
            <p class="danhNhap"><a
                    href="../DangNhap/DangNhap.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">Đăng
                nhập </a>
            <p class="cheo">/</p> <a
                href="../DangKy/DangKy.jsp?_ijt=q7ugr2f97p7gue49hcbn19guvn&_ij_reload=RELOAD_ON_SAVE">
            <p class="dangKi">Đăng ký</p></a>  </p>
        </div>
    </div>
    <div class="taiKhoanCuaToi">
        <a href="../Quản%20trị/Admin/examples/dashboard.jsp">
            <br>Tài khoản của tôi <i class="fa fa-chevron-down" aria-hidden="true"></i> </br>
        </a>
    </div>

    <div id="gioHang">
        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
        <a href="../Products/AllProducts.jsp?_ijt=7pes57a6sf1vpphf135u5omt3j&_ij_reload=RELOAD_ON_SAVE">
            <h3 id="chu_DanhMuc"> DANH MỤC SẢN PHẨM </h3>
        </a>

        <div id="top">
            <a href="../Products/PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="../Products/PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="../Products/PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="../Products/VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a href="../NoiThatDoTrangTri/NoiThatDoTrangTri.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
                <div class="danhMuc5">
                    <h4 class="noiDungSanPham5"> ĐỒ TRANG TRÍ </h4>
                </div>
            </a>
        </div>

    </div>
    <a href="../Home/HomePage.jsp?_ijt=dvcgr4eqabqa191pdiriackdbe">
        <div id="trangchu">
            <h3 class="ten"> TRANG CHỦ </h3>
        </div>
    </a>
    <a href="../HeThongCuaHang/HeThongCuaHang.jsp?_ijt=tbj9541mbers5cne53u03tmg0j">
        <div id="heThongCuaHang">
            <h3 class="ten"> HỆ THỐNG CỬA HÀNG </h3>
        </div>
    </a>
    <a href="../TinTuc/TinTuc.jsp?_ijt=iv6smvovu312mhdpg2551fpkq2">
        <div id="tinTuc">
            <h3 class="ten"> TIN TỨC </h3>
        </div>
    </a>
    <a href="../LienHe/LienHe.jsp?_ijt=8lg57ntcbod9a8p8j8prq19rf6">
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

    <div id="BanLamViec">
        <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
            <img id="anh_BanLamViec" src="Image/img_1.png"/>
        </a>
        <div id="blv">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <h1 class="chuBanLamViec"> Tủ bếp đơn giản </h1>
            </a>
            <div class="sao3">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <p id="luxury">LUXURY</p>
            <h2 id="giaBLV">1.000.000đ</h2>
            <div class="gioHang">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div id="chu_SanPhamNoiBat">
        <h2 class="tenSanPhamNoBat">SẢN PHẨM NỔI BẬT</h2>
    </div>
    <div id="sangTraiPhaiSPNB">
        <img id="left" src="Image/sangTrai.PNG" onclick="left(this)" alt="left"/>
        <img id="right" src="Image/sangPhai.PNG" onclick="right(this)" alt="right"/>

    </div>
    <div id="tenCacSanPhamNoiBat">
        <div class="tensanpham" id="khungsanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/TuHabu.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Tủ HaBu </h2>
                </a>
                <h3 class="giasanpham">500.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>


        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/SofaBangBella.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Sofa Bảng Bella </h2>
                </a>
                <h3 class="giasanpham">3.000.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>


        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/keTuHobu.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Kệ Tủ HoBu </h2>
                </a>
                <h3 class="giasanpham">5.000.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>


        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/KeTreoPoplar.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Kệ Treo Poplar </h2>
                </a>
                <h3 class="giasanpham">500.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>


        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/KeTiViHoBu.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Kệ Ti Vi HoBu</h2>
                </a>
                <h3 class="giasanpham">900.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>

        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/gheEuro.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Ghế Euro</h2>
                </a>
                <h3 class="giasanpham">200.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>


        <div class="tenCacSanPhamNoiBat1">
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/Goi-tua-lung-van-phong.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Gối tựa lưng</h2>
                    </a>
                    <h3 class="giasanpham">110.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham" src="../ImageProduct/Sofapk.jpg"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Sofa phòng khách </h2>
                    </a>
                    <h3 class="giasanpham">2.280.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/ban-tra-chong-tham-nuoc.jpg"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Bàn trà</h2>
                    </a>
                    <h3 class="giasanpham">1.529.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/Goi-tua-lung-sofa-phong-cach-hien-dai.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Gối Sofa hiện đại</h2>
                    </a>
                    <h3 class="giasanpham">160.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/Dem-ngoi-hinh-vuong-phong-cach.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Đệm ngồi</h2>
                    </a>
                    <h3 class="giasanpham">120.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/ban-tra-phong-khach.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Bàn trà phòng khách</h2>
                    </a>
                    <h3 class="giasanpham">1.280.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
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
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatVanPhong/Image_vanphong/ban-lam-viec-chu-l-chan-sat.jpg"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten"> Bàn làm việc chữ L </h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">700.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatVanPhong/Image_vanphong/dongho.jpg"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten"> Đồng hồ treo tường </h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">400.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->

            <!-- San pham -->
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatVanPhong/Image_vanphong/den-led-de.jpg"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten"> Đèn led </h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">270.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->

            <!-- San pham -->
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatVanPhong/Image_vanphong/ghe-van-phong-sofa.jpg"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten"> Ghế sofa văn phòng </h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">3.100.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->
        </div>
        <!-- Do Dung Van Phong -->
        <p id="hot3" onclick="hot3( this)" alt="hot3"> Nội thất gỗ </p>

        <!-- Do Dung Van Phong -->
        <div class="NoiThatGo">
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatPhongKhach/Image_NTTTPhongkhach/ban-tra.png"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten">Bàn trà đơn giản</h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">990.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatPhongKhach/Image_NTTTPhongkhach/ban-sofa.webp"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten"> Bàn trà sofa </h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">1.500.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->

            <!-- San pham -->
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../ImageProduct/Khung-tranh-de-ban.webp"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten">Khung tranh để bàn</h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">150.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->

            <!-- San pham -->
            <div class="gheGoBapBenhIconic">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                    <img class="anh_gheGoBapBenhIconic"
                         src="../NoiThatVanPhong/Image_vanphong/ban-van-phong.jpg"/>
                </a>
                <div class="iconic">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                        <h2 class="ten">Bàn làm việc văn phòng </h2>
                    </a>
                    <div class="sao4">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                        <i class="fa fa-star" aria-hidden="true"></i>
                    </div>
                    <h3 class="giaIconic">2.080.000đ</h3>
                    <div class="gioHang4">
                        <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                            <div>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- San pham -->
        </div>
        <!-- Noi That Go -->
    </div>
    <div id="gheGoBapBenhIconic">
        <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
            <img id="anh_gheGoBapBenhIconic" src="Image/img_2.png"/>
        </a>
        <div id="iconic">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=5vff1fns2k7mbhommgu3i8t1op">
                <h2 class="ten"> Ghế sofa bọc nỉ chân cao </h2>
            </a>
            <div class="sao4">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaIconic">700.000đ</h3>
            <div class="gioHang4">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div id="ghePhongKhachArctander">
        <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=57aipo7ce2c1p4s6j3hgp2sfcd">
            <img id="anh_ghePhongKhachArctander" src="Image/img_3.png"/>
        </a>
        <div id="Arctander">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=57aipo7ce2c1p4s6j3hgp2sfcd">
                <h2 class="ten"> Ghế đôn bọc da cao cấp </h2>
                <div class="sao4">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </a>
            <h3 id="giaArctander">1.000.000đ</h3>
            <div class="gioHang4">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div id="BanAillen03">
        <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=68kf9u36lme3igk9lr8h157gju">
            <img id="anh_BanAillen03" src="Image/BanAillen03_SPH.PNG"/>
        </a>
        <div id="Aillen03">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=68kf9u36lme3igk9lr8h157gju">
                <h2 class="ten">Bàn Aillen 03</h2>
            </a>
            <div class="sao4">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaAillen03">1.400.000đ</h3>
            <div class="gioHang4">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div id="banBinas">
        <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=8sf9mppof2dfli4ovrjo3ujdpo">
            <img id="anh_banBinas" src="Image/BanBinas_SPH.PNG"/>
        </a>
        <div id="binas">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=8sf9mppof2dfli4ovrjo3ujdpo">
                <h2 class="ten">Bàn Binas</h2>
            </a>
            <div class="sao4">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaBinas">900.000đ</h3>
            <div class="gioHang4">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div id="sangTraiPhaiSPH">
        <img id="left_SPH" src="Image/sangTrai.PNG" onclick="left(this)" alt="left"/>
        <img id="right_SPH" src="Image/sangPhai.PNG" onclick="right(this)" alt="right"/>
    </div>
</div>

<div id="SanPhamMoi">
    <div id="Kozoka_trysil">
        <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=8sf9mppof2dfli4ovrjo3ujdpo">
            <img id="anh_Kozoka_trysil"
                 src="../NoiThatPhongNgu/Image_NTTTPhongngu/tu-quan-ao-mini-nhua-4.jpg"/>
        </a>
        <div id="Kozoka">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=8sf9mppof2dfli4ovrjo3ujdpo">
                <h2 class="ten">Tủ quần áo nhựa mini</h2>
            </a>
            <div class="sao3">
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
                <i class="fa fa-star" aria-hidden="true"></i>
            </div>
            <h3 id="giaKozoka">900.000đ</h3>
            <div class="gioHang">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
    </div>

    <div id="chu_SamPhamMoi">
        <h2>SẢN PHẨM MỚI</h2>
    </div>
    <div id="sangTraiPhaiSPM">
        <img id="left_SPM" src="Image/sangTrai.PNG" onclick="left_SPM(this)" alt="SPM"/>
        <img id="right_SPM" src="Image/sangPhai.PNG" onclick="right_SPM(this)" alt="SPM"/>
    </div>
    <div id="tenCacSanPhamMoi">
        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/dongHoMiso_SPM.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Đồng hồ Miso </h2>
                </a>
                <h3 class="giasanpham">1.500.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/dongHoTaBu_SPM.PNG"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Đồng hồ Tabu</h2>
                </a>
                <h3 class="giasanpham">3.050.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/img_4.png"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Tủ để áo cho bé</h2>
                </a>
                <h3 class="giasanpham">400.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/Ban_Eames_tron.webp"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Bàn Eames tròn</h2>
                </a>
                <h3 class="giasanpham">5.500.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham"
                     src="../NoiThatVanPhong/Image_vanphong/ghe-ngu-trua-van-phong.jpg"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Ghế văn phòng</h2>
                </a>
                <h3 class="giasanpham">15.000.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>
        <div class="tensanpham">
            <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                <img class="anhSanPham" src="Image/Ban_lam_viec_go.jpg"/>
            </a>
            <div class="sanpham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <h2 class="ten">Bàn làm việc đẹp</h2>
                </a>
                <h3 class="giasanpham">95.000đ</h3>
            </div>
            <div class="gioHang5">
                <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                    <div>
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                    </div>
                </a>
            </div>
        </div>

        <div class="tenCacSanPhamMoi3">
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/tu-treo-quan-ao.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Tủ treo quần áo</h2>
                    </a>
                    <h3 class="giasanpham">1.700.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/tu-quan-ao-canh-lua-thiet-ke.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Tủ quần áo</h2>
                    </a>
                    <h3 class="giasanpham">2.700.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/tu-de-quan-ao-go.webp"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Tủ quần áo</h2>
                    </a>
                    <h3 class="giasanpham">1.750.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../ImageProduct/giuong-hop-go-tu-nhien.jpg"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Giường hộp gỗ</h2>
                    </a>
                    <h3 class="giasanpham">4.700.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../NoiThatPhongNgu/Image_NTTTPhongngu/tu-quan-ao-gon-gang-khoa-hoc-1.jpg"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Tủ quần áo</h2>
                    </a>
                    <h3 class="giasanpham">1.400.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->
            <!-- San Pham Bam nut chuyen -->
            <div class="tensanpham1">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                    <img class="anhSanPham"
                         src="../NoiThatPhongNgu/Image_NTTTPhongngu/bo-goi.jpg"/>
                </a>
                <div class="sanpham">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=92qor4v097kkqak40toroe3gu2">
                        <h2 class="ten">Bộ chăn gối ngủ</h2>
                    </a>
                    <h3 class="giasanpham">250.000đ</h3>
                </div>
                <div class="gioHang5">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                        <div>
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                        </div>
                    </a>
                </div>
            </div>
            <!-- San Pham Bam nut chuyen -->

        </div>

    </div>
</div>
<div id="layout4">
    <div class="layout4_danhMucSanPham">
        <a href="../NoiThatDoTrangTri/NoiThatDoTrangTri.jsp?_ijt=6ckcb7ad8uk7545qms42j8a53d">
            <div class="danhMucSanPham">
                <img class="anh"
                     src="../NoiThatDoTrangTri/Image_DoTrangTri/rem4.PNG"/>
                <div class="noiThat">
                    <h2 class="tenNoiThat"> Đồ trang trí </h2>
                    <p class="noiDung"> Ấn tượng , thu hút </p>
                </div>
            </div>
        </a>
    </div>
    <div class="layout4_danhMucSanPham">
        <a href="../Products/PhongBep.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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
        <a href="../Products/PhongKhach.jsp?_ijt=gnb6d8fm3mj6k2rnt8rlpjjb8r&_ij_reload=RELOAD_ON_SAVE">
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
        <a href="../Products/PhongNgu.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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
        <a href="../Products/VanPhong.jsp?_ijt=u02dapo0848viiovmlb2f3u0eo&_ij_reload=RELOAD_ON_SAVE">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image_Home2/banLamViecND01_layout5.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten"> Bàn Làm Việc ND01</h2>
                    </a>
                    <h3 class="gia"> 5.000.000đ</h3>
                </div>

                <div class="gioHang">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=8nuem9t3lvdcteggcgcv9c0ujk">
                    <img class="anh5" src="Image_Home2/ghePhongKhachND01_layout5.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=8nuem9t3lvdcteggcgcv9c0ujk">
                        <h2 class="ten"> Ghế phòng khách ND01</h2>
                    </a>
                    <h3 class="gia"> 7.000.000đ</h3>
                    <p><strike CLASS="giaCu">10.000.000đ</strike></p>
                </div>
                <div class="gioHang2">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=ag29j69pqp44c350m6e5bloqso">
                    <img class="anh5" src="Image_Home2/noiThatPhongNguND01_layout5.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=ag29j69pqp44c350m6e5bloqso">
                        <h2 class="ten"> Nội thất phòng ngủ ND01</h2>
                    </a>
                    <h3 class="gia"> 15.500.000đ</h3>
                </div>
                <div class="gioHang">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=jjrqso5h47t1oua3f6ktggb10i">
                    <img class="anh5" src="Image_Home2/phongKhachND01_layout5.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=jjrqso5h47t1oua3f6ktggb10i">
                        <h2 class="ten"> Nội thất phòng khách ND01</h2>
                    </a>
                    <h3 class="gia"> 11.560.000đ</h3>
                    <p><strike CLASS="giaCu">15.000.000đ</strike></p>
                </div>
                <div class="gioHang1">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
        </div>

        <!-- SanPham Khi Nhan Nut -->
        <div class="tenCacSanPham2">
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_6.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Bộ giường tủ phòng</h2>
                    </a>
                    <h3 class="gia"> 5.000.000đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_7.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Bộ bàn ghế gỗ NT01</h2>
                    </a>
                    <h3 class="gia"> 3.350.000đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_8.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Bộ Sofa đẹp NT02</h2>
                    </a>
                    <h3 class="gia"> 3.350.000đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <!-- SAN PHAM NHO -->
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_9.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Bộ phòng khách NT03</h2>
                    </a>
                    <h3 class="gia"> 5.350.000đ</h3>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=hlihs0b485htgtbbd307bkt282">
                    <img class="anh5" src="Image_Home2/banAnBangGo_layout6.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=hlihs0b485htgtbbd307bkt282">
                        <h2 class="ten"> Bàn ăn bằng gỗ</h2>
                    </a>
                    <h3 class="gia"> 500.000đ</h3>
                </div>
                <div class="gioHang">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=hlihs0b485htgtbbd307bkt282">
                    <img class="anh5" src="Image_Home2/banTrangDiem_layout6.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=hlihs0b485htgtbbd307bkt282">
                        <h2 class="ten"> Bàn trang điểm </h2>
                    </a>
                    <h3 class="gia"> 2.400.000đ</h3>
                    <p><strike CLASS="giaCu">3.000.000đ</strike></p>
                </div>
                <div class="gioHang">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=nobhive33c5ajromf12im2gkp4">
                    <img class="anh5" src="Image_Home2/gheSofaNau_layout6.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=nobhive33c5ajromf12im2gkp4">
                        <h2 class="ten"> Ghế sofa nâu </h2>
                    </a>
                    <h3 class="gia1"> 350.000đ</h3>
                </div>
                <div class="gioHang">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=r0j52v3t961e70g5gf3iv15a9d">
                    <img class="anh5" src="Image_Home2/sofaPhongKhach_layout6.PNG"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=r0j52v3t961e70g5gf3iv15a9d">
                        <h2 class="ten"> Sofa phòng khách</h2>
                    </a>
                    <h3 class="gia" style="margin-left: -190px "> 560.000đ</h3>
                </div>
                <div class="gioHang">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
        </div>

        <!-- SanPham Khi Nhan Nut -->
        <div class="tenCacSanPham4">
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_14.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Sofa cam LOCO6</h2>
                    </a>
                    <h3 class="gia" style="margin-left: -175px ; margin-top: 100px"> 5.000.000đ</h3>
                    <p><strike style="margin-left: -175px " CLASS="giaCu">7.000.000đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_15.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Sofa xanh PHAT08</h2>
                    </a>
                    <h3 class="gia" style="margin-left: -200px ; margin-top: 100px"> 3.350.000đ</h3>
                    <p><strike style="margin-left: -200px  " CLASS="giaCu">5.000.000đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_16.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Bộ Sofa đẹp NT04</h2>
                    </a>
                    <h3 class="gia" style="margin-left: -190px ; margin-top: 100px"> 5.000.000đ</h3>
                    <p><strike style="margin-left: -190px " CLASS="giaCu">10.000.000đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <!-- SAN PHAM NHO -->
            <!-- SAN PHAM NHO -->
            <div class="cacSanPham">
                <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                    <img class="anh5" src="Image/img_13.png"/>
                </a>
                <div class="moTa">
                    <a href="../ThongTinSanPham_Home/BanAillen_03.jsp?_ijt=dpiakvsoh8s9mqkrn77uifguvb">
                        <h2 class="ten">Giường gỗ đèn LED</h2>
                    </a>
                    <h3 class="gia" style="margin-left: -205px ; margin-top: 100px"> 4.350.000đ</h3>
                    <p><strike style="margin-left: -205px " CLASS="giaCu">8.500.000đ</strike></p>
                </div>

                <div class="gioHang6">
                    <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
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
            <!-- SAN PHAM NHO -->
        </div>
    </div>
    <!-- SanPham Khi Nhan Nut-->

</div>
</div>
<div class="DiemDen">
    <h1 class="chuDiemDenMoi"> Sản Phẩm Đặc Trưng </h1>
    <div class="SanPhamDiemDenMoi">
        <img class="anh" src="SanPhamDacTrung/img.png">
        <h2 class="ten"> Ghế Sofa được thiết kế </h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia"> 165.000 đ </h3>
        <div class="gioHang3">
            <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>

    <div class="SanPhamDiemDenMoi">
        <img class="anh" src="SanPhamDacTrung/img_1.png">
        <h2 class="ten"> Bàn ăn tối </h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia"> 200.000 đ </h3>
        <div class="gioHang3">
            <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>

    <div class="SanPhamDiemDenMoi">
        <img class="anh" src="SanPhamDacTrung/img_2.png">
        <h2 class="ten"> Ghế và bàn </h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia"> 100.000 đ </h3>
        <div class="gioHang3">
            <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>


    <div class="SanPhamDiemDenMoi">
        <img class="anh" src="SanPhamDacTrung/img_3.png">
        <h2 class="ten"> Ghế bành hiện đại </h2>
        <div class="sao1">
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
            <i class="fa fa-star" aria-hidden="true"></i>
        </div>
        <h3 class="gia"> 300.000 đ </h3>
        <div class="gioHang3">
            <a href="../GioHang/GioHang.jsp?_ijt=jcprnpa34msltves625aqk8542">
                <div>
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <h3 class="chu_giohang">Thêm vào giỏ hàng</h3>
                </div>
            </a>
        </div>
    </div>

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
            <a href="../TinTuc/VeSinhNoiThat.jsp?_ijt=lvloioudv4ca7m9l3421rbvmat">
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
            <a href="../TinTuc/MeoVat.jsp?_ijt=42n7g22303aucjlb03u168175o">
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
                <a href="../LienHe/LienHe.jsp?_ijt=q9t21vli8l1t46l15aaa24a1ig">
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
                    <a href="../Home/HomePage.jsp?_ijt=sdb4e0o3k6e2s6nue45ib5bgg8">
                        <p>Trang chủ</p></a>
                    <a href="../HeThongCuaHang/HeThongCuaHang.jsp?_ijt=k6p7tj27b1b7ko58l8jc0ko3o6">
                        <p>Giới thiệu</p>
                    </a>
                    <a href=" ../Product/AllProducts.jsp?_ijt=lb79ipc726t04q7dgtat16sn83">
                        <p>Sản phẩm</p>
                    </a>
                    <a href="../TinTuc/TinTuc.jsp?_ijt=uf04v4frj3s542hpmh3eguf6kr">
                        <p>Tin tức</p></a>
                    <a href="../LienHe/LienHe.jsp?_ijt=k6p7tj27b1b7ko58l8jc0ko3o6">
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
                        <input class="email" placeholder="Nhập email của bạn ..."> </input>
                        <div class="fromDangKi">
                            <h5 class="dangKi">Đăng kí</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>