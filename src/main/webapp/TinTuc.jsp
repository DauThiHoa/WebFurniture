
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
    <link rel="icon" href="HeThongCuaHang.png" type="image/png" class="icon">
    <title> NHOM 7 WEB FURNITURE - TIN TỨC </title>
    <link rel="stylesheet" href="TinTuc.css">

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
            <a href="../Products/PhongKhach.html">
                <div class="danhMuc1">
                    <h4 class="noiDungSanPham1"> NỘI THẤT PHÒNG KHÁCH</h4>
                </div>
            </a>
            <a href="../Products/PhongNgu.html">
                <div class="danhMuc2">
                    <h4 class="noiDungSanPham2"> NỘI THẤT PHÒNG NGỦ</h4>
                </div>
            </a>
            <a href="../Products/PhongBep.html">
                <div class="danhMuc3">
                    <h4 class="noiDungSanPham3"> NỘI THẤT PHÒNG BẾP</h4>
                </div>
            </a>
            <a href="../Products/VanPhong.html">
                <div class="danhMuc4">
                    <h4 class="noiDungSanPham4"> NỘI THẤT VĂN PHÒNG</h4>
                </div>
            </a>
            <a  href="../NoiThatDoTrangTri/NoiThatDoTrangTri.html">
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
    <img id="anh_khungTinTuc" src="TinTuc/Image_TinTuc/anhKhungTinTuc.PNG"/>
    <div id="tenTinTuc">
        <h1 id="ten"> TIN TỨC </h1>
        <h2 id="trangChu_TinTuc"> Trang Chủ / Tin Tức</h2>
    </div>
</div>

