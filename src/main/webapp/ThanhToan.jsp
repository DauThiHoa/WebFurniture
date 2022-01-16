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
<%--    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
    <meta charset="UTF-8">
    <title>THANH TOÁN</title>
    <link rel="stylesheet" href="ThanhToan.css">
    <link rel="icon" href="img.png" type="image/png" class="icon">
</head>
<body>
<h1 class="tieuDe" style="text-align: center;">WEB FURNITURE</h1>
<p class="duongDan from" style="text-align: left; margin-left: 160px; font-family: Tahoma">
    <a href="./cart" style="text-decoration: none ; color: black">
        Giỏ hàng </a> > Thanh toán</p>
<div class="Fields">
    <div>
        <div class="formContainer">
            <form action="PaymentSuccess" method="POST">
                <div class="Fields">
                    <div>
                        <h3>Thông Tin Khách hàng</h3>
                        <label class="from" for="fname" >Họ Và Tên</label>
                        <input type="text" id="fname" name="firstname" value="" placeholder="Bùi Hoàng Tuấn Anh"/>
                        <label class="from" for="email"> Email</label>
                        <input type="text" id="email" name="email" value="" placeholder="19130006@st.hcmuaf.edu.vn"/>
                        <label class="from" for="adr"> Số Điện Thoại </label>
                        <input type="text" id="address" name="phone" value="" placeholder="0123456789"/>
                        <label class="from" for="adr"> Địa Chỉ </label>
                        <input type="text" id="adr" name="address" value=""
                               placeholder="Xã Phúc Tân - huyện Lâm Hà - tỉnh Lâm Đồng"/>
                    </div>
                    <div>
                        <h3>Thanh Toán</h3>
                        <label class="from" for="cname">Ngân hàng </label>
                        <input type="text" id="cardname" name="cardname" value="" placeholder="BIDV, ACB, Vietcombank,...  "/>
                        <label class="from" for="ccnum">Số Thẻ</label>
                        <input type="text" id="cardnumber" name="cardnumber" value="" placeholder="4129 7501 2345 6789"/>
                        <label class="from" for="ccnum">Ngày sinh</label>
                        <input style="width: 100% ; height: 45px; border: 2px solid black; border-radius: 5px" type="date" id="brithDay" name="brithDay" value="" placeholder="12/2/1989"/>
                    </div>
                    <div>
                        <h3 style="margin-left: 20px">Phương Thức Nhận Hàng</h3>
                        <label class="from" for="cname">Giao Hàng</label>
                        <input type="checkbox" id="cname" name="delivery" value="Giao Hàng"
                               style="margin-left: 20px ; width: 10% ; height: 10%"/>
                        <label class="from" for="ccnum" style="margin-top: 55px">Nhận Tại Cửa Hàng</label>
                        <input style="margin-left: 20px ; width: 10% ; height: 10%" type="checkbox" id="ccnum" value="Nhận Tại Cửa Hàng"
                               name="store"/>
                    </div>
                    <div>
                        <h3 style="margin-left: 20px">Giới tính</h3>
                        <label class="from" for="cname">Nữ</label>
                        <input type="checkbox" id="nu" name="nu" value="Nữ"
                               style="margin-left: 20px ; width: 25% ; height: 25% ; margin-top: -35px; margin-bottom: -60px"/>
                        <label class="from" for="ccnum" style="margin-top: 15px">Nam</label>
                        <input style="margin-left: 20px ; width: 25% ; height: 25%; margin-top: -35px; margin-bottom: -60px" type="checkbox" id="nam" value="Nam"
                               name="Nam"/>
                    </div>
                </div>
                <a href="../WebFurniture_war_exploded/PaymentSuccess">
                    <input type="submit" value="Continue to checkout" class="checkout" />
                </a>
<%--            --%>
        </div>
    </div>
    <div>
        <div class="formContainer">
            <div class="shopping-cart">
                <ul class="shopping-cart-items">

                    <jsp:useBean id="OrderDetailsAll" scope="request" type="java.util.List"/>
                    <c:forEach items="${OrderDetailsAll}" var="order" >
                          <jsp:useBean id="getProductDetailsAll" scope="request" type="java.util.List"/>
                          <c:forEach items="${getProductDetailsAll}" var="p">
                              <c:if test="${OrderDetailsAll.get(OrderDetailsAll.size() - 1).idOrder == order.idOrder}" >
                              <c:if test="${p.id == order.idProductDetails}" >
                        <li class="clearfix">
                            <img src="${p.linkImage}" height="70"
                                 width="70" alt="item1"/>
                            <span class="item-name">${p.name}</span>
                            <span class="item-price">${order.price}đ</span>
                            <span class="item-quantity">Số Lượng:${order.quantitySold}</span>
                        </li>
                                  </c:if >
                              </c:if >
                          </c:forEach>
                    </c:forEach>
                </ul>

            </div>

            <div class="noiDung_2">
                <input class="input_1" type="text" name="discountCode" onchange="displayname()" placeholder="Mã giảm giá"/>
            </div>
            </form>
            <h3>

            </h3>

            <p class="from" style="color: #555555">
                Giảm giá
                <span class="price from"  style="margin-left: 240px; color: #555555" ></span>
            </p>
            <p class="from" style="color: #555555">
                Phí Ship
                <jsp:useBean id="sumDiscount" scope="request" type="java.lang.Integer"/>
                <span class="price from" style="margin-left: 240px; color: #555555">${sumDiscount}đ</span>
            </p>
            <div>
                <p class="from" style="color: #555555">
                    Tổng Tiền
                    <jsp:useBean id="sumTotalMoney" scope="request" type="java.lang.Integer"/>
                    <span class="price from thanhtoan" style="margin-left: 220px; color: #555555">${sumTotalMoney}đ</span>
                </p>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    function displayname() {
        document.querySelector(".from .price").innerHTML =
            document.querySelector(".input_1").value +"đ";
    }
</script>
</html>