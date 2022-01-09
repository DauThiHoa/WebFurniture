<%@ page import="vn.edu.hcmuaf.fit.webfurniture.Asset" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<% List<ProductDetails> list =(List<ProductDetails> ) request.getParameter("list"); %>--%>
<!-- Sidenav -->
<ul class="navbar-nav">

                        <!-- lINK VE TRANG CHU-->
                        <li class="nav-item">
                            <a class="nav-link active" href="<%= Asset.url("ProductDetailsList")%>">
                                <img src="<%= Asset.url("img.png")%>" style="height: 15px ; width: 15px ; margin-right: 18px">
                                <span class="nav-link-text">HomePage</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="<%= Asset.url("../WebFurniture_war_exploded/manage/dashboard.jsp")%>">
                                <i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i>
                                <span class="nav-link-text">Dashboard</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= Asset.url("QuanTri/Admin/examples/DirectoryManagement.jsp")%>">
                                <i class="fa fa-server" style="color: darkorange" aria-hidden="true"></i>
                                <span class="nav-link-text">Directory Management</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= Asset.url("QuanTri/Admin/examples/InterfaceManagement.jsp")%>">
                                <i class="fa fa-list-alt" aria-hidden="true"></i>
                                <span class="nav-link-text">Interface Management</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= Asset.url("QuanTri/Admin/examples/profile.jsp")%>">
                                <i class="fa fa-user-circle" style="color: lightsalmon" aria-hidden="true"></i>
                                <span class="nav-link-text">Profile</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= Asset.url("QuanTri/Admin/examples/login.jsp")%>">
                                <i class="fa fa-key" style="color: lightcoral" aria-hidden="true"></i>
                                <span class="nav-link-text">Login</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%= Asset.url("QuanTri/Admin/examples/register.jsp")%>">
                                <i class="fa fa-id-card" style="color: springgreen" aria-hidden="true"></i>
                                <span class="nav-link-text">Register</span>
                            </a>
                        </li>

                </ul>