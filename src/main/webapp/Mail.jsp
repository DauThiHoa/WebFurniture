<%--
  Created by IntelliJ IDEA.
  User: THINKPRO
  Date: 2/21/2022
  Time: 9:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
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
<i style="text-align: center ; color: #1fb5d4; font-size: 300% " class="fa fa-check-circle" aria-hidden="true"></i>
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
