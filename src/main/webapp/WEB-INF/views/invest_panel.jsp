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

            <button class="btn btn-success" style="height: 40px;margin-right: 30px"
                    onclick="location.href='project/raising'">RAISING FINANCE
            </button>

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
                    <a href=""><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-settings"></i> Settings</a>
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

<section id="main" style="padding:  0 40px 20px 20px;">


    <section id="content" style="width: 100%">

        <div class="content--boxed">


            <div class="row pricing-table">
                <div class="card">

                    <div class="card__body">
                        <h2>Thanks for your support</h2>
                        <p>

                            Thanks for your support, you will receive our return. This support will help our dream fly
                            higher and further.</p>

                    </div>
                </div>

                <c:forEach var="item" items="${item}">
                    <div class="col-sm-4">
                        <div class="pricing-table__item">
                            <div class="pricing-table__header">
                                <h2>$ ${item.amount}
                                    <small></small>
                                </h2>
                            </div>

                            <div class="pricing-table__name">${item.head}</div>

                            <div class="pricing-table__body">
                                <div class="pricing-table__list">
                                        ${item.detail}
                                </div>

                            </div>

                            <div class="pricing-table__footer">
                                <a href="/invest?amount=${item.amount}&projectId=${projectId}"><i
                                        class="zmdi zmdi-check"></i></a>
                            </div>
                        </div>
                    </div>

                </c:forEach>


                <div class="col-sm-4">
                    <div class="pricing-table__item">
                        <form action="/invest">
                            <div class="pricing-table__header">


                                <h2>
                                    <input name="amount" style="height: 50px" type="text" class="form-control input-mask"
                                           data-mask="000.000.000.000"
                                           placeholder="Any Amount">

                                </h2>
                            </div>

                            <div class="pricing-table__name">Any amount</div>

                            <div class="pricing-table__body">
                                <div class="pricing-table__list">
                                    Thanks for your support, you will receive our return. This support will help our
                                    dream fly
                                    higher and further.
                                </div>

                            </div>

                            <input name="projectId" type="hidden" value="${projectId}">

                            <div class="pricing-table__footer">
                                <button class="btn btn--light btn--icon m-t-15"><i class="zmdi zmdi-plus"></i></button>
                            </div>
                        </form>

                    </div>
                </div>


            </div>
        </div>

    </section>


</section>


<!-- jQuery -->
<script src="../js/jquery.js"></script>


<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

<!-- Simple File Input -->
<script src="../js/fileinput/fileinput.min.js"></script>

<!-- Malihu ScrollBar -->
<script src="../js/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Bootstrap Notify -->
<script src="vendors/bower_components/remarkable-bootstrap-notify/dist/bootstrap-notify.min.js"></script>

<!-- Moment -->
<script src="vendors/bower_components/moment/min/moment.min.js"></script>

<!-- FullCalendar -->
<script src="vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>


<!-- Salvattore -->
<script src="../js/salvattore.js"></script>


<!-- Demo Only -->
<script src="demo/js/flot-charts/curved-line.js"></script>
<script src="demo/js/flot-charts/line.js"></script>
<script src="demo/js/easy-pie-charts.js"></script>
<script src="demo/js/misc.js"></script>

<script src="demo/js/sparkline-charts.js"></script>

<!--<script src="demo/js/calendar.js"></script>-->

<!-- Site Functions & Actions -->
<script src="../js/app.js"></script>
<script src="../js/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
</body>
</html>
