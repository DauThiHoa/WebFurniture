<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--<% List<ProductDetails> list =(List<ProductDetails> ) request.getParameter("list"); %>--%>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title> ADMIN - INTERFACE MANAGEMENT - INFORMATION</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <!-- Page plugins -->
    <!-- Argon CSS -->
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.css?v=1.2.0" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="QuanTri/Admin/examples/Product.css">
    <link rel="stylesheet" href="QuanTri/Admin/examples/InterfaceManagement.css">
    <link rel="stylesheet" href="Information.css">
    <link rel="stylesheet" href="addDirectoryManagement.css">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">

</head>

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
                        <a class="nav-link active" href="<%= Asset.url("dashboard")%> ">
                            <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link " href="<%= Asset.url("DirectoryManagement")%>">--%>
<%--                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Directory Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link " href="<%= Asset.url("Information")%>">--%>
<%--                            <i class="fa fa-list-alt" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Interface Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>

                    <li class="nav-item">
                        <a class="nav-link " href="<%= Asset.url("Information")%>">
                            <img class="fa fa-picture-o" src="<%= Asset.url("QuanTri/Admin/assets/img/Admin/img_24.png")%>"/>
                            <span class="nav-link-text">Information</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href=<%= Asset.url("Order")%>"">
                            <img class="fa fa-picture-o" src="<%= Asset.url("QuanTri/Admin/assets/img/Admin/img_25.png")%>"/>
                            <span class="nav-link-text">Order</span>
                        </a>
                    </li>
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
                        <h6 class="h2 text-white d-inline-block mb-0">Information</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i></a></li>
                                <li class="breadcrumb-item"><a href="#"> Interface Management / Information</a></li>
                            </ol>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <form action = "<%=Asset.url("Edit_Information")%>"  method = "POST" >
        <jsp:useBean id="information" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Information"/>
        <%--        <c:forEach items="${information}" var="p" >--%>
        <div class="infor3">
            <h1 class="information"> VIETNAMESE</h1>
            <div class="information2">
                <h2 class="Category"> Company name </h2>
                <input style="border: 1px solid white" class="type1" type="text" name="Company" value="${information.companyName}"><br>
            </div>
            <div class="information3">
                <h2 class="Modules"> Address </h2>
                <input style="border: 1px solid white" class="Address" type="text" name="Address" value="${information.address}"><br>
            </div>

            <div class="information4">
                <h2 class="Category"> Share icon </h2>
                <%--            <input class="order" type="text" name="fname" value="No files selected">--%>
                <%--            <i class="fa fa-share-square-o" aria-hidden="true"></i>--%>
                <br>
                <%--            <button class="Select_File">--%>
                <%--                <i class="fa fa-plus-circle" aria-hidden="true"></i>--%>
                <%--                Select file--%>
                <%--            </button>--%>
                <input type="file" style="border : 1px solid white ; background: white ; color: black ; width: 750px ; margin-left: 50px" value="Select file">
            </div>
            <div class="information5">
                <h2 class="Modules"> Browser Icons </h2>
                <%--            <input class="Browser" type="text" name="fname" value="No files selected">--%>
                <br>
                <%--            <button class="Select_File2">--%>
                <%--                <i class="fa fa-plus-circle" aria-hidden="true"></i>--%>
                <%--                Select file--%>
                <%--            </button>--%>
                <input type="file" style="border : 1px solid white ; background: white ; color: black  ; width: 750px ; margin-left: 15px" value="Select file">
            </div>

        </div>

        <div class="infor4">
            <h1 class="information"> GENERAL INFORMATION</h1>
            <div class="information1">
                <h2 class="Image"> Hotline </h2>
                <input style="border: 1px solid white" class="type" type="text" name="Hotline" value="${information.hotline}"><br>
            </div>
            <div class="information2">
                <h2 class="Category"> Email </h2>
                <input style="border: 1px solid white" class="JhonDoue" type="text" name="Email" value="${information.email}"><br>
            </div>
            <div class="information3">
                <h2 class="Modules"> Copyright </h2>
                <input style="border: 1px solid white" class="type2" type="text" name="Copyright" value="${information.copyright}"><br>
            </div>

            <div class="information4">
                <h2 class="Modules"> Facebook </h2>
                <input style="border: 1px solid white" class="type2" type="text" name="Facebook" value="${information.facebook}"><br>
            </div>
            <div class="information2">
                <h2 class="Category"> Twitter </h2>
                <input style="border: 1px solid white" class="Twitter" type="text" name="Twitter" value="${information.twitter}"><br>
            </div>
            <div class="information2">
                <h2 class="Category"> Youtube </h2>
                <input style="border: 1px solid white" class="Youtube" type="text" name="Youtube" value="${information.youtube}"><br>
            </div>
            <div class="information2">
                <h2 class="Category"> Instagram </h2>
                <input style="border: 1px solid white" class="Instagram" type="text" name="Instagram" value="${information.instagram}"><br>
            </div>
            <div class="information6">
                <button class="Select" type="submit" onclick="save()">
                    <input style="display: none" class="Instagram" type="text" name="id" value="${information.idInformation}">
                    <img class="fa fa-floppy-o" src="QuanTri/Admin/assets/img/Admin/img_16.png"/>
                    Save
                </button>
            </div>
        </div>
        <%--        </c:forEach>--%>
    </form>
    <div class="information6">
        <a  href="/dashboard.jsp">
            <button class="Select" style="margin-left: 73%" onclick="exit()">
                <i class="fa fa-times-circle" aria-hidden="true"></i>
                Exit
            </button>
        </a>
    </div>
    <!-- Footer -->
    <footer class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6">
                <div class="copyright text-center  text-lg-left  text-muted">
                    &copy; 2021 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">
                    Web Furniture</a>
                </div>
            </div>

        </div>
    </footer>
</div>
</body>
<script>
    function save() {
        alert("Bạn đã cập nhật thành công thông tin ! ");
    }
    function exit() {
        alert("Bạn muốn thoát khỏi trang !");
    }
</script>
</html>