<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link rel="icon" href="../assets/img/brand/favicon.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="../assets/vendor/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
    <!-- Argon CSS -->
    <link rel="stylesheet" href="../assets/css/argon.css?v=1.2.0" type="text/css">
    <link rel="stylesheet" href="DirectoryManagement.css">
    <link rel="stylesheet" href="InterfaceManagement.css">
    <link rel="stylesheet" href="ListOfPermissions.css">
    <link rel="stylesheet" href="../../../stylesheets/font-awesome-4.7.0/font-awesome-4.7.0/css/font-awesome.min.css">
</head>

<body>
<!-- Sidenav -->
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
    <div class="scrollbar-inner">
        <!-- Brand -->
        <div class="sidenav-header  align-items-center">
            <a class="navbar-brand" href="javascript:void(0)">
                <img src="../assets/img/brand/blue.png" class="navbar-brand-img" alt="...">
            </a>
        </div>
        <div class="navbar-inner">
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Nav items -->
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../../../manage/dashboard.jsp">
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
                        <a class="nav-link" href="InterfaceManagement.jsp">
                            <i class="fa fa-list-alt" aria-hidden="true"></i>
                            <span class="nav-link-text">Interface Management</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="profile.jsp">
                            <i class="fa fa-user-circle" style="color: lightsalmon" aria-hidden="true"></i>
                            <span class="nav-link-text">Profile</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active " href="ListOfPermissions.jsp">
                            <img class="anh" src="icon/article.png"/>
                            <span class="nav-link-text">List Of Permissions</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">
                            <i class="fa fa-key" style="color: lightcoral" aria-hidden="true"></i>
                            <span class="nav-link-text">Login</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register.jsp">
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
    <nav class="navbar navbar-top navbar-expand navbar-dark bg-default border-bottom">
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
                                            <img alt="Image placeholder" src="icon/img_1.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">John Snow</h4>
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
                                            <img alt="Image placeholder" src="icon/img_2.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">John Snow</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>3 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">A new issue has been reported for web furniture.</p>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="list-group-item list-group-item-action">
                                    <div class="row align-items-center">
                                        <div class="col-auto">
                                            <!-- Avatar -->
                                            <img alt="Image placeholder" src="icon/img_3.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">John Snow</h4>
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
                                            <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">John Snow</h4>
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
                                            <img alt="Image placeholder" src="icon/img_5.png"
                                                 class="avatar rounded-circle">
                                        </div>
                                        <div class="col ml--2">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <h4 class="mb-0 text-sm">John Snow</h4>
                                                </div>
                                                <div class="text-right text-muted">
                                                    <small>3 hrs ago</small>
                                                </div>
                                            </div>
                                            <p class="text-sm mb-0">A new issue has been reported for web furniture.</p>
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
                    <img alt="Image placeholder" src="../assets/img/theme/team-4.jpg">
                  </span>
                                <div class="media-body  ml-2  d-none d-lg-block">
                                    <span class="mb-0 text-sm  font-weight-bold">John Snow</span>
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
    <div class="header bg-primary pb-6">
        <div class="container-fluid">
            <div class="header-body">
                <div class="row align-items-center py-4">
                    <div class="col-lg-6 col-7">
                        <h6 class="h2 text-white d-inline-block mb-0">List Of Permissions</h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" style="color: #e4606d" aria-hidden="true"></i></a></li>
                                <li class="breadcrumb-item"><a href="#">Profile / List Of Permissions</a></li>
                            </ol>
                        </nav>
                    </div>
                    <div class="col-lg-6 col-5 text-right">
                        <a href="#" class="btn btn-sm btn-neutral">New</a>
                        <a href="#" class="btn btn-sm btn-neutral">Filters</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container">

        <div class="dropdown">

            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">

                Action <span class="caret"></span>

            </button>

            <ul class="dropdown-menu">

                <li class="dropdown-menuLi"><a href="#"> Erase </a></li>
                <li class="dropdown-menuLi"><a href="#"> Revision </a></li>
                <li class="dropdown-menuLi"><a href="#"> Insert </a></li>
                <li class="dropdown-menuLi"><a href="#"> Change </a></li>

            </ul>
        </div>

    </div>

    <div class="container">

        <div class="dropdown">

            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">

                Search by <span class="caret"></span>

            </button>
            <ul class="dropdown-menu">

                <li class="dropdown-menuLi"><a href="#"> Numerical order </a></li>
                <li class="dropdown-menuLi"><a href="#"> Category </a></li>
                <li class="dropdown-menuLi"><a href="#"> Image </a></li>
                <li class="dropdown-menuLi"><a href="#"> Modules </a></li>
                <li class="dropdown-menuLi"><a href="#"> Action </a></li>

            </ul>
        </div>

    </div>

    <div class="container">

        <div class="dropdown">

            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">

                Display number <span class="caret"></span>

            </button>
            <ul class="dropdown-menu">

                <li class="dropdown-menuLi"><a href="#"> One </a></li>
                <li class="dropdown-menuLi"><a href="#"> Two </a></li>
                <li class="dropdown-menuLi"><a href="#"> Three </a></li>
                <li class="dropdown-menuLi"><a href="#"> Four </a></li>
                <li class="dropdown-menuLi"><a href="#"> Five </a></li>
                <li class="dropdown-menuLi"><a href="#"> Six </a></li>
                <li class="dropdown-menuLi"><a href="#"> Seven </a></li>
                <li class="dropdown-menuLi"><a href="#"> Eight </a></li>

            </ul>
        </div>

    </div>

    <a class="nav-link active" href="UserConfiguration.jsp">
        <button class="add">
            <i class="fa fa-plus-circle" aria-hidden="true"></i>
            Add
        </button>
    </a>

    <div class="tab">
        <table class="table">
            <tr>
                <th><input type="checkbox" name="sport" value="check" id="checkBox"></th>
                <th class="TieuDe">ID</th>
                <th class="TieuDe">Full name</th>
                <th class="TieuDe">Avatar</th>
                <th class="TieuDe">Power</th>
                <th class="TieuDe">Display</th>
                <th class="TieuDe">Change</th>
                <th class="TieuDe">Erase</th>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    1"><br></td>
                <td> Join</td>
                <td><img src="icon/img.png" class="image"/></td>
                <td class="Owner">Owner</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    2"><br></td>
                <td>Doue</td>
                <td><img src="icon/img_1.png" class="image"/></td>
                <td class="full">Full User Rights</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    3"><br></td>
                <td>Tom Hiddleston</td>
                <td><img src="icon/img_2.png" class="image"/></td>
                <td class="full">Full User Rights</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    4"><br></td>
                <td>Christopher</td>
                <td><img src="icon/img_3.png" class="image"/></td>
                <td class="Owner">Owner</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    5"><br></td>
                <td>Elizabeth</td>
                <td><img src="icon/img_4.png" class="image"/></td>
                <td class="Restricted">Restricted users</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    6"><br></td>
                <td>David</td>
                <td><img src="icon/img_5.png" class="image"/></td>
                <td class="full">Full User Rights</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    7"><br></td>
                <td>Matthew</td>
                <td><img src="icon/img_6.png" class="image"/></td>
                <td class="Restricted">Restricted users</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    8"><br></td>
                <td>Jennifer</td>
                <td><img src="icon/img_7.png" class="image"/></td>
                <td class="Owner">Owner</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    9"><br></td>
                <td>Linda</td>
                <td><img src="icon/img_8.png" class="image"/></td>
                <td class="Restricted">Restricted users</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>
            <tr>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><input type="text" name="fname" value="                    10"><br></td>
                <td>Jessica</td>
                <td><img src="icon/img_9.png" class="image"/></td>
                <td class="Owner">Owner</td>
                <td><input type="checkbox" name="sport" value="check"></td>
                <td><i class="fa fa-edit"></i></td>
                <td><i class="fa fa-trash" aria-hidden="true"></i></td>
            </tr>

        </table>
    </div>

    <footer class="footer pt-0">
        <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6">
                <div class="copyright text-center  text-lg-left  text-muted">
                    &copy; 2021 <a href="https://www.creative-tim.com" class="font-weight-bold ml-1" target="_blank">
                    WebFurniture</a>
                </div>
            </div>
        </div>
    </footer>
</div>
</div>
<!-- Argon Scripts -->

<!-- Core -->
<script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="../assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="../assets/vendor/js-cookie/js.cookie.js"></script>
<script src="../assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
<script src="../assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
<!-- Argon JS -->
<script src="../assets/js/argon.js?v=1.2.0"></script>
</body>

</html>