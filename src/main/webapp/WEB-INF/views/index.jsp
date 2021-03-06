<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

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
        <a href="#" class="hidden-xs">
            QianQian
            <small>Funding System</small>
        </a>
        <i class="logo__trigger zmdi zmdi-menu" data-mae-action="block-open" data-mae-target="#navigation"></i>
    </div>

    <form id="top-search" action="/project/topSearch" class="top-search">
    <input type="text" name="key" class="top-search__input" placeholder="Search for project">

    <i  id="seachButton" class="zmdi zmdi-search top-search__reset">
    </i>
    </form>

    <%--<ul class="top-menu">--%>
        <%--<li class="top-menu__trigger hidden-lg hidden-md">--%>
            <%--<a href=""><i class="zmdi zmdi-search"></i></a>--%>
        <%--</li>--%>

        <div class="btn-demo" style="margin-top: 5px">
            <button class="btn btn-primary" style="height: 40px" onclick="location.href='/registerPage'">Join</button>
            <button class="btn btn-success" style="height: 40px" onclick="location.href='/loginPage'">Log in</button>
        </div>
    </ul>

    <form class="top-search" action="/loginPage" name="topSearch">
        <input name="key" type="text" class="top-search__input" placeholder="Search for project">
        <i class="zmdi zmdi-search top-search__reset"></i>

    </form>
</header>

<section id="main">


    <aside id="navigation">
        <div class="navigation__header">
            <i class="zmdi zmdi-long-arrow-left" data-mae-action="block-close"></i>
        </div>

        <div class="navigation__toggles">
            <button onclick="location.href='raisingIntro'" class="btn btn-info" style="width: 150px;margin-bottom: 5px">
                RAISING FINANCE
            </button>
            <br>
            <button onclick="location.href='investIntro'" class="btn btn-warning" style="width: 150px; margin-top: 5px">
                INVEST
            </button>
        </div>

        <div class="navigation__menu c-overflow">
            <ul>
                <li class="navigation__active">
                    <a href="#"><i class="zmdi zmdi-home"></i>Opportunities</a>
                </li>
                <li><a href="/project/explore"><i class="zmdi zmdi-format-underlined"></i> Explore</a></li>
                <li><a href="/warning"><i class="zmdi zmdi-widgets"></i> Risk warning</a></li>


            </ul>
        </div>
    </aside>

    <section id="content">
        <%----%>
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
                            <img src="../../img/slider/entrepreneur-banner.jpg" alt="">
                            <div class="carousel-caption">
                                <h3>Fund your growth on QianQian</h3>
                                <p>Join the hundreds of ambitious entrepreneurs</p>
                            </div>

                        </div>
                        <div class="item">
                            <img src="../img/slider/invester-banner.jpg" alt="">
                            <div class="carousel-caption">
                                <h3> Invest anytime, anywhere with QianQian</h3>
                                <p> With new investment opportunities every week, handpick the businesses you want to
                                    back. Capital at Risk. Please read our<a href="/pg/risk-36" target="_blank">risk
                                        warning</a>and <a href="/pg/pitch-disclaimer-logged-out-1515" target="_blank">disclaimer</a>
                                </p>
                            </div>

                        </div>
                        <div class="item">
                            <img src="../img/slider/raising-finance.jpg" alt="">
                            <div class="carousel-caption">
                                <h3>RAISING FINANCE
                                </h3>
                                <p>QianQian is the trusted funding partner of choice, we've helped many ambitious
                                    entrepreneurs fund their business' growth, more than any other equity crowdfunding
                                    platform.</p>
                            </div>
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

        <div id="content__grid" data-columns>

            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>Projects
                        <%--<small>Consectetur Ultricies Porta Fringilla</small>--%>
                    </h2>
                </div>

                <div class="card__body">
                    <div class="widget-analytic__info">
                        <i class="zmdi zmdi-caret-up-circle"></i>
                        <h2>${projects}</h2>
                    </div>
                    <div class="widget-analytic__chart">
                        <div class="chart-sparkline-line">9,5,6,3,9,7,5,</div>
                    </div>
                </div>
            </div>

            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>backers
                        <%--<small>Nullam Adipiscing Pellentesque</small>--%>
                    </h2>

                </div>
                <div class="card__body">
                    <div class="widget-analytic__info">
                        <i class="zmdi zmdi-caret-up-circle"></i>
                        <h2>${backers}</h2>
                    </div>
                    <div class="widget-analytic__chart">
                        <div class="chart-sparkline-line">2,4,6,5,6,4,5,3,7,3,6,5,9,6</div>
                    </div>
                </div>
            </div>

            <div class="card widget-analytic">
                <div class="card__header">
                    <h2>Successful Raises
                        <%--<small>Purus Malesuada Consectetur</small>--%>
                    </h2>
                </div>
                <div class="card__body">
                    <div class="widget-analytic__info">
                        <i class="zmdi zmdi-caret-down-circle"></i>
                        <h2>$ ${raised}</h2>
                    </div>
                    <div class="widget-analytic__chart">
                        <div class="chart-sparkline-line">9,4,6,5,6,4,5,7,9,3,6,5,9</div>
                    </div>
                </div>
            </div>


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
                     onclick="javascript:location.href='project/project_info?projectId='+'${projects.projectId}'">
                    <div class="list-group">
                        <div class="card__header card__header--img"
                             style="background-image: url(${projects.projectImg}); height: 250px;">

                        </div>
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
                                    <p class="scP">已筹款</p>
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
        <%--其他--%>
        <div class="card">
            <div class="card__header" style="text-align: center">
                <h1>Other PROJECT </h1>
            </div>
        </div>
        <div class="content__grid2" data-columns>

            <c:forEach var="projects" items="${otherProject}">
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


<script src="../js/app.js"></script>

<script src="../js/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>

<script src="../js/fileinput/fileinput.min.js"></script>
<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

<!-- Malihu ScrollBar -->
<script src="../js/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>


<!-- Salvattore -->
<script src="../js/salvattore.js"></script>


<!-- Sparkline Charts -->
<script src="../js/jquery.sparkline/jquery.sparkline.js"></script>


<script src="../js/sparkline-charts.js"></script>
</body>
</html>
