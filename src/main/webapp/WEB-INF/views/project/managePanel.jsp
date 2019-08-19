<!DOCTYPE html>
<html lang="en">
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>QianQian</title>

    <!-- Vendors -->
    <!--<link href="../css/examples.css">-->

    <!-- Animate CSS -->
    <link href="../css/animate.css" rel="stylesheet">


    <!-- Material Design Icons -->
    <link href="../css/material-design-iconic-font/dist/css/material-design-iconic-font.min.css" rel="stylesheet">

    <!-- Malihu Scrollbar -->
    <link href="vendors/bower_components/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.min.css"
          rel="stylesheet">

    <!-- Full Calendar -->
    <!--<link href="vendors/bower_components/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">-->

    <!-- Site CSS -->
    <link href="../css/app.css" rel="stylesheet">

    <!-- Page loader -->
    <script src="../js/page-loader.js"></script>
</head>

<body>
<!-- Page Loader -->
<div id="page-loader">
    <div class="preloader preloader--xl preloader--light">
        <svg viewBox="25 25 50 50">
            <circle cx="50" cy="50" r="20"/>
        </svg>
    </div>
</div>

<!-- Header -->
<header id="header">
    <div class="logo">
        <a href="/test" class="hidden-xs">
            QianQian
            <small>Funding System</small>
        </a>
        <i class="logo__trigger zmdi zmdi-menu" data-mae-action="block-open" data-mae-target="#navigation"></i>
    </div>


    <ul class="top-menu">
        <li class="top-menu__trigger hidden-lg hidden-md">
            <a href=""><i class="zmdi zmdi-search"></i></a>
        </li>
        <li>

            <button class="btn btn-success" style="height: 40px;margin-right: 30px">RAISING FINANCE</button>

        </li>


        <li class="top-menu__alerts" data-mae-action="block-open" data-mae-target="#notifications" data-toggle="tab"
            data-target="#notifications__messagesm.">
            <a href=""><i class="zmdi zmdi-notifications"></i></a>
        </li>

        <li class="top-menu__profile dropdown">
            <a data-toggle="dropdown" href="">
                <img src="../img/profile-pics/1.jpg" alt="">
            </a>

            <ul class="dropdown-menu pull-right dropdown-menu--icon">
                <li>
                    <a href="profile-about.html"><i class="zmdi zmdi-account"></i> View Profile</a>
                </li>
                <li>
                </li>
                <li>
                </li>
                <li>
                    <a href="/logout"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                </li>
            </ul>
        </li>


    </ul>

    <form id="top-search" action="/project/topSearch" class="top-search">
        <input type="text" name="key" class="top-search__input" placeholder="Search for project">

        <i  id="seachButton" class="zmdi zmdi-search top-search__reset">
        </i>
    </form>
</header>

