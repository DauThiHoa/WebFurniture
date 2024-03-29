<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <link rel="icon" href="img.png" type="image/png" class="icon" >
    <title> NHOM 7 WEB FURNITURE - MẸO VẶT - BẢO QUẢN ĐỒ GHỖ KHI ĐỘ ẨM KHÔNG KHÍ CAO </title>
    <link rel="stylesheet" href="humidity.css">

</head>
<body>
<div id="Thanh_cong_cu" >
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
            <div >
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
            <div  >
                <i class="fa fa-user-circle" aria-hidden="true"></i>
            </div>
        </a>
        <div id="dangNhap_dangKy" >
            <p class="danhNhap">  <a href="login">Đăng nhập </a> <p class="cheo">/</p>
            <a href="register"><p class="dangKi">Đăng ký</p> </a>  </p>
        </div>

    </div>

    <div class="taiKhoanCuaToi">
        <a href="Dashboard">
            <br  >Tài khoản của tôi  <i class="fa fa-chevron-down" aria-hidden="true"></i> </br>
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
            <h3 class="ten"> HỆ THỐNG CỬA HÀNG  </h3>
        </div>
    </a>
    <a href="TinTuc">
        <div id="tinTuc">
            <h3 class="ten"> TIN TỨC  </h3>
        </div>
    </a>
    <a href="LienHe">
        <div id="lienHe">
            <h3 class="ten"> LIÊN HỆ  </h3>
        </div>
    </a>
</div>
<div id="khungTinTuc">
    <div id="tenTinTuc">
        <h2 id="trangChu_TinTuc" > Trang Chủ / Mẹo vặt / Bảo quản đồ gỗ khi độ ẩm không khí cao </h2>
    </div>
</div>



<div id="tinTuc_2">
    <div id="left">
        <h3> Bảo quản đồ gỗ khi độ ẩm không khí cao</h3>
        <div class="thoiGian">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
            <p class="noiDungThoiGian">14:45 - 18/10/2021</p>
        </div>
        <h2>BẢO QUẢN ĐỒ GHỖ KHI ĐỘ ẨM KHÔNG KHÍ CAO</h2>
        <p>Đồ nội thất bằng gỗ chất lượng cao là một sự đầu tư tuyệt vời để trang trí ngôi nhà của bạn bởi vì độ bền
            của chúng. Đồ gỗ có thời hạn sử dụng rất lâu, có thể đươc dùng truyền từ đời này sang đời khác.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/DoAm0.PNG" height="314" width="558"/>
        <p>Tất nhiên để kéo dài tuổi thọ của sản phẩm, quan trọng là bạn phải thực hiện các bước cơ bản để bảo vệ đồ gỗ
            ở nhà. Đặc biệt là trong những thời điểm độ ẩm trong môi trường tăng cao từ tháng 4 đến tháng 8 hằng
            năm. Nếu không có phương pháp bảo quản, khi thời tiết quá ẩm sẽ khiến đồ nội thất làm bằng gỗ xuất hiện
            các giọt nước li ti trên bề mặt.
            Lúc này, lớp bề mặt phía ngoài sẽ có chỗ bị mất màu, thậm chí nghiệm trọng sẽ sinh mốc và biến dạng.
            Trước khi đồ gỗ có hiện tượng tụ nước thành các hạt li ti hoặc nấm mốc, có thể xử lý bằng cách,
            bên trong đồ gỗ đặt các chất chống ẩm. Trong cuộc sống thường ngày, rất nhiều vật xung quanh ta
            đều có tác dụng như một chất chống ẩm thiên nhiên. Tìm ngay trong nhà bạn các thứ có khả năng
            chống ẩm tuyệt vời cho tủ gỗ đó là:</p>
        <img class="anh" src="TinTuc/Image_TinTuc/DoAm1.PNG" height="370" width="594"/>
        <p>Lá trà: Đặt lá trà vào trong một túi vải xô hoặc dùng báo gói lại, đặt tản ra các góc của tủ đựng tài liệu,
            như vậy không chỉ có thể hút ẩm, khử mùi mà còn không có tác dụng phụ.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/DoAm2.PNG" height="407" width="547"/>
        <p>Vôi: Có thể đặt đá vôi trong một chiếc hộp không đậy nắp, đặt ở góc tủ, lúc thời tiết ẩm ướt, tác dụng hút
            ẩm của vôi sẽ phát huy vô cùng hiệu quả.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/DoAm2.1.PNG" height="446" width="837"/>
        <p>Bã cà phê: Bã cà phê có tác dụng kép vừa hút ẩm vừa khử mùi ẩm mốc. Cà phê sau khi dùng xong, lấy bã phơi
            khô đặt trong túi vải xô hoặc tất cũ, buộc chặt là đã trở thành một túi chống ẩm hiệu quả mà cực
            đơn giản rồi.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/DoAm3.PNG" height="331" width="611"/>
        <p>Than hoạt tính: Than hoạt tính có tác dụng hút ẩm khử mùi rất tốt, nhưng nên chú ý đặt trong hộp hoặc
            gói trong báo để tránh làm bẩn giấy tờ.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/DoAm4.PNG" height="254" width="468"/>
        <p>Báo: Có thể phủ một lớp báo dưới đáy tủ, thậm chí dán báo ở mặt trong của tủ cũng được, bởi vì báo không chỉ
            có thể hút ẩm, chống mốc mà còn mùi của mực còn có thể xua đuổi côn trùng.</p>
        
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
<%--            <a href="http://localhost:63342/Nhom7_WebFurniture/TinTuc/May.html?_ijt=o0edna7v2vd68f9m0g4ocguhcc">--%>
<%--                <div class="danhMuc">--%>
<%--                    <p class="noiDungSanPham"> Xu hướng nội thất mây</p>--%>
<%--                </div>--%>
<%--            </a>--%>
            <a href="tips">
                <div class="danhMuc">
                    <p class="noiDungSanPham"> Thư thái trong chính căn hộ của bạn</p>
                </div>
            </a>
            <a href="furnitureCleaning">
                <div class="danhMuc">
                    <p class="noiDungSanPham">Mẹo bảo quản và vệ sinh các đồ nội thất</p>
                </div>
            </a>
            <a href="humidity">
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
            <img   src="Image/sangTrai.PNG"  />
            <img   src="Image/sangPhai.PNG"  />
        </div>

    </div>
    <div class="meoVatHay">

        <div class="meoVat">
            <a href="furnitureCleaning">
                <img class="anh" src="Image_Home2/baoQuanVaVeSinh_Layout7.PNG" />
                <div class="lich">
                    <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    <p class="ngay"> 16/10/2021 Đăng bởi : Sea Team</p>
                </div>
                <h2 class="ten">  Mẹo vặt bảo quản và vệ sinh các đồ nội thất </h2>
            </a>
            <p class="noiDung"> Đối với nội thất bằng kim loại - khi xủ lý các vết bẩn thông thường bạn chỉ cần ..</p>
        </div>
        <div class="meoVat">
            <a href="tips">
                <img class="anh" src="Image_Home2/meoVat_2.PNG" height="447" width="785"/>
                <div class="lich">
                    <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    <p class="ngay" > 17/10/2021 Đăng bởi : Sea </p>
                </div>
                <h2 class="ten"> Xua tan nắng nóng với nội thất màu xanh ngọc </h2>
            </a>
            <p class="noiDung"> Điểm xuyến nội thất màu xanh ngọc sẽ giúp các thành viên cảm thấy thoải mái ...</p>
        </div>
        <div class="meoVat">
            <a href="humidity">
                <img class="anh" src="Image_Home2/baoQuanDoGo_layout7.PNG"  />
                <div class="lich">
                    <i class="fa fa-calendar-check-o" aria-hidden="true"></i>
                    <p class="ngay"> 18/10/2021 Đăng bởi : Team </p>
                </div>
                <h2 class="ten"> Bảo quản đồ gỗ khi độ ẩm không khí cao </h2>
            </a>
            <p class="noiDung"> Đồ nội thất bằng gỗ chất lượng cao là một sự đầu tư tuyệt vời để trang trí ngôi nhà ...</p>
        </div>
    </div>

