<%--
  Created by IntelliJ IDEA.
  User: THINKPRO
  Date: 2/21/2022
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" href="img.png" type="image/png" class="icon">
    <title>NHOM 7 WEB FURNITURE</title>
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>
<h2 style="color: #1fb5d4 ; font-weight: bold">Payment made successfully!</h2>
<h3 style="color: #1fb5d4 ; font-weight: bold">Within 5 minutes, WebFurniture will
    contact you to confirm the delivery information via email you have provided</h3>
<h3 style=" font-weight: bold">Payment method : Bank transfer bank</h3>
<h3 style=" font-weight: bold">Card number : cardNumber</h3>
<h3 style=" font-weight: bold">Delivery address : address</h3>
<h3 style=" font-weight: bold">Phone number : phone</h3>
<h3 style=" font-weight: bold">Amount : sumTotal VND</h3>
<h3 style=" font-weight: bold">Transaction code : idCustomer</h3>

<%--    Thanh toán đã thực hiện thành công.--%>
<%--    Trong vòng 5 phút WebFurniture sẽ liên hệ xác nhận thông tin giao hàng qua mail của quý khách đã cung cấp--%>
<%--    Hình thức thanh toán : Chuyển khoản ngân hàng ${customer.bank}--%>
<%--    Số thẻ : ${customer.cardNumber}--%>
<%--    Địa chỉ nhận hàng : ${customer.address}--%>
<%--    Số điện thoại : ${customer.phone}--%>
<%--    Số tiền : ${sumTotal} VND--%>
<%--    Mã giao dịch : ${customer.idCustomer}--%>

</body>
</html>
