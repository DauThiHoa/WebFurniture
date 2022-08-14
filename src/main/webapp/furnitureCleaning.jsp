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
    <link rel="icon" href="img.png" type="image/png" class="icon" >
    <title> NHOM 7 WEB FURNITURE - MẸO VẶT - MẸO BẢO QUẢN VÀ VỆ SINH NỘI THẤT CÁC ĐỒ NỘI THẤT </title>
    <link rel="stylesheet" href="furnitureCleaning.css">

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
                       style="border-radius: 100% ; width: 1% ; text-align: center ; margin-top: 1% ; margin-left: -1%"
                       value="${sizeListCart}">

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
        <h2 id="trangChu_TinTuc" > Trang Chủ / Mẹo vặt / Mẹo bảo quản & vệ sinh các đồ nội thất </h2>
    </div>
</div>



<div id="tinTuc_2">
    <div id="left">
        <h3> Mẹo bảo quản & vệ sinh các đồ nội thất</h3>
        <div class="thoiGian">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
            <p class="noiDungThoiGian">14:45 - 16/10/2021</p>
        </div>
        <h2>MẸO VỆ SINH VÀ BẢO QUẢN ĐỒ DÙNG NỘI THẤT BẰNG GỖ CÔNG NGHIỆP</h2>
        <p>Nội thất gỗ công nghiệp hiện đang dần trở thành xu hướng được nhiều khách hàng lựa chọn nhờ những ưu điểm
            như giá rẻ, tính thẩm mỹ, và tiện dụng. Tuy nhiên do được làm từ gỗ ép nên khâu vệ sinh của loại tủ gỗ này
            thường khó chiều hơn. Nếu không biết cách có thể khiến cho tủ nhanh hỏng.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/BaoQuan1.PNG" height="437" width="697"/>
        <p>Vậy làm thế nào để có thể giúp nội thất gỗ công nghiệp có thể giữ được vẻ đẹp và độ bền cao, ở bài viết này
            Nội Thất Gỗ Xinh sẽ giới thiệu một số mẹo hữu ích để vệ sinh và bảo quản nội thất gỗ công nghiệp được bền
            đẹp nhé!</p>
        <h3>LƯU Ý CƠ BẢN VỀ CÁC LOẠI GỖ CÔNG NGHIỆP HIỆN NAY</h3>
        <p>Trong gỗ công nghiệp có một số loại bề mặt gỗ công nghiệp được nhiều người tiêu dùng tin dùng như
            là Melamin, Sơn, Laminate, Acrylic, Veneer. Tuy nhiên tùy thuộc mỗi loại bề mặt sẽ có những cách
            vệ sinh khác nhau. Trước khi lau chùi vệ sinh bạn nên biết về mặt gỗ công nghiệp làm nội thất nhà
            mình.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/BaoQuan2.PNG" height="351" width="599"/>
        <p>Về đặc tính vật lý thì bề mặt Melamin và Laminate giống nhau, chỉ khác Laminate lớp bề mặt có độ dày hơn so
            với Melamin. Hai bề mặt gỗ này đều có thể dễ dàng lau chùi bằng các sản phẩm tẩy rửa thông thường
            (xà phòng, bột giặt, nước rửa bát,..). Các bạn pha loãng chất tẩy rửa với nước, sau đó nhúng miếng
            vải mềm vào nước, vắt và lau sạch. Sau đó dùng miếng vải ướt lau lại, cuối cùng lau khô bề mặt bằng
            vải khô.
            Lưu ý: Các chất tẩy rửa như giấm hoặc chất tẩy chứa nitro không phù hợp để làm sạch các bề mặt này.
            Đối với bề mặt Acrylic bóng gương nhẵn bóng, phẳng mịn, dễ dàng làm sạch, lau nhẹ nhàng bằng khăn mềm ẩm.
            Không nên sử dụng chất tẩy rửa dành cho kính vì nó có chứa dung môi và nên chọn khăn mềm để tránh trầy
            xước bề mặt trong quá trình lau chùi.
            Với bề mặt Veneer gỗ tự nhiên, chỉ cần lau chùi bằng khăn mềm, ẩm. Không dùng chất tẩy rửa gây mài mòn
            bề mặt.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/BaoQuan3.PNG" height="493" width="795"/>
        <p>Đối với sản phẩm nội thất bề mặt sơn lau chùi bằng khăn mềm, ẩm. Tuyệt đối không dùng khăn quá ướt
            , nước sẽ làm phai nước sơn bóng và ngấm vào bên trong, giảm tuổi thọ gỗ. Ngoài ra bề mặt sơn dễ
            bị xước, do đó trong quá trình vệ sinh, tránh kim loại sắc. Khi có hơi nước ví dụ khu vực tủ bếp
            hay những ngày nồm ẩm, hoặc chất lỏng đổ ra bề mặt, cần lau khô ngay tránh lớp nước sơn bị rộp lên.</p>
        <h3>Xóa vết xước trên đồ gỗ công nghiệp</h3>
        <p>Trong quá trình sử dụng không thể tránh khỏi việc bề mặt nội thất gỗ công nghiệp xuất hiện những vết xước
            xấu xí, tuy nhiên bạn không cần phải quá lo lắng. Với những vết xước nho nhỏ, bạn hoàn toàn có
            thể khắc phục bằng các sản phẩm có sẵn trong nhà.</p>
        <img class="anh" src="TinTuc/Image_TinTuc/BaoQuan4.PNG" height="365" width="598"/>
        <p>Cách 1: Bạn hãy trộn nửa chén giấm với nửa chén dầu olive rồi xoa lên những vết xước, chúng sẽ bị che mờ và được làm bóng trở lại.
            Cách 2: Sử dụng bút màu để tô lên vết xước. Màu tô lên vết xước phải trùng với màu của đồ gỗ. Sau khi đã tô xong nên bôi một lớp dầu bóng hoặc là sơn móng tay bóng lên trên.
            Cách 3: Bạn cũng có thể lấy quả óc chó để chà xát vào những vết xước và bạn sẽ ngạc nhiên khi thấy chúng mờ dần đi.
            Cách 4: Tận dụng bã cà phê còn ẩm bằng cách dùng bông nhúng vào bã rồi chà lên vết xước trước khi lau lại bằng giẻ sạch và khô. Cách này phù hợp với những món đồ nội thất gỗ sẫm màu.</p>
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