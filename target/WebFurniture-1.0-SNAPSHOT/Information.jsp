<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn"
           uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--<% List<ProductDetails> list =(List<ProductDetails> ) request.getParameter("list"); %>--%>
<%@ taglib prefix="comment" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String error = (String) request.getAttribute("error");
%>

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
                        <a class="nav-link" href="Dashboard">
                            <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link " href="/WebFurniture_war_exploded/DirectoryManagement">--%>
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
<%--                        <a class="nav-link active " href="Information">--%>
<%--                            <i class="fa fa-list-alt" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Interface Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>

                    <li class="nav-item">
                        <a class="nav-link active" href="Information">
                            <img class="fa fa-picture-o" src="QuanTri/Admin/assets/img/Admin/img_24.png"/>
                            <span class="nav-link-text">Information</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Order">
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

    <div class="infor4" style="height: 300%">
        <h1 class="information"> GENERAL INFORMATION</h1>
        <div class="information2">
            <h2 class="Category"> Name </h2>
            <input  required style="border: 1px solid white; margin-left: 3%" class="type" required type="text" name="Company" value="${information.companyName}"><br>
        </div>
        <div class="information3">
            <h2 class="Image"> Address </h2>
            <input  required style="border: 1px solid white; margin-left: -1%" class="type" required type="text" name="Address" value="${information.address}"><br>
        </div>
        <div class="information1">
            <h2 class="Image"> Hotline </h2>
            <input  required style="border: 1px solid white" required class="type" type="text" name="Hotline" value="${information.hotline}"><br>
        </div>
        <div class="information2">
            <h2 class="Category"> Email </h2>
            <input  required style="border: 1px solid white" class="JhonDoue" required type="email" name="Email" value="${information.email}"><br>
        </div>
        <div class="information3">
            <h2 class="Modules"> Copyright </h2>
            <input  required style="border: 1px solid white" class="type2" required type="text" name="Copyright" value="${information.copyright}"><br>
        </div>

        <div class="information4">
            <h2 class="Modules"> Facebook </h2>
            <input  required style="border: 1px solid white" class="type2" required type="text" name="Facebook" value="${information.facebook}"><br>
        </div>
        <div class="information2">
            <h2 class="Category"> Twitter </h2>
            <input  required style="border: 1px solid white" class="Twitter" required type="text" name="Twitter" value="${information.twitter}"><br>
        </div>
        <div class="information2">
            <h2 class="Category"> Youtube </h2>
            <input  required style="border: 1px solid white" class="Youtube" required type="text" name="Youtube" value="${information.youtube}"><br>
        </div>
        <div class="information2">
            <h2 class="Category"> Instagram </h2>
            <input  required style="border: 1px solid white" class="Instagram" required type="text" name="Instagram" value="${information.instagram}"><br>
        </div>
        <div class="information6">
                <button class="Select" type="submit" onclick="save()">
                    <input  required style="display: none" class="Instagram" type="text" name="id" value="${information.idInformation}">
                    <img class="fa fa-floppy-o" src="QuanTri/Admin/assets/img/Admin/img_16.png"/>
                    Save
                </button>
        </div>
        <% if (error != null) { %>
            <p style="color: red ; font-weight: bold; margin-bottom: -2%"><%= error%> </p>
        <%} %>
    </div>
<%--        </c:forEach>--%>
    </form>
    <div class="information6">
    <a  href="Dashboard">
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
                    &copy; 2021 <a href="<%= Asset.url("ProductDetailsList")%>" class="font-weight-bold ml-1" target="_blank">
                    Web Furniture</a>
                </div>
            </div>

        </div>
    </footer>
</div>
</body>
<script>
    function save() {
            alert("You have successfully updated your information ! ");
    }
    function exit() {
        alert("You want to exit the page !");
    }
    const shareicon = document.querySelector('.shareicon') ;
    const imgshareicon = document.querySelector('.imgshareicon');
    var imgshareiconvalue = document.querySelector('.imgshareicon') ;
    var share = document.querySelector('.share') ;

    function clickshareicon () {
        let url = URL.createObjectURL(shareicon.files[0]);
        imgshareicon.setAttribute('src', url);
        imgshareiconvalue.value = url;
        share.value = url;
        // alert(imgshareiconvalue.value);
    }
    const browsericon = document.querySelector('.browsericon') ;
    const imgbrowsericon = document.querySelector('.imgbrowsericon');
    var imgbrowsericonvalue = document.querySelector('.imgbrowsericon') ;
    var browser = document.querySelector('.browser') ;

    function clickbrowsericon () {
        let url = URL.createObjectURL(browsericon.files[0]);
        imgbrowsericon.setAttribute('src', url);
        imgbrowsericonvalue.value = url;
        browser.value = url;
        // alert(imgbrowsericonvalue.value);
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