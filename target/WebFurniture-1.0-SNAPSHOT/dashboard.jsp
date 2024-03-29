<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--<% List<ProductDetails> list =(List<ProductDetails> ) request.getParameter("list"); %>--%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title> ADMIN </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Page plugins -->
    <link rel="stylesheet" href="<%= Asset.url("vendor/dt/datatables.min.css")%>">
    <!-- CSS DASHBOARD.JSP-->
    <link rel="stylesheet" href="<%= Asset.url("QuanTri/Admin/assets/css/argon.css?v=1.2.0")%>" type="text/css">
    <link rel="stylesheet" href="<%= Asset.url("QuanTri/Admin/examples/DirectoryManagement.css")%>">
    <link rel="stylesheet" href="<%= Asset.url("QuanTri/Admin/examples/InterfaceManagement.css")%>">
    <link rel="stylesheet" href="<%= Asset.url("stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css")%>">

    <jsp:include page="manage/layout/css.jsp"></jsp:include>

</head>

<body>
<jsp:useBean id="profile" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Profile"/>

<%--<!-- Sidenav -->--%>
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand">
                <img src="manage/blue.png" class="navbar-brand-img" alt="...">
            </a>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
<%--                <ul class="navbar-nav">--%>

<%--                <jsp:include page="layout/nav.jsp"></jsp:include>--%>
                <ul class="navbar-nav">

                    <!-- lINK VE TRANG CHU-->
                    <li class="nav-item">
                        <a class="nav-link" href="<%= Asset.url("ProductDetailsList")%>">
                            <img src="<%= Asset.url("img.png")%>" style="height: 15px ; width: 15px ; margin-right: 18px">
                            <span class="nav-link-text">HomePage</span>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="<%= Asset.url("Dashboard")%>">
                            <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="<%= Asset.url("DirectoryManagement")%>">--%>
<%--                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Directory Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= Asset.url("Product")%>">
                            <i class="fa fa-shopping-cart" style="color: lightpink" aria-hidden="true"></i>
                            <span class="nav-link-text">Product </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Information">
                            <img class="fa fa-picture-o" src="<%= Asset.url("QuanTri/Admin/assets/img/Admin/img_24.png")%>"/>
                            <span class="nav-link-text">Information</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Order">
                            <img class="fa fa-picture-o" src="<%= Asset.url("QuanTri/Admin/assets/img/Admin/img_25.png")%>"/>
                            <span class="nav-link-text">Order</span>
                        </a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="<%= Asset.url("Information")%>">--%>
<%--                            <i class="fa fa-list-alt" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Interface Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
                    <li class="nav-item">
                        <a class="nav-link" href="<%= Asset.url("Profile")%>">
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
<div class="main-content" id="panel">
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
                        <h6 class="h2 text-white d-inline-block mb-0">Default</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="#"> <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i></a></li>
                                <li class="breadcrumb-item"><a href="#">Dashboards</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Default</li>
                            </ol>
                        </nav>
                    </div>
                </div>
                <!-- Card stats -->
                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-stats">
                            <!-- Card body -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <jsp:useBean id="sumOrder" scope="request" type="java.lang.Integer"/>
                                        <jsp:useBean id="sumUser" scope="request" type="java.lang.Integer"/>
                                        <jsp:useBean id="sumOrderDetails" scope="request" type="java.lang.Integer"/>
                                        <h5 class="card-title text-uppercase text-muted mb-0">Total traffic</h5>
                                        <span class="h2 font-weight-bold mb-0">${sumOrder + sumUser + sumOrderDetails}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-gradient-red text-white rounded-circle shadow">
                                            <i class="fa fa-hand-pointer-o" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mt-3 mb-0 text-sm">
                                    <jsp:useBean id="countUser" scope="request" type="java.lang.Double"/>
                                    <jsp:useBean id="countOrderDetails" scope="request" type="java.lang.Double"/>
                                    <jsp:useBean id="countOrder" scope="request" type="java.lang.Double"/>
                                    <jsp:useBean id="date" scope="request" type="java.time.LocalDate"/>

<%--                                    <span class="text-success mr-2"><i class="fas fa-calendar-alt"></i>${countUser + countOrderDetails + countOrder}%</span>--%>
<%--                                    fas fa-calendar-alt--%>
<%--                                    far fa-calendar-alt--%>

                                    <span class="text-nowrap">${date}</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-stats">
                            <!-- Card body -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">New users</h5>
                                        <span class="h2 font-weight-bold mb-0">${sumUser}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-gradient-orange text-white rounded-circle shadow">
                                            <i class="fa fa-pie-chart" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mt-3 mb-0 text-sm">