<div id="tinTuc_2">
    <div id="left">

        <div class="anh_TinTuc">
            <a href="">
                <img class="anh" src="TinTuc/Image_TinTuc/anhTinTuc1.PNG"/>
                <h3 class="ten"> Ngôi Nhà Mang Hình Dáng Lạ Kỳ Xuất Hiện Ấn Tượng</h3>
                <div class="thoiGian">
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <p class="noiDungThoiGian">15:00 - 18/10/2021</p>
                </div>
                <p class="noiDungTinTuc">Tọa lạc tại quận Otsuka, Tokyo (Nhật Bản), Tree-ness house là một ngôi nhà đa
                    tầng với thiết kế vô cùng độc đáo vừa...</p>
            </a>
        </div>

        <div class="anh_TinTuc">
            <a href="">
                <img class="anh" src="TinTuc/Image_TinTuc/anhTinTuc2.PNG"/>
                <h3 class="ten"> Học Cách Thiết Kế Không Gian Siêu Tiện Nghi Cho Gia Đình </h3>
                <div class="thoiGian">
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <p class="noiDungThoiGian">7:00 - 19/10/2021</p>
                </div>
                <p class="noiDungTinTuc">Lối thiết kế hoàn toàn mở, thông thoáng, hạn chế tối đa tất cả những bức tường
                    thô cứng trong nhà khiến cho căn hộ...</p>
            </a>
        </div>

        <div class="anh_TinTuc">
            <a href="">
                <img class="anh" src="TinTuc/Image_TinTuc/anhTinTuc3.PNG"/>
                <h3 class="ten"> Những Ý Tưởng Thiết Kế Nội Thất Nhà Ống Đẹp </h3>
                <div class="thoiGian">
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <p class="noiDungThoiGian">13:45 - 19/10/2021</p>
                </div>
                <p class="noiDungTinTuc">Thiết kế nội thất nhà ống đẹp là nhu cầu phổ biến của mọi người trong cuộc sống
                    hiện đại ngày nay. Vì vậy, bạn muốn...</p>
            </a>
        </div>

        <div class="anh_TinTuc">
            <a href="">
                <img class="anh" src="TinTuc/Image_TinTuc/anhTinTuc4.PNG"/>
                <h3 class="ten"> Bố Trí Nội Thất Phòng Khách Căn Hộ Đúng Phong Thủy </h3>
                <div class="thoiGian">
                    <i class="fa fa-clock-o" aria-hidden="true"></i>
                    <p class="noiDungThoiGian">13:45 - 20/10/2021</p>
                </div>
                <p class="noiDungTinTuc">Thuyết phong thủy có những tác động trực tiếp đến sức khỏe, tinh thần của các
                    thành viên trong nhà. Vì thế, để...</p>
            </a>
        </div>
    </div>

    <div id="right">
        <h2 class="baiVietMoi"> Bài Viết Mới</h2>
        <a href="">
            <div class="baiViet">
                <img class="anhBaiVietMoi" src="TinTuc/Image_TinTuc/baiVietMoi1.PNG"/>
                <p class="noiDungBaiVietMoi">Dáng hình nghệ thuật trong những tấm Laminate nội thất gỗ công nghiệp</p>
            </div>
        </a>
        <a href="">
            <div class="baiViet">
                <img class="anhBaiVietMoi" src="TinTuc/Image_TinTuc/baiVietMoi2.PNG"/>
                <p class="noiDungBaiVietMoi">Kệ để đồ nhà bếp – Giải pháp thông minh để lưu trữ đồ đạc khoa học</p>
            </div>
        </a>
        <a href="">
            <div class="baiViet">
                <img class="anhBaiVietMoi" src="TinTuc/Image_TinTuc/baiVietMoi3.PNG"/>
                <p class="noiDungBaiVietMoi">4 ý tưởng thiết kế giường tầng đẹp cho gia đình sáng tạo</p>
            </div>
        </a>
        <a href="">
            <div class="baiViet">
                <img class="anhBaiVietMoi" src="TinTuc/Image_TinTuc/baiVietMoi4.PNG"/>
                <p class="noiDungBaiVietMoi">5 cách trang trí nhà cho mùa đông ấm áp</p>
            </div>
        </a>
        <a href="">
            <div class="baiViet">
                <img class="anhBaiVietMoi" src="TinTuc/Image_TinTuc/baiVietMoi5.PNG"/>
                <p class="noiDungBaiVietMoi">Những mẫu bàn ăn Hàn Quốc đẹp “đốn tim” người nhìn</p>
            </div>
        </a>
        <a href="">
            <div class="baiViet">
                <img class="anhBaiVietMoi" src="TinTuc/Image_TinTuc/baiVietMoi6.PNG"/>
                <p class="noiDungBaiVietMoi">5 loại cây trồng trong nhà mang may mắn, tài lộc cho gia chủ</p>
            </div>
        </a>
    </div>
</div>

<%--        <jsp:useBean id="sumNewComment" scope="request" class="java.lang.Integer"/>--%>
<div id="khungBinhLuan" style="height: ${sumNewComment + 6}00px  ">
    <form action="NewCommentController" method="post">
    <h3 class="tieuDeBinhLuan"> Viết bình luận của bạn : </h3>
    <div class="hoTen_Email">
        <div class="hoten">
            <jsp:useBean id="nameCustomer" scope="request" class="java.lang.String"/>
            <input class="ten" onchange="inputInformation()" placeholder="Họ tên :" name="nameCustomer" value="${nameCustomer}"> </input>
        </div>
        <div class="Email">
            <jsp:useBean id="emailCustomer" scope="request" class="java.lang.String"/>
            <input class="email" onchange="inputInformation()" placeholder="Email :" name="emailCustomer" value="${emailCustomer}"> </input>
        </div>
    </div>

    <div class="noiDungBinhLuan">
        <jsp:useBean id="content" scope="request" class="java.lang.String"/>
        <input class="thongTinNoiDung" onchange="inputInformation()" placeholder="Nội dung : " name="content" value="${content}"> </input>
    </div>
    <button class="guiBinhLuan" type="submit" onclick="clickNewComment()">
        <h4 class="gui"> Gửi bình luận </h4>
    </button>
   </form>

    <h3 class="soBinhLuan"> Bình luận ( ${sumNewComment} bình luận )</h3>
    <jsp:useBean id="NewCommentList" scope="request" type="java.util.List"/>
    <c:forEach items="${NewCommentList}" var="n" >
    <div class="binhLuan">
        <div class="noiDungBinhLuan">
            <div class="anh">
                <img class="anhBinhLuan" src="TinTuc/Image_TinTuc/anhDaiDien2.PNG"/>
            </div>
            <div class="thongTinBinhLuan">
