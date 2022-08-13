<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<% List<ProductDetails> list =(List<ProductDetails> ) request.getParameter("list"); %>--%>
<!-- Sidenav -->
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

    <li class="nav-item">
        <a class="nav-link active" href="<%= Asset.url("Product")%>">
            <i class="fa fa-shopping-cart" style="color: lightpink" aria-hidden="true"></i>
            <span class="nav-link-text">Product</span>
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
        <a class="nav-link" href="<%= Asset.url("controllerRegister")%>">
            <i class="fa fa-id-card" style="color: springgreen" aria-hidden="true"></i>
            <span class="nav-link-text"> Register</span>
        </a>
    </li>

</ul>