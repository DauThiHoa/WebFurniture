
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>THANH TOÁN</title>
    <link rel="stylesheet" href="ThanhToan.css">
    <link rel="icon" href="img.png" type="image/png" class="icon">
</head>
<body>
<h1 class="tieuDe" style="text-align: center;">WEB FURNITURE</h1>
<p class="duongDan from" style="text-align: left; margin-left: 160px; font-family: Tahoma">Giỏ hàng > Thanh toán</p>
<div class="Fields">
    <div>
        <div class="formContainer">
            <form>
                <div class="Fields">
                    <div>
                        <h3>Thông Tin Khách hàng</h3>
                        <label class="from" for="fname">Họ Và Tên</label>
                        <input type="text" id="fname" name="firstname" placeholder="Bùi Hoàng Tuấn Anh"/>
                        <label class="from" for="email"> Email</label>
                        <input type="text" id="email" name="email" placeholder="19130006@st.hcmuaf.edu.vn"/>
                        <label class="from" for="adr"> Số Điện Thoại </label>
                        <input type="text" id="address" name="address" placeholder="0123456789"/>
                        <label class="from" for="adr"> Địa Chỉ </label>
                        <input type="text" id="adr" name="address"
                               placeholder="Xã Phúc Tân - huyện Lâm Hà - tỉnh Lâm Đồng"/>
                    </div>
                    <div>
                        <h3>Thanh Toán</h3>
                        <label class="from" for="cname">Ngân hàng </label>
                        <input type="text" id="cardname" name="cardname" placeholder="BIDV, ACB, Vietcombank,...  "/>
                        <label class="from" for="ccnum">Số Thẻ</label>
                        <input type="text" id="cardnumber" name="cardnumber" placeholder="4129 7501 2345 6789"/>
                    </div>
                    <div>
                        <h3 style="margin-left: 20px">Phương Thức Nhận Hàng</h3>
                        <label class="from" for="cname">Giao Hàng</label>
                        <input type="checkbox" id="cname" name="cardname"
                               style="margin-left: 20px ; width: 10% ; height: 10%"/>
                        <label class="from" for="ccnum" style="margin-top: 55px">Nhận Tại Cửa Hàng</label>
                        <input style="margin-left: 20px ; width: 10% ; height: 10%" type="checkbox" id="ccnum"
                               name="cardnumber"/>
                    </div>
                </div>
            </form>
            <a href="../ThanhToan/ThanhToanThanhCong.jsp?_ijt=jg0jfsqhfaqhlu5r8iq786h97r&_ij_reload=RELOAD_ON_SAVE">
                <input type="submit" value="Continue to checkout" class="checkout"/>
            </a>
        </div>
    </div>
    <div>
        <div class="formContainer">
            <div class="shopping-cart">
                <ul class="shopping-cart-items">
                    <li class="clearfix">
                        <img src="../ImageProduct/tu-ao-cho-be.webp" height="70"
                             width="70" alt="item1"/>
                        <span class="item-name">Tủ để áo cho bé</span>
                        <span class="item-price">1.100.000đ</span>
                        <span class="item-quantity">Số Lượng: 01</span>
                    </li>
                    <li class="clearfix">
                        <img src="../NoiThatPhongNgu/Image_NTTTPhongngu/ban-trang-diem-mini-ngoi.jpg"
                             height="70" width="70" alt="item1"/>
                        <span class="item-name">Bàn trang điểm mini</span>
                        <span class="item-price">650.000đ</span>
                        <span class="item-quantity">Số Lượng: 02</span>
                    </li>
                    <li class="clearfix">
                        <img src="../NoiThatPhongNgu/Image_NTTTPhongngu/ban-trang-diem-ngoi-bet-dep-5.jpg"
                             height="70" width="70" alt="item1"/>
                        <span class="item-name">Bàn trang điểm dáng thấp</span>
                        <span class="item-price">700.000đ</span>
                        <span class="item-quantity">Số Lượng: 02</span>
                    </li>
                </ul>

            </div>


            <div class="noiDung_2">
                <input class="input_1" type="text" placeholder="Mã giảm giá"/>
            </div>
            <h3>

            </h3>

            <p class="from" style="color: #555555">
                Tạm Tính
                <span class="price from" style="margin-left: 240px; color: #555555">50.000đ</span>
            </p>
            <p class="from" style="color: #555555">
                Phí Ship
                <span class="price from" style="margin-left: 240px; color: #555555">100.000đ</span>
            </p>
            <div>
                <p class="from" style="color: #555555">
                    Tổng Tiền
                    <span class="price from" style="margin-left: 220px; color: #555555"> 3.950.000đ</span>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
</html>