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
    <title> ADMIN </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">

    <!-- Argon CSS -->
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.css?v=1.2.0" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">
    <link rel="stylesheet" href="QuanTri/Admin/examples/InterfaceManagement.css">
    <link rel="stylesheet" href="QuanTri/Admin/examples/ListOfPermissions.css">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>
<%--<jsp:useBean id="profile" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Profile"/>--%>
<!-- Sidenav -->
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand" href="javascript:void(0)">
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
                        <a class="nav-link" href="DirectoryManagement.jsp">
                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>
                            <span class="nav-link-text">Directory Management</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Information">
                            <i class="fa fa-list-alt" aria-hidden="true"></i>
                            <span class="nav-link-text">Interface Management</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="Profile">
                            <i class="fa fa-user-circle" style="color: lightsalmon" aria-hidden="true"></i>
                            <span class="nav-link-text">Profile</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login">
                            <i class="fa fa-key" style="color: lightcoral" aria-hidden="true"></i>
                            <span class="nav-link-text">Login</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="controllerRegister">
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
                                    <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/assets/img/brand/favicon.png")%>">
                                </span>
            <div class="media-body  ml-2  d-none d-lg-block">
                <span class="mb-0 text-sm  font-weight-bold" style="color: white">${profile.username}  </span>
            </div>
        </div>
    </nav>
    <!-- Header -->
    <!-- Header -->

    <div class="header pb-6 d-flex align-items-center"
         style="min-height: 500px; background-image: url(QuanTri/Admin/assets/img/Admin/img_27.png); background-size: cover; background-position: center top;">
        <!-- Mask -->
        <span class="mask bg-gradient-default opacity-8"></span>
        <!-- Header container -->
        <div class="container-fluid d-flex align-items-center">
            <div class="row">
                <div class="col-lg-7 col-md-10">
                    <h1 class="display-2 text-white">Hello UserName</h1>
                    <p class="text-white mt-0 mb-5">This is your profile page. You can see the progress you've made with
                        your work and manage your projects or assigned tasks</p>
<%--                    <a href="#" class="btn btn-neutral"></a>--%>

                </div>
            </div>
        </div>
    </div>
    <!-- Page content -->

    <div class="container-fluid mt--6">
        <form action = "<%=Asset.url("Add_Profile")%>"  method = "POST" >
        <div class="row">
            <div class="col-xl-4 order-xl-2">
                <div class="card card-profile">
                    <img src="QuanTri/Admin/assets/img/Admin/img_28.png" alt="Image placeholder" class="card-img-top">
                    <div class="row justify-content-center">
                        <div class="col-lg-3 order-lg-2">
                            <div class="card-profile-image">
                                <a href="#">
                                    <img src="QuanTri/Admin/assets/img/theme/team-4.jpg" class="rounded-circle">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="card-header text-center border-0 pt-8 pt-md-4 pb-0 pb-md-4">
                        <div class="d-flex justify-content-between">
                            <a href="#" class="btn btn-sm btn-info  mr-4 "></a>
                            <a href="#" class="btn btn-sm btn-default float-right"></a>
                        </div>
                    </div>
                    <div class="card-body pt-0">
                        <div class="row">
                            <div class="col">
                                <div class="card-profile-stats d-flex justify-content-center">
                                    <div>
                                        <input style=" text-align: center ; border: 1px solid black ; background: white ; width: 50px" class="heading" type="text" name="friends" value="">
<%--                                        <span class="heading">${profile.friends}</span>--%>
                                        <span class="description">Friends</span>
                                    </div>
                                    <div>

                                        <input   style=" text-align: center ; border: 1px solid black ; background: white ; width: 50px" class="heading" type="text" name="photos" value="">
<%--                                        <span class="heading">${profile.photos}</span>--%>
                                        <span class="description">Photos</span>
                                    </div>
                                    <div>
                                        <input style=" text-align: center ; border: 1px solid black ; background: white ; width: 50px" class="heading" type="text" name="comments" value="">
<%--                                        <span class="heading">${profile.comments}</span>--%>
                                        <span class="description">Comments</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-center">
                            <h5 class="h3">

                                UserName - <input style="border: 1px solid black ; background: white ; width: 30px" class="heading" type="text" name="age" value="">
<%--                                    <span class="font-weight-light">, ${profile.age}</span>--%>
                            </h5>
                            <div class="h5 font-weight-300">
<%--                                <i class="ni location_pin mr-2"></i>${profile.country}, ${profile.city}--%>
                            </div>
                            <div class="h5 mt-4">
                                <textarea class="ni business_briefcase-24 mr-2"
                                       style="text-align : center ; border: 1px solid black ; background: white; width: 350px ; height: 100px" class="ni business_briefcase-24 mr-2"
                                          type="text" name="description"></textarea>
<%--                                <i class="ni business_briefcase-24 mr-2"></i>${profile.description}--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-8 order-xl-1">
                <div class="card">
                    <div class="card-header">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">Edit profile </h3>
                            </div>
                            <div class="col-4 text-right">
                                <button class="btn btn-sm btn-primary" type="submit" onclick="add()">
                                ADD</button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <form>
                            <h6 class="heading-small text-muted mb-4">User information</h6>
                            <div class="pl-lg-4">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-username">Username</label>
                                            <input style="font-weight: bold" type="text" id="input-username" class="form-control"
                                                    name="username" value="">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-email">Email address</label>
                                            <input style="font-weight: bold" type="email" required id="input-email" class="form-control" name="email"
                                                   value="">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-first-name">First name</label>
                                            <input style="font-weight: bold" type="text" id="input-first-name" class="form-control" name="firstname"
                                                    value="">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-last-name">Last name</label>
                                            <input style="font-weight: bold" type="text" id="input-last-name" class="form-control" name="lastname"
                                                    value="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr class="my-4"/>
                            <!-- Address -->
                            <h6 class="heading-small text-muted mb-4">Contact information</h6>
                            <div class="pl-lg-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-address">Address</label>
                                            <input style="font-weight: bold" id="input-address" class="form-control"   name="address"
                                                   value="" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-city">City</label>
                                            <input style="font-weight: bold" type="text" id="input-city" class="form-control"  name="city"
                                                   value="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-country">Country</label>
                                            <input style="font-weight: bold" type="text" id="input-country" class="form-control" name="country"
                                                    value="">
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group">
                                            <label class="form-control-label" for="input-country">Postal code</label>
                                            <input style="font-weight: bold" type="number" id="input-postal-code" class="form-control" name="postalcode"
                                                   value="">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <hr class="my-4"/>
                            <!-- Description -->
                            <h6 class="heading-small text-muted mb-4">About me</h6>
                            <div class="pl-lg-4">
                                <div class="form-group">
                                    <label class="form-control-label">About Me</label>
                                    <textarea style="font-weight: bold" rows="4" class="form-control" name="aboutme"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        </form>

        <!-- Footer -->
        <footer class="footer pt-0">
            <div class="row align-items-center justify-content-lg-between">
                <div class="col-lg-6">
                    <div class="copyright text-center  text-lg-left  text-muted">
                        &copy; 2021 <a href="<%= Asset.url("ProductDetailsList")%>" class="font-weight-bold ml-1"
                                       target="_blank"> WebFurniture</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>

</div>

</body>
<script>
    function add () {
        alert("Bạn đã thêm thông tin thành công !")
    }
    function edit() {
        alert("Bạn đã sửa thông tin thành công !")
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