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
                    <a href="index_after_login.html"><i class="zmdi zmdi-home"></i> Home</a>
                </li>
                <li><a href="/project/manageProject?id=${username}"><i class="zmdi zmdi-format-underlined"></i>My Project</a></li>
                <li><a href="/project/myInvest?username=${username}"><i class="zmdi zmdi-widgets"></i>My Invest</a></li>

            </ul>
        </div>
    </aside>

    <section id="content">
        <div class="card">
            <div class="card__body">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="../img/carousel/c-1.jpg" alt="">
                            <div class="carousel-caption">
                                <h3>First Slide Label</h3>
                                <p>Some sample text goes here...</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../img/carousel/c-2.jpg" alt="">
                        </div>
                        <div class="item">
                            <img src="../img/carousel/c-3.jpg" alt="">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="zmdi zmdi-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="zmdi zmdi-chevron-right"></span>
                    </a>
                </div>
            </div>
        </div>
        <!--项目种类导航栏-->
        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>Popular PROJECT </h1>
            </div>

            <div class="card__body">
                <div class="tab-wizard">
                    <ul class="tab-nav tab-nav--centered tab-wizard__nav">
                        <li><a href="#tab-wizard-1" data-toggle="tab">Popular</a></li>
                        <li><a href="#tab-wizard-2" data-toggle="tab">Community</a></li>
                        <li><a href="#tab-wizard-3" data-toggle="tab">Art</a></li>
                        <li><a href="#tab-wizard-4" data-toggle="tab">Foot</a></li>
                        <li><a href="#tab-wizard-5" data-toggle="tab">Publishing</a></li>
                        <li><a href="#tab-wizard-6" data-toggle="tab">Other</a></li>

                    </ul>

                </div>
            </div>
        </div>
        <!--项目概要卡片-->

        <div class="content__grid2" data-columns>

            <c:forEach var="projects" items="${communityProject}">
                <div class="card"
                     onclick="javascript:location.href='project/project_info?projectId='+ '${projects.projectId}'">
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
                                <div class="progress-bar" role="progressbar"
                                     style="width: ${projects.projectProgress}%">
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
                                    <p class="ftP">${projects.projectFollow}</p>
                                    <p class="scP">supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">progress</p>
                                </a>
                            </li>
                        </ul>


                    </div>
                </div>
            </c:forEach>

        </div>

        <%--公益--%>


        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>Community PROJECT </h1>
            </div>
        </div>
        <div class="content__grid2" data-columns>

            <c:forEach var="projects" items="${communityProject}">
                <div class="card"
                     onclick="javascript:location.href='project/project_info?projectId='+ '${projects.projectId}'">
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
                                <div class="progress-bar" role="progressbar"
                                     style="width: ${projects.projectProgress}%">
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
                                    <p class="ftP">${projects.projectFollow}</p>
                                    <p class="scP">supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">progress</p>
                                </a>
                            </li>
                        </ul>


                    </div>
                </div>
            </c:forEach>

        </div>
        <%--艺术--%>
        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>ART PROJECT </h1>
            </div>
        </div>
        <div class="content__grid2" data-columns>
            <c:forEach var="projects" items="${artProject}">


                <div class="card"
                     onclick="javascript:location.href='project/project_info_afterlogin?projectId='+'${projects.projectId}'">
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
                                <div class="progress-bar" role="progressbar"
                                     style="width: ${projects.projectProgress}%">
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
                                    <p class="ftP">${projects.projectFollow}</p>
                                    <p class="scP">supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">progress</p>
                                </a>
                            </li>
                        </ul>


                    </div>
                </div>

            </c:forEach>
        </div>
        <%--食品--%>
        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>Food PROJECT </h1>
            </div>
        </div>
        <div class="content__grid2" data-columns>

            <c:forEach var="projects" items="${foodProject}">
                <div class="card"
                     onclick="javascript:location.href='project/project_info_afterlogin?projectId='+ '${projects.projectId}'">
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
                                <div class="progress-bar" role="progressbar"
                                     style="width: ${projects.projectProgress}%">
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
                                    <p class="ftP">${projects.projectFollow}</p>
                                    <p class="scP">supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">progress</p>
                                </a>
                            </li>
                        </ul>


                    </div>
                </div>
            </c:forEach>

        </div>
        <%--食品--%>
        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>Publishing PROJECT </h1>
            </div>
        </div>
        <div class="content__grid2" data-columns>

            <c:forEach var="projects" items="${publishingProject}">
                <div class="card"
                     onclick="javascript:location.href='project/project_info_afterlogin?projectId='+ '${projects.projectId}'">
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
                                <div class="progress-bar" role="progressbar"
                                     style="width: ${projects.projectProgress}%">
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
                                    <p class="ftP">${projects.projectFollow}</p>
                                    <p class="scP">supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">progress</p>
                                </a>
                            </li>
                        </ul>


                    </div>
                </div>
            </c:forEach>

        </div>
        <%--其他--%>
        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>Other PROJECT </h1>
            </div>
        </div>
        <div class="content__grid2" data-columns>

            <c:forEach var="projects" items="${otherProject}">
                <div class="card"
                     onclick="javascript:location.href='project/project_info_afterlogin?projectId='+ '${projects.projectId}'">
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
                                <div class="progress-bar" role="progressbar"
                                     style="width: ${projects.projectProgress}%">
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
                                    <p class="ftP">${projects.projectFollow}</p>
                                    <p class="scP">supporter</p>
                                </a>
                            </li>
                            <li>
                                <a class="col-xs-4" href="#tab-3" data-toggle="tab">
                                    <p class="ftP">${projects.projectProgress}%</p>
                                    <p class="scP">progress</p>
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





<!-- Salvattore -->
<script src="../js/salvattore.js"></script>


<!-- Demo Only -->


<!--<script src="demo/js/calendar.js"></script>-->

<!-- Site Functions & Actions -->
<script src="../js/app.js"></script>
<script src="../js/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
</body>
</html>