</div>

<div id="layout7">
    <div class="thanhDuoi">
        <div class="tenWeb">
            <h1 class="ten">WEB FURNITURE</h1>
            <p class="kinhNghiem">Với kinh nghiệm hơn 10 năm trong ngành nội thất, nội thất WEB FURNITURE tự hào là cung cấp những mẫu sản phẩm nội thất tốt nhất . </p>
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
                <h3 class="ten">-----  Địa chỉ :</h3>
                <p class="noiDung"> Khu Phố 6 , quận Thủ Đức , TP HCM</p>

                <i class="fa fa-phone-square" aria-hidden="true"></i>
                <h3 class="ten">-----  Điện thoại :</h3>
                <p class="noiDung"> 1900.363.079 </p>

                <i class="fa fa-envelope" aria-hidden="true"></i>
                <h3 class="ten">-----  Email :</h3>
                <p class="noiDung"> webfurniture7@gmail.com </p>

                <i class="fa fa-clock-o" aria-hidden="true"></i>
                <h3 class="ten">-----  Giờ mở cửa :</h3>
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
                            <img class="mang" src="Image_Home2/fb_left.PNG"  /></a>
                        <a href="https://www.google.com/search?q=google&oq=goo&aqs=chrome.0.0i131i355i433i512j46i131i199i433i465i512j0i131i433i512j69i57j69i60l3j69i65.1245j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/g_left.PNG"  /></a>
                        <a href="https://www.google.com/search?gs_ssp=eJzj4tLP1TfIyDMsS05XYDRgdGDwYi8pzywpSS0CAFnOB00&q=twitter&oq=tw&aqs=chrome.1.69i57j46i131i199i433i465i512j0i433i512j46i131i433i512j0i131i433i512j46i433i512j0i131i433i512j69i60.3261j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/tw_left.PNG"  /></a>
                        <a href="https://www.google.com/search?q=pinterest&oq=p&aqs=chrome.3.69i59l2j69i57j0i131i433i512j69i60l4.10676j0j9&sourceid=chrome&ie=UTF-8">
                            <img class="mang" src="Image_Home2/p_left.PNG"  /></a>
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