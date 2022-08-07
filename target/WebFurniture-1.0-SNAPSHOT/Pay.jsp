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

<%--<jsp:useBean id="cart" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Cart"/>--%>

<!DOCTYPE html>
<html lang="en">
<head>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
    <meta charset="UTF-8">
    <title>THANH TOÁN</title>
    <link rel="stylesheet" href="Pay.css">
    <link rel="icon" href="img.png" type="image/png" class="icon">
</head>
<body>
<h1 class="tieuDe" style="text-align: center;">WEB FURNITURE</h1>
<p class="duongDan from" style="text-align: left; margin-left: 160px; font-family: Tahoma">
    <a href="cart" style="text-decoration: none ; color: black">
        Giỏ hàng </a> > Thanh toán</p>
<div class="Fields">
    <div>
        <div class="formContainer">
            <form action="PaymentSuccess" method="POST">
                <div class="Fields">
                    <div>
                        <h3>Thông Tin Khách hàng</h3>
                        <label class="from" for="fname" >Họ Và Tên</label>
                        <jsp:useBean id="name" scope="request" class="java.lang.String"/>
                        <input type="text"  required  id="fname" name="firstname" value="${name}" onchange="checkValidate()" onchange="click()" placeholder="Bùi Hoàng Tuấn Anh"/>
                        <label class="from" for="email"> Email</label>
                        <jsp:useBean id="email" scope="request" class="java.lang.String"/>
                        <input type="text"  required  id="email" name="email" value="${email}" onchange="checkValidate()" placeholder="19130006@st.hcmuaf.edu.vn"/>
                        <label class="from" for="adr"> Số Điện Thoại </label>
                        <jsp:useBean id="phone" scope="request" class="java.lang.String"/>
                        <input type="text"  required  id="address" name="phone" value="${phone}" onchange="checkValidate()" placeholder="0123456789"/>
                        <label class="from" for="adr"> Địa Chỉ </label>
                        <jsp:useBean id="address" scope="request" class="java.lang.String"/>
                        <input type="text"   id="adr" required  name="address" value="${address}"
                               placeholder="Xã Phúc Tân - huyện Lâm Hà - tỉnh Lâm Đồng"/>
                    </div>
                    <div>
                        <h3>Thanh Toán</h3>
                        <label class="from" for="cname">Ngân hàng </label>
                        <jsp:useBean id="bank" scope="request" class="java.lang.String"/>
                        <input type="text" required  id="cardname" name="cardname" value="${bank}" onchange="checkValidate()" placeholder="BIDV, ACB, Vietcombank,...  "/>
                        <label class="from" for="ccnum">Số Thẻ</label>
                        <jsp:useBean id="cardNumber" scope="request" class="java.lang.String"/>
                        <input type="text"  required id="cardnumber" name="cardnumber" value="${cardNumber}" onchange="checkValidate()"  placeholder="4129 7501 2345 6789"/>
                        <label class="from" for="ccnum">Ngày sinh</label>
                        <jsp:useBean id="brithDay" =  scope="request" class="java.lang.String"/>
                        <input style="width: 100% ; height: 45px; border: 2px solid black; border-radius: 5px" type="date"  required id="brithDay" name="brithDay" value="${brithDay}" onchange="checkValidate()" placeholder="12/2/1989"/>
                    </div>
                    <div>
                        <h3 style="margin-left: 20px">Phương Thức Nhận Hàng</h3>
                        <label class="from" for="cname">Giao Hàng</label>
                        <input type="radio" id="cname" name="deliveryMethod" value="Giao Hàng"
                               style="margin-left: 20px ; width: 10% ; height: 10%" onclick="delivery()" onchange="checkRadio()" />
                        <label class="from" for="ccnum" style="margin-top: 55px">Nhận Tại Cửa Hàng</label>
                        <input style="margin-left: 20px ; width: 10% ; height: 10%" type="radio" id="ccnum" value="Nhận Tại Cửa Hàng"
                               name="deliveryMethod" onclick="sendStore()" onchange="checkRadio()"/>
                    </div>
                    <div>
                        <h3 style="margin-left: 20px">Giới tính</h3>
                        <label class="from" for="cname">Nữ</label>
                        <input type="radio" id="nu" name="gender" value="Nữ"
                               style="margin-left: 20px ; width: 25% ; height: 25% ; margin-top: -35px; margin-bottom: -60px" onclick="gender_Women()" onchange="checkRadio()"/>
                        <label class="from" for="ccnum" style="margin-top: 15px">Nam</label>
                        <input style="margin-left: 20px ; width: 25% ; height: 25%; margin-top: -35px; margin-bottom: -60px" type="radio" id="nam" value="Nam"
                               name="gender" onclick="gender_Man()" onchange="checkRadio()"/>
                    </div>
                </div>
                <a href = "" >
                    <jsp:useBean id="sumDiscount" scope="request" type="java.lang.Integer"/>
                    <input  value="${sumDiscount}"  required  name="sumDiscount" style="display: none"/>
                    <jsp:useBean id="sumTotalMoney" scope="request" type="java.lang.Integer"/>
                    <input  value="${sumTotalMoney}"  required  name="sumTotalMoney" style="display: none"/>
                    <input type="submit" value="Continue to checkout" class="checkout" onclick="clickCheckout()" />
                </a>
