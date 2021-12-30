<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="GioHang.css">
    <link rel="icon" href="img_1.png" type="image/png">
    <link rel="stylesheet" href="../stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>GIỎ HÀNG</title>
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
        <a href="../LienHe/LienHehtml">
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
        <a href="../DangNhap/DangNhap.jsp">
            <div>
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy">
            <p class="danhNhap"><a
                    href="../DangNhap/DangNhap.jsp">Đăng
                nhập </a>
            <p class="cheo">/</p> <a
                href="../DangKy/DangKy.jsp">
            <p class="dangKi">Đăng ký</p></a>  </p>
        </div>
    </div>
    <div class="taiKhoanCuaToi">
        <a href="../Quản%20trị/Admin/examples/dashboard.jsp">
            <br>Tài khoản của tôi <i class="fa fa-chevron-down" aria-hidden="true"></i> </br>
        </a>
    </div>

    <div id="gioHang">
        <a href="../GioHang/GioHang.jsp">
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
        <img id="anh_danhMuc" src="../Home/Image/ThanhChon.PNG"/>
        <a href="../Products/AllProducts.jsp">
            <h3 id="chu_DanhMuc"> DANH MỤC SẢN PHẨM </h3>
        </a>

        <div id="top">
            <a href="../Products/PhongKhach.jsp">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="../Products/PhongNgu.jsp">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="../Products/PhongBep.jsp">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="../Products/VanPhong.jsp">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a href="../NoiThatDoTrangTri/NoiThatDoTrangTri.jsp">
                <div class="danhMuc5">
                    <h4 class="noiDungSanPham5"> ĐỒ TRANG TRÍ </h4>
                </div>
            </a>
        </div>

    </div>
    <a href="../Home/HomePage.jsp">
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

<h1 class="gioHang">GIỎ HÀNG</h1>

<div class="tab">
    <table class="table" border="1">
        <colgroup>
            <col width="5%" span="1">
            <col width="8%" span="1">
            <col width="20%" span="1">
            <col width="20%" span="1">
            <col width="15%" span="1">
            <col width="10%" span="1">
            <col width="15%" span="1">
            <col width="5%" span="1">
            <col width="5%" span="1">
        </colgroup>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <th class="TieuDeBangSanPham ">STT</th>
            <th class="TieuDeBangSanPham">SẢN PHẨM</th>
            <th class="TieuDeBangSanPham">TÊN SẢN PHẨM</th>
            <th class="TieuDeBangSanPham">GIÁ</th>
            <th class="TieuDeBangSanPham">SỐ LƯỢNG</th>
            <th class="TieuDeBangSanPham">THÀNH TIỀN</th>
            <th class="TieuDeBangSanPham">SỬA</th>
            <th class="TieuDeBangSanPham">XÓA</th>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="1"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px " src="../Home/Image/TuHabu.PNG"
                                    class="imageGioHang" width="150px" height="150px"/></td>
            <td align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4 class="tenSanPham"> Tủ
                HABU </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold">1.000.000 đ</td>
            <td align="center"><input class="form-control text-center" value="1" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 1.000.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="2"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px " src="../Home/Image/SofaBangBella.PNG"
                                    class="imageGioHang" width="150px" height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Sofa Bang Bella </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold"> 2.000.000 đ</td>
            <td align="center"><input class="form-control text-center" value="2" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 4.000.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="3"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px "
                                    src="../ImageProduct/Ghe-sofa-boc-ni-dang-chan-cao.webp" class="imageGioHang"
                                    width="150px" height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Ghế sofa bọc nỉ chân cao </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold"> 320.000 đ</td>
            <td align="center"><input class="form-control text-center" value="1" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 320.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="4"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px "
                                    src="../ImageProduct/ban-tra-phong-khach.webp" class="imageGioHang" width="150px"
                                    height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Bàn trà phòng khách </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold"> 280.000 đ</td>
            <td align="center"><input class="form-control text-center" value="3" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 840.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="5"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px " src="../Home/Image/gheEuro.PNG"
                                    class="imageGioHang" width="150px" height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Ghế Euro </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold"> 200.000 đ</td>
            <td align="center"><input class="form-control text-center" value="4" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 800.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="6"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px " src="../Home/Image/KeTreoPoplar.PNG"
                                    class="imageGioHang" width="150px" height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Kệ Treo Poplar </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold">250.000 đ</td>
            <td align="center"><input class="form-control text-center" value="1" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 250.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="7"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px " src="../Home/Image/KeTiViHoBu.PNG"
                                    class="imageGioHang" width="150px" height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Kệ TiVi HoBu </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold"> 130.000 đ</td>
            <td align="center"><input class="form-control text-center" value="2" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 260.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>
        <tr>
            <td align="center"><input style=" width: 25px ; height: 25px" type="checkbox" name="sport" value="check">
            </td>
            <td align="center"><input style="font-weight: bold ; width: 50px ; text-align: center" type="text"
                                      name="fname" value="8"><br></td>
            <td align="center"><img style="text-align: center ; margin-top: 5px " src="../ImageProduct/Den_de_ban.jpg"
                                    class="imageGioHang" width="150px" height="150px"/></td>
            <td class="tenSanPham" align="center" style="font-size: 20px ; color: #1fb5d4 ; font-weight: bold"><h4
                    class="tenSanPham"> Đèn để bàn học tập </h4></td>
            <td align="center" style="font-size: 20px ; font-weight: bold"> 500.000 đ</td>
            <td align="center"><input class="form-control text-center" value="2" type="number"></td>
            <td align="center" style="font-size: 20px  ; font-weight: bold ; color: orange"> 1.000.000 đ</td>
            <td align="center"><i style="font-size: 35px ; color: #1fb5d4 ; " class="fa fa-edit"></i></td>
            <td align="center"><i style="font-size: 35px ; color: red ; " class="fa fa-trash" aria-hidden="true"></i>
            </td>
        </tr>

    </table>
