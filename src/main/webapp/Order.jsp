<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title> ADMIN - INTERFACE MANAGEMENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Page plugins -->
    <!-- Argon CSS -->
<%--    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.css?v=1.2.0" type="text/css">--%>
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.min.css" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:include page="manage/layout/css.jsp"></jsp:include>

    <link rel="stylesheet" href="QuanTri/Admin/examples/Product.css">
    <link rel="stylesheet" href="QuanTri/Admin/examples/InterfaceManagement.css">
    <link rel="stylesheet" href="Order.css">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">

</head>
<style>
    body{
        background: white;
    }
    .btn5-hover {
        width: 100px;
        font-size: 13px;
        font-weight: 600;
        color: #fff;
        cursor: pointer;
        margin: 0px;
        height: 25px;
        text-align:center;
        border: none;
        background-size: 300% 100%;
        border-radius: 50px;
        moz-transition: all .4s ease-in-out;
        -o-transition: all .4s ease-in-out;
        -webkit-transition: all .4s ease-in-out;
        transition: all .4s ease-in-out;
    }

    .btn5-hover:hover {
        background-position: 100% 0;
        moz-transition: all .4s ease-in-out;
        -o-transition: all .4s ease-in-out;
        -webkit-transition: all .4s ease-in-out;
        transition: all .4s ease-in-out;
    }

    .btn5-hover:focus {
        outline: none;
    }

    .btn5-hover.btn5 {
        background-image: linear-gradient(
                to right,
                #25aae1,
                #4481eb,
                #04befe,
                #3f86ed
        );
        box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
    }
</style>
<body>
<jsp:useBean id="profile" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Profile"/>
<!-- Sidenav -->
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand">
                <img src="QuanTri/Admin/assets/img/brand/blue.png" class="navbar-brand-img" alt="...">
            </a>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="<%= Asset.url("ProductDetailsList")%>">
                            <img src="<%= Asset.url("img.png")%>" style="height: 15px ; width: 15px ; margin-right: 18px">
                            <span class="nav-link-text">HomePage</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Dashboard">
                            <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Product">
                            <i class="fa fa-shopping-cart" style="color: lightpink" aria-hidden="true"></i>
                            <span class="nav-link-text">Product </span>
                        </a>
                    </li>


                    <li class="nav-item">
                        <a class="nav-link " href="Information">
                            <img class="fa fa-picture-o" src="QuanTri/Admin/assets/img/Admin/img_24.png"/>
                            <span class="nav-link-text">Information</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="Order">
                            <img class="fa fa-picture-o" src="QuanTri/Admin/assets/img/Admin/img_25.png"/>
                            <span class="nav-link-text">Order</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Profile">
                            <i class="fa fa-user-circle" style="color: lightsalmon" aria-hidden="true"></i>
                            <span class="nav-link-text">Profile</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="<%= Asset.url("login")%>">
                            <i class="fa fa-key" style="color: lightcoral" aria-hidden="true"></i>
                            <span class="nav-link-text">Login</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= Asset.url("register")%>">
                            <i class="fa fa-id-card" style="color: springgreen" aria-hidden="true"></i>
                            <span class="nav-link-text"> Register</span>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</nav>
<!-- Main content -->
<div class="main-content" id="panel" style="width: 83%; margin-left: 14%">
    <!-- Topnav -->

    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
        <div class="media align-items-center" style="margin-left: 90%">
                                 <span class="avatar avatar-sm rounded-circle">
                                    <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/assets/img/img.png")%>">
                                </span>
            <div class="media-body  ml-2  d-none d-lg-block">
                <span class="mb-0 text-sm  font-weight-bold" style="color: white">${profile.username}  </span>
            </div>
        </div>
    </nav>
    <!-- Header -->
    <!-- Header -->
    <div class="header bg-primary pb-6">
        <div class="container-fluid">
            <div class="header-body">
                <div class="row align-items-center py-4">
                    <div class="col-lg-6 col-7">
                        <h6 class="h2 text-white d-inline-block mb-0">Order</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i></a></li>
                                <li class="breadcrumb-item"><a href="#"> Interface Management / Order</a></li>
                            </ol>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="tab">

        <table class="table table-hover table-responsive table-bordered" style="table-layout: fixed ; width: 99%; margin-left: 1%"  >
            <tr style="width: 99%">
                <th class="TieuDe">Code orders</th>
                <th class="TieuDe">Customer name</th>
                <th class="TieuDe">Booking date</th>
                <th class="TieuDe">Delivery date</th>
                <th class="TieuDe">Total money</th>
                <th class="TieuDe">Payment</th>
                <th class="TieuDe">Status</th>
                <th class="TieuDe">Change</th>
                <th class="TieuDe">Erase</th>
                <th class="TieuDe">Customer Information</th>
            </tr>

            <jsp:useBean id="listCustomerOrder" scope="request" type="java.util.List"/>
            <c:forEach items="${listCustomerOrder}" var="list" >
            <tr>
                <form action = "<%=Asset.url("UpdateOrder")%>"  method = "POST" >
                <td>${list.idOrder}</td>
                <td><input  required type="text" name ="name" style=" border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${list.name}"></td>
                <td><input  required type="text" name ="dateOrder" readonly style=" border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${list.dateOrder}"></td>
                <td><input required  type="text" name ="dateReceipt" style=" border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${list.dateReceipt}"></td>
                <td class="chiTiet"><input type="text" readonly name ="totalMoney" style=" border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${list.totalMoney}"></td>
                <td><input  required type="text" name ="bank" style=" border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${list.bank}"></td>
                <td class="DangGiao"><input type="text" name ="status" style=" border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${list.status}"></td>
                <td>
                    <input  required type="hidden" style="display: none" name ="idOrder" value="${list.idOrder}">
                    <button style="border: 1px solid white ; background: #f8f9fe  ; color: #1fb5d4" type="submit" href="" class="fa fa-edit" onclick="edit()" aria-hidden="true" ></button>
                </td>
                </form>
                <td>
                    <form action = "<%=Asset.url("RemoveOrder")%>"  method = "POST" >
                        <input  required type="hidden" name ="id" value="${list.idOrder}">
                        <button style="border: 1px solid white ; background: #f8f9fe " type="submit" href=""
                                class="fa fa-trash text-danger" onclick="trash()"
                                aria-hidden="true" ></button>
                    </form>
                </td>
                <td>
                    <form action = "<%=Asset.url("InforCustomer")%>"  method = "POST" >
                        <input  required type="hidden" name ="idCustomer" value="${list.idCustomer}">
                        <button class="btn5-hover btn5" type="submit" style="margin-left: 15%">Information</button>
                    </form>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>


    <!-- Footer -->
    <footer class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6">
                <div class="copyright text-center  text-lg-left  text-muted">
                    &copy; 2021 <a href="<%= Asset.url("ProductDetailsList")%>" class="font-weight-bold ml-1" target="_blank">
                    Web Furniture</a>
                </div>
            </div>

        </div>
    </footer>
</div>
</body>
<script type="text/javascript" src="<%= Asset.url("../layout/script.jsp")%>"></script>

<%--</script>--%>
<script type="text/javascript" src="<%= Asset.url("vendor/dt/datatables.min.js")%>"></script>
<script type="text/javascript" href="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" href="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script>
    function trash () {
        alert("You have successfully deleted your order !")
    }
    function edit () {
        alert("You have successfully edited your order !")
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