<%--            --%>
        </div>
    </div>
    <div>
        <div class="formContainer">
            <div class="shopping-cart">
                <ul class="shopping-cart-items">

<%--                    <jsp:useBean id="OrderDetailsAll" scope="request" type="java.util.List"/>--%>
<%--                    <c:forEach items="${OrderDetailsAll}" var="order" >--%>
<%--                          <jsp:useBean id="getProductDetailsAll" scope="request" type="java.util.List"/>--%>
<%--                          <c:forEach items="${getProductDetailsAll}" var="p">--%>
<%--                              <c:if test="${OrderDetailsAll.get(OrderDetailsAll.size() - 1).idOrder == order.idOrder}" >--%>
<%--                              <c:if test="${p.id == order.idProductDetails}" >--%>
<%--                        <li class="clearfix">--%>
<%--                            <img src="${p.linkImage}" height="70"--%>
<%--                                 width="70" alt="item1"/>--%>
<%--                            <span class="item-name">${p.name}</span>--%>
<%--                            <span class="item-price">${order.price}đ</span>--%>
<%--                            <span class="item-quantity">Số Lượng:${order.quantitySold}</span>--%>
<%--                        </li>--%>
<%--                                  </c:if >--%>
<%--                              </c:if >--%>
<%--                          </c:forEach>--%>
<%--                    </c:forEach>--%>

    <jsp:useBean id="OrderDetailsAll" scope="request" type="java.util.List"/>
    <c:forEach items="${OrderDetailsAll}" var="order" >
                    <li class="clearfix">
                        <img src="${order.linkImage}" height="70"
                             width="70" alt="item1"/>
                        <span class="item-name">${order.nameProduct}</span>
                        <span class="item-price">${order.price}đ</span>
                        <span class="item-quantity">Số Lượng:${order.quantitySold}</span>
                    </li>
    </c:forEach>
                </ul>

            </div>

            <div class="noiDung_2" >
                <jsp:useBean id="discountCode" scope="request" class="java.lang.String"/>
                <input class="input_1" type="text"  required  name="discountCode" value="${discountCode}" onchange="displayname()"
                       placeholder="Mã giảm giá"/>
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
                <span class="price from" style="margin-left: 240px; color: #555555">${sumDiscount}đ</span>
            </p>
            <div>
                <p class="from" style="color: #555555">
                    Tổng Tiền
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
    var result = "" ;
    function click () {
        result = "true" ;
    }

    const cname = document.getElementById('cname').checked
    const ccnum = document.getElementById('ccnum').checked
    const nu = document.getElementById('nu').checked
    const nam = document.getElementById('nam').checked

    function checkRadio(){
       let isCheck = true;
       if( cname == false && ccnum == false ){
           isCheck = false;
       }
       if (nu == false && nam == false){
           isCheck = false ;
       }
       return isCheck ;
    }


    function delivery(){
        return true;
    }
    function sendStore(){
        return true;
    }
    function gender_Women(){
        return true;
    }
    function gender_Man(){
        return true;
    }

    const firstname  =  document.getElementById("fname") ;
    const email  =  document.getElementById('email') ;
    const address  =  document.getElementById('address') ;
    const adr  =  document.getElementById('adr') ;
    const cardname  =  document.getElementById('cardname') ;
    const cardnumber  =  document.getElementById('cardnumber') ;
    const brithDay  =  document.getElementById('brithDay') ;

    function checkValidate() {
        let isCheck;
        if (firstname.value == "") {
            // alert('Qúy khách vui lòng điền đầy đủ thông tin ! ');
            isCheck = false;
        } else if (email.value == "") {
            isCheck = false;
        } else if (address.value == "") {
            isCheck = false;
        } else if (adr.value == "") {
            isCheck = false;
        } else if (cardname.value == "") {
            isCheck = false;
        } else if (cardnumber.value == "") {
            isCheck = false;
        } else if (brithDay.value == "") {
            isCheck = false;
        } else if (checkRadio() == false ) {
            isCheck = false;
        }else {
            isCheck = true;
        }
        return isCheck;
    }

    // alert(firstname);
    function clickCheckout() {
        let isValid = checkValidate();
        if (isValid) {
            alert('Qúy khách đã đặt hàng thành công !');
        }else {
            alert('Qúy khách vui lòng điền đầy đủ thông tin !');
        }
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










