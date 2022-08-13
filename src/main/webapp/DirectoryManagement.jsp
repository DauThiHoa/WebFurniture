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
    <title> ADMIN - DIRECTORY MANAGEMENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="QuanTri/Admin/assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="../assets/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
    <!-- Page plugins -->
    <!-- Argon CSS -->
    <link rel="stylesheet" href="QuanTri/Admin/assets/css/argon.css?v=1.2.0" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="QuanTri/Admin/examples/InterfaceManagement.css">
    <link rel="stylesheet" href="stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">

</head>

<body>
<jsp:useBean id="profile" scope="request" type="vn.edu.hcmuaf.fit.webfurniture.beans.Profile"/>
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
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" href="/WebFurniture_war_exploded/DirectoryManagement">--%>
<%--                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Directory Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" href="/WebFurniture_war_exploded/DirectoryManagement">--%>
<%--                            <i class="fa fa-book" style="color: #1fb5d4" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Page</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>

                    <li class="nav-item">
                        <a class="nav-link active" href="Product">
                            <i class="fa fa-shopping-cart" style="color: lightpink" aria-hidden="true"></i>
                            <span class="nav-link-text">Product </span>
                        </a>
                    </li>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link " href="Information">--%>
<%--                            <i class="fa fa-list-alt" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Interface Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
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
                        <h6 class="h2 text-white d-inline-block mb-0">Directory Management</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i></a></li>
                                <li class="breadcrumb-item"><a href="#">Directory Management</a></li>
                            </ol>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <a class="nav-link active" style="margin-left: 35%" href="<%= Asset.url("Add_DirectoryManagement")%> ">
        <button class="add">
            <i class="fa fa-plus-circle" aria-hidden="true"></i>
            Add
        </button>
    </a>

    <div class="tab">
        <table class="table tab-content">
            <tr>
                <th style="text-align: center" class="TieuDe">Numerical order</th>
                <th class="TieuDe">Category</th>
                <th class="TieuDe">Image</th>
                <th style="text-align: center" class="TieuDe">Modules</th>
                <th class="TieuDe">Display</th>
                <th class="TieuDe">Change</th>
                <th class="TieuDe">Erase</th>
            </tr>
            <jsp:useBean id="PageWeb" scope="request" type="java.util.List"/>
            <% int i = 1 ;%>
            <c:forEach items="${PageWeb}" var="p" >
            <tr>
                <form action = "<%=Asset.url("edit_DirectoryManagement")%>"  method = "POST" >
                <td><input  required style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name="number" value="<%= i++ %>"><br></td>
                <td><input  required style=" border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name="nameCategory" value="${p.nameCategory}"></td>
                <td><img src="${p.linkImage}" class="image"/></td>
                <td><input  required style="text-align: center; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name="modules" value="${p.modules}"></td>
                <td>
                    <c:if test="${p.display == 'none'}">
                        <input  required style="font-size: 200px" type="checkbox" name="display" value="block">
                    </c:if>
                    <c:if test="${p.display == 'block'}">
<%--                        <input class="fa fa-check-square" style="font-size: 150% ;background: white ; color: #00dea2"--%>
<%--                               type="checkbox" name="display" value="block" aria-hidden="true">--%>
                        <i style="font-size: 150% ; background: white ; color: #00dea2" class="fa fa-check-square" aria-hidden="true"></i>
                    </c:if>
                </td>
                <td>
                    <input  required type="hidden" name ="id" value="${p.id}">
                    <button style="border: 1px solid white ; background: #f8f9fe  ; color: #1fb5d4" type="submit" href="" class="fa fa-edit" onclick="edit()" aria-hidden="true" ></button>
                </td>
                </form>
                <td>
                    <form action = "<%=Asset.url("Action_DirectoryManagement")%>"  method = "POST" >
                        <input  required type="hidden" name ="id" value="${p.id}">
                        <button style="border: 1px solid white ; background: #f8f9fe " type="submit" href="" class="fa fa-trash text-danger" onclick="trash()" aria-hidden="true" ></button>
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
</div>

<!-- Argon Scripts -->
</body>
<script>
    function trash () {
        alert("You have successfully deleted!")
    }
    function edit () {
        alert("You have successfully edited the information !")
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