<%--                    <h3> ${NewCommentList} </h3>--%>
                <h4 class="tenNguoiBinhLuan">${n.nameCustomer}</h4>
                <p class="ngayDang">${n.emailCustomer}</p>
                <p class="noiDung">${n.content}</p>
            </div>
        </div>
    </div>
    </c:forEach>
</div>


<div id="tinTuc_3">
    <hr class="thanhKe"></hr>
    <div id="chu_TinTuc">
        <h2 class="chu"> Tin Tức</h2>
        <p class="nd"> Cập nhật tin tức liên quan </p>
    </div>
    <hr class="thanhKe1"></hr>
    <div id="khung">
        <div class="tinTucMoiNhat">
            <a href="">
                <img class="anhTinTucMoiNhat" src="TinTuc/Image_TinTuc/anhTinTuc5.PNG"/>
                <h3 class="noiDungTinTuc">Mua sofa giường mang cả thiên đường đến những căn hộ nhỏ</h3>
                <p class="nd">Sử dụng nội thất thông minh và tận dụng không gian để lưu trữ đồ đạc Với một không
                    gian..</p>
                <p class="xemThem">Xem Thêm</p>
            </a>
        </div>
        <div class="tinTucMoiNhat">
            <a href=" ">
                <img class="anhTinTucMoiNhat" src="TinTuc/Image_TinTuc/anhTinTuc6.PNG"/>
                <h3 class="noiDungTinTuc">Những điều cần biết để lựa chọn bộ bàn ăn phù hợp với ngôi nhà bạn</h3>
                <p class="nd">Sự tương phản về màu sắc giữa hai không gian phòng...</p>
                <p class="xemThem">Xem Thêm</p>
            </a>
        </div>
        <div class="tinTucMoiNhat">
            <a href=" ">
                <img class="anhTinTucMoiNhat" src="TinTuc/Image_TinTuc/anhTinTuc7.PNG"/>
                <h3 class="noiDungTinTuc">Thiết kế nội thất chung cư đẹp cho đôi vợ chồng trẻ</h3>
                <p class="nd">Sử dụng các bức tường bằng kính, cửa kính trong suốt...</p>
                <p class="xemThem">Xem Thêm</p>
            </a>
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
                    <a href=" ../Products/AllProducts.html">
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
                            <input onchange="checkValidate()" type="email" name="email" class="email lienheMail" placeholder="Nhập email của bạn ..."> </input>
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
<script>

    function clickValidate() {
        let isValid = checkValidate();
        if (isValid) {
            alert('Gửi đăng ký thành công');
        }else {
            alert('Qúy khách đăng kí nhận tin không thành công');
        }
    }

    const ten = document.querySelector('.ten');
    const email = document.querySelector('.email');
    const thongTinNoiDung = document.querySelector('.thongTinNoiDung');

    function inputInformation () {
        let check ;
        if ( ten.value == ""  ){
            check = false ;
        }else  if (  email.value == ""  ){
            check = false ;
        }
        else if (  thongTinNoiDung.value == ""  ){
            check = false ;
        }
        else {
            check = true ;
        }
        return check ;
    }
    function clickNewComment() {
        if ( inputInformation () ){
            alert("Qúy khách đã bình luận thành công !");
        }else {
            alert("Qúy khách vui lòng điền đầy đủ thông tin !" );
        }
    }
    var lienheMail = document.querySelector('.lienheMail');
    function checkValidate() {
        let lienheMailValue = lienheMail.value;
        let isCheck = true;
        if (lienheMailValue == '') {
            alert('Email không được để trống');
            isCheck = false;
        }else {
            isCheck = true;
        }
        return isCheck;
    }
</script>
</body>
</html>