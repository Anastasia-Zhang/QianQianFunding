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
                    onclick="location.href='raising'">RAISING FINANCE
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
    <aside id="notifications">
        <ul class="tab-nav tab-nav--justified tab-nav--icon">
            <li><a class="user-alert__messages" href="#notifications__messages" data-toggle="tab"><i
                    class="zmdi zmdi-email"></i></a></li>
            <li><a class="user-alert__notifications" href="#notifications__updates" data-toggle="tab"><i
                    class="zmdi zmdi-notifications"></i></a></li>
            <li><a class="user-alert__tasks" href="#notifications__tasks" data-toggle="tab"><i
                    class="zmdi zmdi-playlist-plus"></i></a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane" id="notifications__messages">
                <div class="list-group">
                    <a href="" class="list-group-item media">
                        <div class="pull-left">
                            <img class="avatar-img" src="demo/img/profile-pics/1.jpg" alt="">
                        </div>

                        <div class="media-body">
                            <div class="list-group__heading">David Villa Jacobs</div>
                            <small class="list-group__text">Sorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Etiam mattis lobortis sapien non posuere
                            </small>
                        </div>
                    </a>

                    <a href="" class="list-group-item media">
                        <div class="pull-left">
                            <img class="avatar-img" src="demo/img/profile-pics/5.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <div class="list-group__heading">Candice Barnes</div>
                            <small class="list-group__text">Quisque non tortor ultricies, posuere elit id, lacinia purus
                                curabitur.
                            </small>
                        </div>
                    </a>

                    <a href="" class="list-group-item media">
                        <div class="pull-left">
                            <img class="avatar-img" src="demo/img/profile-pics/3.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <div class="list-group__heading">Jeannette Lawson</div>
                            <small class="list-group__text">Donec congue tempus ligula, varius hendrerit mi hendrerit
                                sit amet. Duis ac quam sit amet leo feugiat iaculis
                            </small>
                        </div>
                    </a>

                    <a href="" class="list-group-item media">
                        <div class="pull-left">
                            <img class="avatar-img" src="demo/img/profile-pics/4.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <div class="list-group__heading">Darla Mckinney</div>
                            <small class="list-group__text">Duis tincidunt augue nec sem dignissim scelerisque.
                                Vestibulum rhoncus sapien sed nulla aliquam lacinia
                            </small>
                        </div>
                    </a>

                    <a href="" class="list-group-item media">
                        <div class="pull-left">
                            <img class="avatar-img" src="demo/img/profile-pics/2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <div class="list-group__heading">Rudolph Perez</div>
                            <small class="list-group__text">Phasellus a ullamcorper lectus, sit amet viverra quam. In
                                luctus tortor vel nulla pharetra bibendum
                            </small>
                        </div>
                    </a>
                </div>

                <a href="" class="btn btn--float">
                    <i class="zmdi zmdi-plus"></i>
                </a>
            </div>

            <div class="tab-pane" id="notifications__updates">
                <div class="list-group">
                    <a href="" class="list-group-item media">
                        <div class="pull-right">
                            <img class="avatar-img" src="demo/img/profile-pics/1.jpg" alt="">
                        </div>

                        <div class="media-body">
                            <div class="list-group__heading">David Villa Jacobs</div>
                            <small class="list-group__text">Sorem ipsum dolor sit amet, consectetur adipiscing elit.
                                Etiam mattis lobortis sapien non posuere
                            </small>
                        </div>
                    </a>

                    <a href="" class="list-group-item">
                        <div class="list-group__heading">Candice Barnes</div>
                        <small class="list-group__text">Quisque non tortor ultricies, posuere elit id, lacinia purus
                            curabitur.
                        </small>
                    </a>

                    <a href="" class="list-group-item">
                        <div class="list-group__heading">Jeannette Lawson</div>
                        <small class="list-group__text">Donec congue tempus ligula, varius hendrerit mi hendrerit sit
                            amet. Duis ac quam sit amet leo feugiat iaculis
                        </small>
                    </a>

                    <a href="" class="list-group-item media">
                        <div class="pull-right">
                            <img class="avatar-img" src="demo/img/profile-pics/4.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <div class="list-group__heading">Darla Mckinney</div>
                            <small class="list-group__text">Duis tincidunt augue nec sem dignissim scelerisque.
                                Vestibulum rhoncus sapien sed nulla aliquam lacinia
                            </small>
                        </div>
                    </a>

                    <a href="" class="list-group-item media">
                        <div class="pull-right">
                            <img class="avatar-img" src="demo/img/profile-pics/2.jpg" alt="">
                        </div>
                        <div class="media-body">
                            <div class="list-group__heading">Rudolph Perez</div>
                            <small class="list-group__text">Phasellus a ullamcorper lectus, sit amet viverra quam. In
                                luctus tortor vel nulla pharetra bibendum
                            </small>
                        </div>
                    </a>
                </div>
            </div>


        </div>
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
                <li><a href="/project/manageProject?id=${username}"><i class="zmdi zmdi-format-underlined"></i>My Project</a></li>
                <li><a href="/project/myInvest?username=${username}"><i class="zmdi zmdi-widgets"></i>My Invest</a></li>

            </ul>
        </div>
    </aside>

    <section id="content">


        <!--项目概要卡片-->
        <div id="content__grid" data-columns>


            <c:forEach var="projects" items="${investProject}">



                <div class="card" onclick="javascript:location.href='project_info?projectId='+ '${projects.projectId}'">
                    <div class="list-group">
                        <div class="card__header card__header--img"
                             style="background-image: url(${projects.projectImg}); height: 250px;"></div>
                        <div class="card__header">
                            <h2>
                                    ${projects.projectHead}

                            </h2>
                            <p style="margin-bottom: -15px">${projects.projectIntro}</p>
                        </div>


                        <div class="list-group-item">
                                <%--<div class="list-group__heading m-b-5">HTML5 Validation Report</div>--%>
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" style="width: ${projects.projectProgress}%">
                                    <span class="sr-only">${projects.projectProgress}% Complete (success)</span>
                                </div>
                            </div>

                        </div>
                        <ul class="tab-nav tab-nav--justified tab-nav--icon">
                            <li class="active">
                                <a class="col-sx-4" href="#tab-1" data-toggle="tab">
                                    <p class="ftP">$ ${projects.projectInvested} </p>
                                    <p class="scP">Fundraising</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-2" data-toggle="tab">
                                    <p class="ftP">${projects.projectInvestors}</p>
                                    <p class="scP">Supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">Progress</p>
                                </a>
                            </li>
                        </ul>


                    </div>
                </div>

            </c:forEach>

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

<!-- jQuery -->
<script src="../js/jquery.js"></script>

<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

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