<section id="main">
    <aside id="notifications">
        <ul class="tab-nav tab-nav--justified tab-nav--icon">
            <li><a class="user-alert__messages" href="#notifications__messages" data-toggle="tab"><i
                    class="zmdi zmdi-email"></i></a></li>
            <li><a class="user-alert__notifications" href="#notifications__updates" data-toggle="tab"><i
                    class="zmdi zmdi-notifications"></i></a></li>
            <li><a class="user-alert__tasks" href="#notifications__tasks" data-toggle="tab"><i
                    class="zmdi zmdi-playlist-plus"></i></a></li>
        </ul>


    </aside>

    <aside id="navigation">
        <div class="navigation__header">
            <i class="zmdi zmdi-long-arrow-left" data-mae-action="block-close"></i>
        </div>

        <div class="navigation__toggles">
            <a href="" class="active" data-mae-action="block-open" data-mae-target="#notifications" data-toggle="tab"
               data-target="#notifications__messages">
                <i class="zmdi zmdi-email"></i>
            </a>
            <a href="" data-mae-action="block-open" data-mae-target="#notifications" data-toggle="tab"
               data-target="#notifications__updates">
                <i class="zmdi zmdi-notifications"></i>
            </a>
            <a href="" data-mae-action="block-open" data-mae-target="#notifications" data-toggle="tab"
               data-target="#notifications__tasks">
                <i class="zmdi zmdi-playlist-plus"></i>
            </a>
        </div>

        <div class="navigation__menu c-overflow">
            <ul>
                <li class="navigation__active">
                    <a href="/test"><i class="zmdi zmdi-home"></i> Home</a>
                </li>
                <li><a href="/project/manageProject?id=${username}"><i class="zmdi zmdi-format-underlined"></i>My
                    Project</a></li>
                <li><a href="/project/myInvest?username=${username}"><i class="zmdi zmdi-widgets"></i>My Invest</a></li>

            </ul>
        </div>
    </aside>

    <section id="content">


        <div id="content__grid" data-columns>
            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>Already Raised
                    </h2>
                    <div class="actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="">Refresh</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card__body">
                    <div class="widget-analytic__info">
                        <i class="zmdi zmdi-caret-up-circle"></i>
                        <h2>${project.projectInvested}</h2>
                    </div>
                    <div class="widget-analytic__chart">
                        <div class="chart-sparkline-line">9,5,6,3,9,7,5,</div>
                    </div>
                </div>
            </div>

            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>Investors
                    </h2>
                    <div class="actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="">Refresh</a></li>
                                <li><a href="">Manage</a></li>
                                <li><a href="">Settings</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card__body">
                    <div class="widget-analytic__info">
                        <i class="zmdi zmdi-caret-up-circle"></i>
                        <h2>${project.projectInvestors}</h2>
                    </div>
                    <div class="widget-analytic__chart">
                        <div class="chart-sparkline-line">2,4,6,5,6,4,5,3,7,3,6,5,9,6</div>
                    </div>
                </div>
            </div>

            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>Follow
                    </h2>
                    <div class="actions">
                        <div class="dropdown">
                            <a href="" data-toggle="dropdown"><i class="zmdi zmdi-more-vert"></i></a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="">Refresh</a></li>
                                <li><a href="">Manage</a></li>
                                <li><a href="">Settings</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card__body">
                    <div class="widget-analytic__info">
                        <i class="zmdi zmdi-caret-down-circle"></i>
                        <h2>${project.projectFollow}</h2>
                    </div>
                    <div class="widget-analytic__chart">
                        <div class="chart-sparkline-line">9,4,6,5,6,4,5,7,9,3,6,5,9</div>
                    </div>
                </div>
            </div>


            <%--<div class="card">--%>
            <%--<div class="card__header card__header--img"--%>
            <%--style="background-image: url(${project.projectImg}); height: 250px;"></div>--%>
            <%--<div class="card__header">--%>
            <%--<h2>--%>
            <%--${project.projectHead}--%>

            <%--<small>by ${project.projectUsername}on ${project.projectDate} </small>--%>
            <%--</h2>--%>
            <%--</div>--%>
            <%--<div class="card__body">--%>
            <%--<p>${project.projectIntro} </p>--%>

            <%--<a href="/project/modify?projectId=${project.projectId}" class="view-more text-left">--%>
            <%--<i class="zmdi zmdi-long-arrow-right"></i>Modify the project--%>
            <%--</a>--%>
            <%--</div>--%>


            <%--</div>--%>
        </div>

        <div class="card">
            <div class="card__header">
                <h2>Investor

                </h2>
            </div>

            <div class="card__body">
                <div class="table-responsive">
                    <table id="data-table-basic" class="table-striped">
                        <thead>
                        <tr>
                            <th data-column-id="id">Investor</th>
                            <th data-column-id="sender">Invest Amount</th>
                            <th data-column-id="received" data-order="desc">Invest Date</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="investor" items="${investor}">
                            <tr>
                                <td>${investor.username}</td>
                                <td>${investor.invested}</td>
                                <td>21.6.2018</td>
                            </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </section>
    <footer id="footer">
        Copyright &copy; 2018 PiuPiuPiu

        <ul class="footer__menu">
            <li><a href="/test">Home</a></li>
            <li><a href="/warning">Risk Waring</a></li>
            <li><a href="/project/explore">Explore</a></li>
            <li><a href="/raisingIntro">Raising</a></li>
            <li><a href="/investIntro">Invest</a></li>
        </ul>
    </footer>
</section>


<!-- Javascript Libraries -->
<!-- Javascript Libraries -->

!-- jQuery -->
<script src="../js/jquery.js"></script>

<!-- Bootgrid -->
<script src="../js/jquery.bootgrid/dist/jquery.bootgrid.min.js"></script>
<script src="../js/data-table.js"></script>

<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>


<!-- Salvattore -->
<script src="../js/salvattore.js"></script>


<!-- Sparkline Charts -->
<script src="../js/jquery.sparkline/jquery.sparkline.js"></script>


<script src="../js/sparkline-charts.js"></script>

<!-- EasyPie Charts -->
<script src="../js/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
<script src="../js/easy-pie-charts.js"></script>
</body>
</html>
