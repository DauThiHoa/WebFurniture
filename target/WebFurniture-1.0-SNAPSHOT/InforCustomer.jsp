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
    <meta name="author" content="Creative Tim">
    <title> ADMIN - INFORMATION CUSTOMER</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Page plugins -->
    <!-- Argon CSS -->
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.css?v=1.2.0" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="QuanTri/Admin/examples/Product.css">
    <link rel="stylesheet" href="QuanTri/Admin/examples/InterfaceManagement.css">
    <link rel="stylesheet" href="Order.css">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">

</head>
<style>
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
                        <a class="nav-link " href="DirectoryManagement">
                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>
                            <span class="nav-link-text">Directory Management</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="Information">
                            <i class="fa fa-list-alt" aria-hidden="true"></i>
                            <span class="nav-link-text">Interface Management</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="Information">
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
                        <a class="nav-link" href="<%= Asset.url("controllerRegister")%>">
                            <i class="fa fa-id-card" style="color: springgreen" aria-hidden="true"></i>
                            <span class="nav-link-text">Register</span>
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </div>
</nav>
<!-- Main content -->
<div class="main-content" id="panel">
    <!-- Topnav -->
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <!-- Search form -->
                <form class="navbar-search navbar-search-light form-inline mr-sm-3" id="navbar-search-main">
                    <div class="form-group mb-0">
                        <div class="input-group input-group-alternative input-group-merge">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fa fa-search" aria-hidden="true"></i></span>
                            </div>
                            <input class="form-control" placeholder="Search" type="text">
                        </div>
                    </div>
                    <button type="button" class="close" data-action="search-close" data-target="#navbar-search-main"
                            aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </form>
                <!-- Navbar links -->
                <ul class="navbar-nav align-items-center  ml-md-auto ">
                    <li class="nav-item d-xl-none">
                        <!-- Sidenav toggler -->
                        <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin"
                             data-target="#sidenav-main">
                            <div class="sidenav-toggler-inner">
                                <i class="sidenav-toggler-line"></i>
                                <i class="sidenav-toggler-line"></i>
                                <i class="sidenav-toggler-line"></i>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item d-sm-none">
                        <a class="nav-link" href="#" data-action="search-show" data-target="#navbar-search-main">
                            <i class="ni ni-zoom-split-in"></i>
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            <i class="ni ni-bell-55"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-xl  dropdown-menu-right  py-0 overflow-hidden">
                            <!-- Dropdown header -->
                            <div class="px-3 py-3">
                                <h6 class="text-sm text-muted m-0">You have <strong class="text-primary">13</strong>
                                    notifications.</h6>
                            </div>
                            <!-- List group -->
                            <div class="list-group list-group-flush">
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <!-- Avatar -->
                                            <img alt="Image placeholder" src="QuanTri/Admin/examples/icon/img_1.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">${profile.username}</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>2 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">Let's meet at Starbucks at 11:30. Wdyt?</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <!-- Avatar -->
                                            <img alt="Image placeholder" src="QuanTri/Admin/examples/icon/img_2.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">${profile.username}</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>3 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">A new issue has been reported for Argon.</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <!-- Avatar -->
                                            <img alt="Image placeholder" src="QuanTri/Admin/examples/icon/img_3.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">${profile.username}</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>5 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">Your posts have been liked a lot.</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <!-- Avatar -->
                                            <img alt="Image placeholder" src="QuanTri/Admin/assets/img/theme/team-4.jpg"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">${profile.username}</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>2 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">Let's meet at Starbucks at 11:30. Wdyt?</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <!-- Avatar -->
                                            <img alt="Image placeholder" src="QuanTri/Admin/examples/icon/img_5.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">${profile.username}</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>3 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">A new issue has been reported for Argon.</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!-- View all -->
                            <a href="#" class="dropdown-item text-center text-primary font-weight-bold py-3">View
                                all</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            <i class="ni ni-ungroup"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-dark bg-default  dropdown-menu-right ">
                            <div class="row shortcuts px-4">
                                <a href="#" class="col-4 shortcut-item">
                    <span class="shortcut-media avatar rounded-circle bg-gradient-red">
                      <i class="ni ni-calendar-grid-58"></i>
                    </span>
                                    <small>Calendar</small>
                                </a>
                                <a href="#" class="col-4 shortcut-item">
                    <span class="shortcut-media avatar rounded-circle bg-gradient-orange">
                      <i class="ni ni-email-83"></i>
                    </span>
                                    <small>Email</small>
                                </a>
                                <a href="#" class="col-4 shortcut-item">
                    <span class="shortcut-media avatar rounded-circle bg-gradient-info">
                      <i class="ni ni-credit-card"></i>
                    </span>
                                    <small>Payments</small>
                                </a>
                                <a href="#" class="col-4 shortcut-item">
                    <span class="shortcut-media avatar rounded-circle bg-gradient-green">
                      <i class="ni ni-books"></i>
                    </span>
                                    <small>Reports</small>
                                </a>
                                <a href="#" class="col-4 shortcut-item">
                    <span class="shortcut-media avatar rounded-circle bg-gradient-purple">
                      <i class="ni ni-pin-3"></i>
                    </span>
                                    <small>Maps</small>
                                </a>
                                <a href="#" class="col-4 shortcut-item">
                    <span class="shortcut-media avatar rounded-circle bg-gradient-yellow">
                      <i class="ni ni-basket"></i>
                    </span>
                                    <small>Shop</small>
                                </a>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                    <li class="nav-item dropdown">
                        <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                           aria-expanded="false">
                            <div class="media align-items-center">
                  <span class="avatar avatar-sm rounded-circle">
                    <img alt="Image placeholder" src="QuanTri/Admin/assets/img/theme/team-4.jpg">
                  </span>
                                <div class="media-body  ml-2  d-none d-lg-block">
                                    <span class="mb-0 text-sm  font-weight-bold">${profile.username}</span>
                                </div>
                            </div>
                        </a>
                        <div class="dropdown-menu  dropdown-menu-right ">
                            <div class="dropdown-header noti-title">
                                <h6 class="text-overflow m-0">Welcome!</h6>
                            </div>
                            <a href="#" class="dropdown-item">
                                <i class="ni ni-single-02"></i>
                                <span>My profile</span>
                            </a>
                            <a href="#" class="dropdown-item">
                                <i class="ni ni-settings-gear-65"></i>
                                <span>Settings</span>
                            </a>
                            <a href="#" class="dropdown-item">
                                <i class="ni ni-calendar-grid-58"></i>
                                <span>Activity</span>
                            </a>
                            <a href="#" class="dropdown-item">
                                <i class="ni ni-support-16"></i>
                                <span>Support</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="ni ni-user-run"></i>
                                <span>Logout</span>
                            </a>
                        </div>
                    </li>
                </ul>
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
    <div class="row py-9" style="margin-left: 5%">
        <div class="col-md-6 ">
                <div class="form-group">
                    <label style="font-weight: bold">ID Customer</label>
                    <input name ="idCustomer" type="text" class="form-control" value="${customer.idCustomer}" readonly placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Name</label>
                    <input name ="name" type="text" class="form-control" value="${customer.name}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">BirthDay</label>
                    <input name ="birthDay" type="text" class="form-control" value="${customer.birthDay}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Gender</label>
                    <input name ="gender" type="text" class="form-control" value="${customer.gender}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Address</label>
                    <input name ="address" type="text" class="form-control"  value="${customer.address}"  placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Phone</label>
                    <input name ="phone" type="text" class="form-control" value="${customer.phone}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Email</label>
                    <input name ="email" type="text" class="form-control" value="${customer.email}"  placeholder="Input field">
                </div>

        </div>
        <div class="col-md-6 ">

                <div class="form-group">
                    <label style="font-weight: bold">Bank</label>
                    <input name ="bank" type="text" class="form-control" value="${customer.bank}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Card Number</label>
                    <input name ="cardNumber" type="text" class="form-control" value="${customer.cardNumber}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Delivery Method</label>
                    <input name ="deliveryMethod" type="text" class="form-control" value="${customer.deliveryMethod}"  placeholder="Input field">
                </div>

                <div class="form-group">
                    <label style="font-weight: bold">Discount</label>
                    <input name ="discount" type="text" class="form-control"  value="${customer.discount}" readonly placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Ship</label>
                    <input name ="ship" type="text" class="form-control" value="${customer.ship}" readonly placeholder="Input field">
                </div>
                <div class="form-group">
                    <label style="font-weight: bold">Total Money</label>
                    <input name ="totalMoney" type="text" class="form-control" value="${customer.totalMoney}" readonly  placeholder="Input field">
                </div>
                <button type="submit" style="margin-right: 0%" class="btn btn-primary" onclick="edit()" >Edit</button>

        </div>
    </div>
    </form>
    <a href="<%= Asset.url("Order")%>" >
    <button style="margin-right: 0%" class="btn btn-primary" onclick="exit()" >Edit</button>
    </a>

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
<script>
    function edit () {
        alert("Bạn đã sửa thông tin khách hàng thành công !")
    }
    function exit () {
        alert("Thoát và không tiếp tục chỉnh sửa thông tin khách hàng !")
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