</div>

<div class="TT">
    <h2 class="tongTienThanhToan" style="margin-left: 1070px ; color: red"> Tổng tiền : 1.080.000 đ </h2>
</div>

<div class="MuaHang">
    <a href="../Home/HomePage.jsp">
        <div class="tiepTuc">
            <i class="fa fa-chevron-left" aria-hidden="true"></i>
            <h2 class="ten"> Tiếp tục mua hàng</h2>
        </div>
    </a>
    <a href="../ThanhToan/ThanhToan.jsp">
        <div class="tiepTheo" style="margin-left: 1280px ; margin-top: -45px">
            <h2 class="ten"> Thanh toán </h2>
            <i class="fa fa-chevron-right" aria-hidden="true"></i>
        </div>
    </a>
</div>

<div id="layout2">
    <div class="text">
        <div class="dong1">
            <h10 class="chinhsach" style="margin-left: 10px; color: white">Chính sách mua hàng</h10>
            <h2 class="chinhsach" style="margin-left: 10px; color: #555555">Chính sách mua hàng</h2>
        </div>
        <div>
            <h3 style="margin-left: 10px; color: #555555"><i style="margin-right: 10px" class="fa fa-arrow-right"></i>Sản
                phẩm được đổi 1 lần duy nhất, không hỗ trợ đổi trả.</h3>
            <h3 style="margin-left: 10px; color: #555555"><i style="margin-right: 10px" class="fa fa-arrow-right"></i>Sản
                phẩm còn đủ tem mác, chưa qua sử dụng.</h3>
            <h3 style="margin-left: 10px; color: #555555"><i style="margin-right: 10px" class="fa fa-arrow-right"></i>Sản
                phẩm nguyên giá được đổi trong 30 ngày trên toàn hệ thống.</h3>
            <h3 style="margin-left: 10px; color: #555555"><i style="margin-right: 10px" class="fa fa-arrow-right"></i>Sản
                phẩm sale chỉ hỗ trợ đổi size (nếu cửa hàng còn) trong 7 ngày trên toàn hệ thống.</h3>
        </div>
    </div>
