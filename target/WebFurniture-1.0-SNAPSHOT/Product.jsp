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
            </div>
        </div>
    </div>
</nav>
<!-- Main content -->
<div class="main-content" id="panel">
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
                <td ><input   required style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text"
                             name ="type" value="HomePage"></td>
                <td ><img src="${item.linkImage}" class="image" style="width: 65px ; height: 65px;"/></td>
                <td ><input   required style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="name" value="${item.name}"></td>
                <td style=" height: 100px; overflow : hidden "><textarea style=" height: 100px ; text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="description"  rows="50" cols="50">${item.description}</textarea></td>
                <td ><input  required type="text" name ="priceNew" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" value="${item.priceNew}"></td>
                <td ><input  required type="text" name ="priceOld" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.priceOld}"></td>
                <td style="text-align: center"><input type="text" name ="quantity" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.quantity}"></td>
                <td ><input  required type="text" name ="status" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.status}"></td>

                    <td ><input  required type="text" name ="color" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" value="${item.color}"></td>
                    <td ><input  required type="text" name ="size" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.size}"></td>
                    <td style="text-align: center">
                        <input  required type="weight" name ="quantity" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.weight}">
                    </td>
                    <td ><input  required type="text" name ="material" style="text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe"  value="${item.material}"></td>
                    <td ><textarea style=" height: 100px ; text-align: center ; border: 1px solid #f8f9fe ; background: #f8f9fe" type="text" name ="design"  rows="50" cols="50">${item.design}</textarea></td>

                <td>
                        <input  required type="hidden" name ="id" value="${item.id}">
                        <button style="border: 1px solid white ; background: #f8f9fe  ; color: #1fb5d4" type="submit"
                                href="" class="fa fa-edit" onclick="edit()" aria-hidden="true" ></button>
                </td>
                </form>
<%--                <td><i class="fa fa-trash" aria-hidden="true"></i></td>--%>
<%--                <td> <a href="" class="btn btn-sn btn-prinary"><i class="fa fa-edit"></i></a></td>--%>
                <td>
                    <form action = "<%=Asset.url("action")%>"  method = "POST" >
                        <input  required type="hidden" name ="id" value="${item.id}">
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
                    &copy; 2021 <a href="<%= Asset.url("ProductDetailsList")%>" class="font-weight-bold ml-1" target="_blank">
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
        alert("You have successfully deleted the product !")
    }
    function edit () {
        alert("You have successfully repaired the product !")
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