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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title> ADMIN - DIRECTORY MANAGEMENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- Favicon -->
    <link rel="icon" href="<%= Asset.url("QuanTri/Admin/assets/img/brand/favicon.png")%>" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <!-- Page plugins -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Page plugins -->
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
                <img src="<%= Asset.url("QuanTri/Admin/assets/img/brand/blue.png")%>" class="navbar-brand-img" alt="...">
            </a>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
<%--                <ul class="navbar-nav">--%>

                <jsp:include page="manage/layout/nav.jsp"></jsp:include>
<%--                    <!-- lINK VE TRANG CHU-->--%>
<%--&lt;%&ndash;                    <li class="nav-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <a class="nav-link active" href="<%= Asset.url("Dashboard")%>">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <img src="img.png">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <span class="nav-link-text">HomePage</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </li>&ndash;%&gt;--%>

<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link active" href="Dashboard">--%>
<%--                            <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Dashboard</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="QuanTri/Admin/examples/DirectoryManagement.jsp">--%>
<%--                            <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Directory Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="Information">--%>
<%--                            <i class="fa fa-list-alt" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Interface Management</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="Profile">--%>
<%--                            <i class="fa fa-user-circle" style="color: lightsalmon" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Profile</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/WebFurniture_war_exploded/login">--%>
<%--                            <i class="fa fa-key" style="color: lightcoral" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Login</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="nav-item">--%>
<%--                        <a class="nav-link" href="/WebFurniture_war_exploded/controllerRegister">--%>
<%--                            <i class="fa fa-id-card" style="color: springgreen" aria-hidden="true"></i>--%>
<%--                            <span class="nav-link-text">Register</span>--%>
<%--                        </a>--%>
<%--                    </li>--%>

<%--                </ul>--%>
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
                        <span aria-hidden="true">??</span>
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
                                            <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/examples/icon/img_1.png")%>"
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
                                            <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/examples/icon/img_2.png")%>"
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
                                            <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/examples/icon/img_3.png")%>"
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
                                            <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/assets/img/theme/team-4.jpg")%>"
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
                                            <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/examples/icon/img_5.png")%>"
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
                    <img alt="Image placeholder" src="<%= Asset.url("QuanTri/Admin/assets/img/theme/team-4.jpg")%>">
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
                        <h6 class="h2 text-white d-inline-block mb-0">Product</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i></a></li>
                                <li class="breadcrumb-item"><a href="#">Directory Management / Product</a></li>
                            </ol>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <div class="container">


    </div>



    <div class="button">
        <a class="nav-link active" href="<%= Asset.url("addProduct")%>">
            <button class="add">
                <i class="fa fa-plus-circle" aria-hidden="true"></i>
                Add
            </button>
        </a>
    </div>

    <div class="tab" >
        <table class="table table-hover table-responsive table-bordered" id="productdetails-table" style="table-layout: fixed ; width: 100%">
            <tr>
                <!-- San pham khong ban bi ly do gi -->
                <th class="TieuDe">Numerical order</th>
                <th  style="text-align: center" class="TieuDe">Category</th>
                <th  style="text-align: center" class="TieuDe">Image</th>
                <th  style="text-align: center" class="TieuDe">Title</th>
                <th  style=" text-align: center ; overflow: hidden " class="TieuDe">Description</th>
                <th  style="text-align: center" class="TieuDe">Price</th>
                <th  style="text-align: center" class="TieuDe">PriceSell</th>
                <th  style="text-align: center" class="TieuDe">Quantity</th>
                <th  style="text-align: center" class="TieuDe">Status</th>

                <th  style=" text-align: center ; overflow: hidden " class="TieuDe">Color</th>
                <th  style="text-align: center" class="TieuDe">Size</th>
                <th  style="text-align: center" class="TieuDe">Weight</th>
                <th  style="text-align: center" class="TieuDe">Material</th>
                <th  style="text-align: center" class="TieuDe">Design</th>

                <th class="TieuDe">Change</th>
                <th class="TieuDe">Erase</th>
            </tr>
            <jsp:useBean id="list" scope="request" type="java.util.List"/>
            <% int i = 1 ;%>
            <c:forEach items="${list}" var="item" >
            <tr>
                <form action = "<%=Asset.url("edit")%>"  method = "POST" >
                <td style="text-align: center"><%= i++ %></td>
                <td ><input  style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="type" value="HomePage"></td>
                <td ><img src="${item.linkImage}" class="image" style="width: 65px ; height: 65px;"/></td>
                <td ><input  style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="name" value="${item.name}"></td>
                <td style=" height: 100px; overflow : hidden "><textarea style=" height: 100px ; text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="description"  rows="50" cols="50">${item.description}</textarea></td>
                <td ><input type="text" name ="priceNew" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" value="${item.priceNew}"></td>
                <td ><input type="text" name ="priceOld" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.priceOld}"></td>
                <td style="text-align: center"><input type="text" name ="quantity" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.quantity}"></td>
                <td ><input type="text" name ="status" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.status}"></td>

                    <td ><input type="text" name ="color" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" value="${item.color}"></td>
                    <td ><input type="text" name ="size" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.size}"></td>
                    <td style="text-align: center"><input type="weight" name ="quantity" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.weight}"></td>
                    <td ><input type="text" name ="material" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.material}"></td>
                    <td ><textarea style=" height: 100px ; text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="design"  rows="50" cols="50">${item.design}</textarea></td>

                <td>
                        <input type="hidden" name ="id" value="${item.id}">
                        <button style="border: 1px solid white ; background: #f8f9fe  ; color: #1fb5d4" type="submit" href="" class="fa fa-edit" onclick="edit()" aria-hidden="true" ></button>
                </td>
                </form>
<%--                <td><i class="fa fa-trash" aria-hidden="true"></i></td>--%>
<%--                <td> <a href="" class="btn btn-sn btn-prinary"><i class="fa fa-edit"></i></a></td>--%>
                <td>
                    <form action = "<%=Asset.url("action")%>"  method = "POST" >
                        <input type="hidden" name ="id" value="${item.id}">
                        <button style="border: 1px solid white ; background: #f8f9fe " type="submit" href="" class="fa fa-trash text-danger" onclick="trash()" aria-hidden="true" ></button>
                    </form>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>


    <!-- Footer -->
    <footer class="footer pt-0" >
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

<script type="text/javascript" src="<%= Asset.url("../layout/script.jsp")%>"></script>
<%--<script>--%>
    <%--var dt;--%>
    <%--$(document).ready(function () {--%>
    <%--    dt = $('table#productdetails-table').DataTable({--%>
    <%--           language:{--%>
    <%--               "url": "<%= Asset.url("vendor/dt/lang/vi.json")%>"--%>
    <%--           },--%>
    <%--        }--%>
    <%--    );--%>
    <%--} );--%>
<%--</script>--%>
<script type="text/javascript" src="<%= Asset.url("vendor/dt/datatables.min.js")%>"></script>
<script type="text/javascript" href="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" href="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<script>
    function trash () {
        alert("B???n ???? x??a s???n ph???m th??nh c??ng !")
    }
    function edit () {
        alert("B???n ???? s???a s???n ph???m th??nh c??ng !")
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