<%--                                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>${countUser}%</span>--%>
                                    <span class="text-nowrap">${date}</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-stats">
                            <!-- Card body -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
                                        <span class="h2 font-weight-bold mb-0">${sumOrderDetails}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-gradient-green text-white rounded-circle shadow">
                                            <i class="fa fa-money" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mt-3 mb-0 text-sm">
<%--                                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>${countOrderDetails}%</span>--%>
                                    <span class="text-nowrap">${date}</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-stats">
                            <!-- Card body -->
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h5 class="card-title text-uppercase text-muted mb-0">Performance</h5>
                                        <span class="h2 font-weight-bold mb-0">${sumOrder}</span>
                                    </div>
                                    <div class="col-auto">
                                        <div class="icon icon-shape bg-gradient-info text-white rounded-circle shadow">
                                            <i class="fa fa-bar-chart" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                </div>
                                <p class="mt-3 mb-0 text-sm">
<%--                                    <span class="text-success mr-2"><i class="fa fa-arrow-up"></i>${countOrder}%</span>--%>
                                    <span class="text-nowrap">${date}</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">

        <div class="row">
            <div class="col-xl-8" >
                <div class="card" style="width: 151%">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col">
                                <h3 class="mb-0">Page visits</h3>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive" style="margin-top: -5%">
                        <!-- Projects table -->
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                            <tr>
                                <th scope="col" style="width: 20%">Page name</th>
                                <th scope="col" style="width: 20%">Page visits</th>
                                <th scope="col" >Access rate</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <th class="TieuDe" scope="row"> Login </th>
                                <td>${sumUser}</td>
                                <td>
                                    <div style="width: 100% ; height: 25px ; border-radius: 2px ; background: white ; border: 1px solid black ">
                                        <div style="background:#1fb5d4 ; width: ${countUser}% ; height: 100% ; border-radius: 2px" aria-hidden="true" ></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="TieuDe" scope="row"> Product </th>
                                <jsp:useBean id="sumProductDetails" scope="request" type="java.lang.Integer"/>
                                <jsp:useBean id="countProductDetails" scope="request" type="java.lang.Double"/>
                                <td>${sumProductDetails}</td>
                                <td>
                                    <div style="width: 100% ; height: 25px ; border-radius: 2px ; background: white ; border: 1px solid black ">
                                        <div style="background:#e4606d ; width: ${countProductDetails}% ; height: 100% ; border-radius: 2px" aria-hidden="true" ></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="TieuDe" scope="row"> Order </th>
                                <td>${sumOrder}</td>
                                <td>
                                    <div style="width: 100% ; height: 25px ; border-radius: 2px ; background: white ; border: 1px solid black ">
                                    <div style="background:#00dea2 ; width: ${countOrder}% ; height: 100% ; border-radius: 2px" aria-hidden="true" ></div>
                                </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="TieuDe" scope="row"> Order Details </th>
                                <td>${sumOrderDetails}</td>
                                <td>
                                    <div style="width: 100% ; height: 25px ; border-radius: 2px ; background: white ; border: 1px solid black ">
                                        <div style="background:violet ; width: ${countOrderDetails}% ; height: 100% ; border-radius: 2px" aria-hidden="true" ></div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="TieuDe" scope="row"> Contact </th>
                                <jsp:useBean id="sumContact" scope="request" type="java.lang.Integer"/>
                                <jsp:useBean id="countContact" scope="request" type="java.lang.Double"/>
                                <td>${sumContact}</td>
                                <td>
                                    <div style="width: 100% ; height: 25px ; border-radius: 2px ; background: white ; border: 1px solid black ">
                                    <div style="background:orange ; width: ${countContact}% ; height: 100% ; border-radius: 2px" aria-hidden="true" ></div>
                                </div> </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer class="footer pt-0">
            <div class="row align-items-center justify-content-lg-between">
                <div class="col-lg-6">
                    <div class="copyright text-center  text-lg-left  text-muted">
                        &copy; 2021 <a href="<%= Asset.url("ProductDetailsList")%>" class="font-weight-bold ml-1"
                                       target="_blank">Web Furniture</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
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