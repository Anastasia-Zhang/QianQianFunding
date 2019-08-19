<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<!--[if IE 9 ]>
<html class="ie9"><![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>QianQian</title>



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
                <li><a href="/project/manageProject?id=${username}"><i class="zmdi zmdi-format-underlined"></i>My Project</a></li>
                <li><a href="/project/myInvest?username=${username}"><i class="zmdi zmdi-widgets"></i>My Invest</a></li>

            </ul>
        </div>
    </aside>

    <section id="content">
        <header class="content__header">
            <h2>${project.projectHead}
                <small>Web/UI Developer,13.5 2018</small>
            </h2>
        </header>

        <div class="card profile">
            <div class="profile__img">
                <img src="${project.projectImg}" alt="">
            </div>

            <div class="profile__info">
                <span class="list-group__attrs">
                    <span>#Messages</span>
                    <span>#</span>
                </span>
                <p> ${project.projectIntro}"</p>


                <div class="progress m-b-10">

                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"
                         aria-valuemin="0" aria-valuemax="100" style="width: ${raised}%"></div>
                </div>

                <div class="card widget-pie-grid">
                    <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                        <div class="chart-pie" data-percent="${raised}" data-pie-size="80">
                            <span class="chart-pie__value">${raised}</span>
                        </div>
                        <div class="widget-pie-grid__title">Raised<br></div>
                    </div>
                    <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                        <div class="chart-pie" data-percent="${days_left}" data-pie-size="80">
                            <span class="chart-pie__value">${days_left}</span>
                        </div>
                        <div class="widget-pie-grid__title">Days left</div>
                    </div>
                    <div class="col-xs-4 col-sm-6 col-md-4 widget-pie-grid__item">
                        <div class="chart-pie" data-percent="${target}" data-pie-size="80">
                            <span class="chart-pie__value">${target}</span>
                        </div>
                        <div class="widget-pie-grid__title">Target</div>
                    </div>

                </div>

                <button class="btn btn-success"  onclick="location.href='investPage?id=${projectId}'"
                        style="height: 40px; width: 150px; float: right; margin-right: 50px">Invest now
                </button>


            </div>
        </div>


        <div id="content__grid" data-columns>

            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>Raised
                    </h2>
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


        </div>

        <div class="card">


            <div class="card__body">

                <div class="tab">
                    <ul class="tab-nav">
                        <li class="active"><a href="#tab-home" data-toggle="tab">Idea</a></li>
                        <li><a href="#tab-profile" data-toggle="tab">Team</a></li>
                        <li><a href="#tab-message" data-toggle="tab">Plan</a></li>
                        <li><a href="#tab-setting" data-toggle="tab">Discuss</a></li>
                    </ul>

                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-home">

                                ${project.projectDetail}
                            <div class="card">
                                <div class="card__body">
                                    <div class="row">
                                        <div>
                                            <div class="embed-responsive embed-responsive-16by9">
                                                <iframe class="embed-responsive-item"
                                                        src="${project.projectVideo}"></iframe>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="tab-profile">

                            <c:forEach var="team" items="${team}">
                                <div class="card profile">
                                    <div class="profile__img">
                                        <img src="${team.image}" alt="">

                                    </div>

                                    <div class="profile__info">
                                        <p>${team.intro}</p>
                                    </div>
                                </div>
                            </c:forEach>


                        </div>
                        <div class="tab-pane" id="tab-message">
                            <p>Etiam rhoncus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Cras id
                                dui. Curabitur turpis.
                                Etiam ut purus mattis mauris sodales aliquam. Aenean viverra rhoncus pede. Nulla sit
                                amet est. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Praesent ac
                                sem eget est egestas volutpat.
                                Cras varius. Morbi mollis tellus ac sapien. In enim justo, rhoncus ut, imperdiet a,
                                venenatis vitae, justo. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel,
                                lacus. Fusce vel dui.Morbi mattis ullamcorper velit. Etiam rhoncus. Phasellus leo dolor,
                                tempus non, auctor et, hendrerit quis, nisi. Cras id dui. Curabitur turpis.
                                Etiam ut purus mattis mauris sodales aliquam. Aenean viverra rhoncus pede. Nulla sit
                                amet est. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Praesent ac
                                sem eget est egestas volutpat.
                                Cras varius. Morbi mollis tellus ac sapien. In enim justo, rhoncus ut, imperdiet a,
                                venenatis vitae, justo. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel,
                                lacus. Fusce vel dui.</p>
                        </div>
                        <div class="tab-pane" id="tab-setting">
                            <div class="wall__comments">

                                <div class="wall__comments__lists">
                                    <div class="media">
                                        <a href="" class="pull-left">
                                            <img src="../img/profile-pics/5.jpg" alt="" class="avatar-img">
                                        </a>

                                        <div class="media-body">
                                            <a href="">David Nathan</a>
                                            <small class="m-l-10">3 mins ago...</small>
                                            <p>Maecenas dignissim in neque id commodo. Nam pretium a tortor a convallis.
                                                Curabitur in arcu quis nulla aliquam condimentum. Morbi eu cursus diam,
                                                vitae tristique dui.</p>

                                            <div class="actions">
                                                <div class="dropdown">
                                                    <a href="" data-toggle="dropdown"><i
                                                            class="zmdi zmdi-more-vert"></i></a>

                                                    <ul class="dropdown-menu pull-right">
                                                        <li><a href="">Report</a></li>
                                                        <li><a href="">Delete</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="media">
                                        <a href="" class="pull-left">
                                            <img src="../img/profile-pics/4.jpg" alt="" class="avatar-img">
                                        </a>

                                        <div class="media-body">
                                            <a href="">Sam Anderson</a>
                                            <small>3 mins ago...</small>
                                            <p>Curabitur in arcu quis nulla aliquam condimentum.</p>

                                            <div class="actions">
                                                <div class="dropdown">
                                                    <a href="" data-toggle="dropdown"><i
                                                            class="zmdi zmdi-more-vert"></i></a>

                                                    <ul class="dropdown-menu pull-right">
                                                        <li><a href="">Report</a></li>
                                                        <li><a href="">Delete</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <form class="wall__comments__input">
                                    <textarea class="textarea-autosize" placeholder="Write something..."></textarea>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </section>


</section>


<!-- Javascript Libraries -->

<!-- jQuery -->
<script src="../js/jquery.js"></script>

<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>




<!-- Salvattore -->
<script src="../js/salvattore.js"></script>



<!-- Sparkline Charts -->
<script src="../js/jquery.sparkline/jquery.sparkline.js"></script>

<!-- EasyPie Charts -->
<script src="../js/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

<![endif]-->
<!-- Demo Only -->
<script src="demo/js/flot-charts/curved-line.js"></script>
<script src="demo/js/flot-charts/line.js"></script>
<script src="../js/easy-pie-charts.js"></script>
<script src="demo/js/misc.js"></script>

<script src="../js/sparkline-charts.js"></script>

<!--<script src="demo/js/calendar.js"></script>-->

<!-- Site Functions & Actions -->
<script src="js/app.min.js"></script>
</body>
</html>