</div>
<div id="layout3">
    <div class="container">
        <div class="lienHe">
            <h1 style="color: #0a58ca">HÃY LIÊN HỆ VỚI CHÚNG TÔI !!!</h1>
            <p style="color: #555555">Luôn sẵn sàng hỗ trợ và tư vấn cho bạn để có sản phẩm tốt nhất.</p>
            <button class="btn1" style="width: 500px; height: 58px; color: #555555">Nhập email của bạn</button>
            <button class="btn2" style="width: 110px; height: 58px; color: white">Gửi</button>
        </div>
    </div>
</div>

<div id="ThanhHoTro">
    <div id="chatLuong">
        <img id="anh_ChatLuong" src="../Home/Image/chatLuong.PNG"/>
        <div id="bd"><h4> Bảo đảm chất lượng </h4></div>
        <div id="sp">
            <p>Sản phẩm bảo đảm chất lượng</p>
        </div>
    </div>
    <div id="giaoHang">
        <img id="anh_GiaoHang" src="../Home/Image/giaoHang.PNG"/>
        <div id="mp"><h4>Miễn phí giao hàng</h4></div>
        <div id="dh">
            <p>Cho đơn hàng từ 2 triệu đồng </p>
        </div>
    </div>
    <div id="hoTro">
        <img id="anh_HoTro" src="../Home/Image/hoTro.PNG"/>
        <div id="ht"><h4>Hỗ trợ 24/7</h4></div>
        <div id="hl">
            <p>Hotline: 0123 456 789 </p>
        </div>
    </div>
    <div id="doiTra">
        <img id="anh_DoiTro" src="../Home/Image/doiTra.PNG"/>
        <div id="dt"><h4>Đổi trả hàng</h4></div>
        <div id="dk">
            <p class="trongVong">Trong vòng 7 ngày</p>
        </div>
    </div>
</div>

<div id="layout5">
    <button style="color: white"><h3>THÔNG TIN KHÁC</h3></button>
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
                            <img class="mang" src="../Home/Image_Home2/fb_left.PNG"/></a>
                        <a href="https://www.google.com/search?q=google&oq=goo&aqs=chrome.0.0i131i355i433i512j46i131i199i433i465i512j0i131i433i512j69i57j69i60l3j69i65.1245j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="../Home/Image_Home2/g_left.PNG"/></a>
                        <a href="https://www.google.com/search?gs_ssp=eJzj4tLP1TfIyDMsS05XYDRgdGDwYi8pzywpSS0CAFnOB00&q=twitter&oq=tw&aqs=chrome.1.69i57j46i131i199i433i465i512j0i433i512j46i131i433i512j0i131i433i512j46i433i512j0i131i433i512j69i60.3261j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="../Home/Image_Home2/tw_left.PNG"/></a>
                        <a href="https://www.google.com/search?q=pinterest&oq=p&aqs=chrome.3.69i59l2j69i57j0i131i433i512j69i60l4.10676j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="../Home/Image_Home2/p_left.PNG"/></a>
                    </div>
                    <div class="right">
                        <h3>Thanh Toán</h3>
                        <a href="https://www.google.com/search?q=visa&oq=visa&aqs=chrome..69i57j0i433i512l2j0i512l2j0i131i433i512j0i512l2j0i10i512j0i512.2103j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="../Home/Image_Home2/thanhToan1.PNG" height="43" width="62"/></a>
                        <img class="mang" src="../Home/Image_Home2/thanhToan2.PNG" height="44" width="65"/>
                        <a href="https://www.google.com/search?q=paypal&oq=paypal&aqs=chrome..69i57j46i199i433i465i512j0i433i512j0i512l6.3397j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="../Home/Image_Home2/thanhToan3.PNG" height="40" width="64"/></a>
                        <a href="https://www.google.com/search?q=jcb&oq=jcb&aqs=chrome..69i57j46i199i433i465i512j0i512l6j0i10i512j0i512.1389j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="../Home/Image_Home2/thanhToan4.PNG" height="38" width="62"/></a>
                        <img class="mang" src="../Home/Image_Home2/thanhToan5.PNG" height="40" width="57"/>
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