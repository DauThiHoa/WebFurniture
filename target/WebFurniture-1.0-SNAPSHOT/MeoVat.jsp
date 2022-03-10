<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

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
    <title> NHOM 7 WEB FURNITURE - MẸO VẶT - XUA TAN NẮNG NÓNG </title>
    <link rel="stylesheet" href="MeoVat.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   

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
                href="controllerRegister"><p
                class="dangKi">Đăng ký</p></a> </p>
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
        <h3 id="chu_DanhMuc"> DANH MỤC SẢN PHẨM </h3>

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
            <a  href="ProductDetailsListDecoration">
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
        <h2 id="trangChu_TinTuc"> Trang Chủ / Mẹo vặt / Xua tan nắng nóng với nội thất màu xanh ngọc </h2>
    </div>
</div>

<div id="tinTuc_2">
    <div id="left">
        <h3>Xua tan nắng nóng với nội thất màu xanh ngọc</h3>
        <div class="thoiGian">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
            <p class="noiDungThoiGian">13:45 - 20/10/2021</p>
        </div>
        <h2>Điểm xuyết nội thất màu xanh ngọc sẽ giúp các thành viên cảm thấy thoải mái mỗi khi trở về, bỏ quên cái nắng
            như đổ lửa sau cánh cửa.</h2>
        <p>Ghế sofa khung gỗ khiến bạn cảm giác như đang gần chạm tay vào màu nước biển của khu vực nhiệt đới.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/xanhNgoc1.PNG"/>
        <p>Về mặt phong thủy nội thất màu xanh ngọc giúp bạn lấy lại sự điềm tĩnh, cân bằng và sự hạnh phúc.</p>
        <p>Tivi treo tường, bàn tam giác lồng vào nhau giúp tiết kiệm diện tích.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/xanhNgoc3.PNG"/>
        <p>Ghế ăn điểm nhẹ màu xanh ngọc xen lẫn với màu trắng.</p>
        <p>Gạch lát sàn có hoa văn đánh dấu khu vực lối vào.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/xanhNgoc5.PNG"/>
        <p>Bếp mang phong cách scandinavian càng hoàn hảo hơn khi có sự góp mặt của tủ tường màu xanh ngọc lam.</p>
        <p>Sàn và tường màu trắng khiến nội thất màu xanh ngọc càng trở nên trong trẻo, đẹp mắt.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/xanhNgoc7.PNG"/>
        <p>Đệm sofa màu xanh làm điểm nhấn trong phòng ngủ.</p>
        <p>Phòng làm việc nhẹ nhàng, yên tĩnh với bàn gỗ đặt gần cửa sổ, ghế sofa màu xám đen đặt dưới bức tường màu
            xanh.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/xanhNgoc9.PNG"/>
        <p>Giá sách độc đáo với với hình thân cây</p>
        <p>Bàn đặt gần cửa sổ nên căn phòng rất ít khi phải dùng đèn, xe đạp treo tường trở thành tác phẩm trang
            trí.</p>
    </div>


    <div id="right">
        <div id="topDanhMuc">
            <div class="khung">
                <h3 class="SanPham"> Danh Mục Sản Phẩm</h3>
            </div>
            <a href="ProductDetailsListLivingRoom">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Nội Thất Phòng Khách</p>
                </div>
            </a>
            <a href="ProductDetailsListBedroom">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Nội Thất Phòng Ngủ</p>
                </div>
            </a>
            <a href="ProductDetailsListKitchen">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Nội Thất Phòng Bếp</p>
                </div>
            </a>
            <a href="ProductDetailsListOffice">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Nội Thất Văn Phòng</p>
                </div>
            </a>
            <a href="ProductDetailsListDecoration">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Đồ Trang Trí</p>
                </div>
            </a>

        </div>


        <div id="bottom">
            <div class="khung">
                <h3 class="SanPham"> Mẹo vặt hay</h3>
            </div>
<%--            <a href="">--%>
<%--                <div class="danhMuc">--%>
<%--                    <p class="noiDungSanPham"> Xu hướng nội thất mây</p>--%>
<%--                </div>--%>
<%--            </a>--%>
            <a href="MeoVat.jsp">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Thư thái trong chính căn hộ của bạn</p>
                </div>
            </a>
            <a href="VeSinhNoiThat.jsp">
                <div class="danhMuc">
                    <p class="noiDungSanPham">Mẹo bảo quản và vệ sinh các đồ nội thất</p>
                </div>
            </a>
            <a href="DoAm.jsp">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Bảo quản đồ gỗ khi độ ẩm không khí cao</p>
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
            <a href="VeSinhNoiThat.jsp">
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
            <a href="MeoVat.jsp">
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
            <a href="DoAm.jsp">
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
                    <a href="AllProduct.html">
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