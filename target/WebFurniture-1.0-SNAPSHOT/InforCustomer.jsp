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
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">

    <title> ADMIN - INFORMATION CUSTOMER</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Page plugins -->

    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.css?v=1.2.0" type="text/css">
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/bootstrap/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/bootstrap/bootstrap-grid.min.css" type="text/css">
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/bootstrap/bootstrap-reboot.min.css" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">

    <!-- Page plugins -->
    <jsp:include page="manage/layout/css.jsp"></jsp:include>

    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                        <a class="nav-link" href="<%= Asset.url("ProductDetailsList")%>">
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
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link " href="DirectoryManagement">--%>
<%--                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Directory Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link" href="Product">
                            <i class="fa fa-shopping-cart" style="color: lightpink" aria-hidden="true"></i>
                            <span class="nav-link-text">Product </span>
                        </a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" href="Information">--%>
<%--                            <i class="fa fa-list-alt" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Interface Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link " href="Information">
                            <img class="fa fa-picture-o" src="<%= Asset.url("QuanTri/Admin/assets/img/Admin/img_24.png")%>"/>
                            <span class="nav-link-text">Information</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="Order">
                            <img class="fa fa-picture-o" src="<%= Asset.url("QuanTri/Admin/assets/img/Admin/img_25.png")%>"/>
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
                                <li class="breadcrumb-item"><a href="#"> Interface Management / Order / Information Customer</a></li>
                            </ol>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <form action="UpdateInforCustomer" method="POST" role="form"   >
        <jsp:useBean id="customer" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Customer"/>
    <div class="row py-9" style="margin-top: -8%; margin-left: 3%" >
        <div class="col-md-6 ">
                <div class="form-group">
                    <label style="font-weight: bold">ID Customer</label>
                    <input  required name ="idCustomer" required type="text" class="form-control" value="${customer.idCustomer}" readonly placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Name</label>
                    <input  required name ="name" required type="text" class="form-control" value="${customer.name}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">BirthDay</label>
                    <input  required name ="birthDay" required type="text" class="form-control" value="${customer.birthDay}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Gender</label>
                    <input  required name ="gender" required type="text" class="form-control" value="${customer.gender}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Address</label>
                    <input  required name ="address" required type="text" class="form-control"  value="${customer.address}"  placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Phone</label>
                    <input  required name ="phone" required type="text" class="form-control" value="${customer.phone}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Email</label>
                    <input  required name ="email" required required type="email" class="form-control" value="${customer.email}"  placeholder="Input field">
                </div>

        </div>
        <div class="col-md-6 ">

                <div class="form-group">
                    <label style="font-weight: bold">Bank</label>
                    <input  required name ="bank" required type="text" class="form-control" value="${customer.bank}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Card Number</label>
                    <input  required name ="cardNumber" required type="text" class="form-control" value="${customer.cardNumber}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Delivery Method</label>
                    <input required  name ="deliveryMethod" required type="text" class="form-control" value="${customer.deliveryMethod}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Discount</label>
                    <input  required name ="discount" required type="number" class="form-control"  value="${customer.discount}" readonly placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Ship</label>
                    <input  required name ="ship" required type="number" class="form-control" value="${customer.ship}" readonly placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Total Money</label>
                    <input  required name ="totalMoney" required type="number" class="form-control" value="${customer.totalMoney}" readonly  placeholder="Input field">
                </div>
                <button type="submit" style="margin-left: 70%" class="btn btn-primary" onclick="edit()" >Edit</button>

        </div>
    </div>
    </form>
    <a href="<%= Asset.url("Order")%>" >
        <button style=" background: #03acca ; margin-left: 93% ; margin-top: -40%" class="btn btn-primary" onclick="exit()" >Exit</button>
    </a>

    <!-- Footer -->
    <footer class="footer pt-0" style="margin-top: -15%">
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
<script>
    function edit () {
        alert("You have successfully edited customer information !")
    }
    function exit () {
        alert("Exit and do not continue to edit customer information !")
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