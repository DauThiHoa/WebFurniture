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
    <meta charset="UTF-8">
    <title>THANH TOÁN THÀNH CÔNG</title>
    <link rel="icon" href="img.png" type="image/png" class="icon">
    <link rel="stylesheet" href="ThanhToanThanhCong.css">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<div class="from">
    <h1 class="tieude">THANH TOÁN THÀNH CÔNG !</h1>
    <i class="fa fa-check-circle" aria-hidden="true"></i>
    <h3 class="thongbao"> Thanh toán đã thực hiện thành công.
        Trong vòng 5 phút WebFurniture sẽ liên hệ xác nhận thông tin giao hàng qua mail của quý khách đã cung cấp</h3>
    <jsp:useBean id="customerList" scope="request" type="java.util.List"/>
    <c:forEach items="${customerList}" var="customer" >
    <c:if test="${customerList.get(customerList.size() -1).idCustomer == customer.idCustomer}" >
    <div class="thongtin">
        <h2 class="ten"> Hình thức thanh toán : Chuyển khoản ngân hàng ${customer.bank}</h2>
    </div>
    <div class="thongtin">
        <h2 class="ten"> Số thẻ : ${customer.cardNumber}</h2>
    </div>
    <div class="thongtin">
        <h2 class="ten"> Địa chỉ nhận hàng : ${customer.address} </h2>
    </div>
    <div class="thongtin">
        <h2 class="ten" style="margin-top: 30px"> Số điện thoại : ${customer.phone} </h2>
    </div>
    <div class="thongtin">
        <jsp:useBean id="sumTotal" scope="request" type="java.lang.Integer"/>
        <h2 class="ten"> Số tiền : ${sumTotal} VND</h2>
    </div>
    <div class="thongtin">
        <h2 class="ten"> Mã giao dịch : ${customer.idCustomer}</h2>
    </div>
    </c:if>
    </c:forEach>
    <a href="ProductDetailsList">
        <button class="tieptuc"> TIẾP TỤC MUA SẮM</button>
    </a>
</div>
</body>
<script>
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