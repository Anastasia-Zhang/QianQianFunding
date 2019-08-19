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

<section id="main" style="padding:  0 40px 20px 20px;">


    <section id="content" style="width: 100%">

        <div class="content--boxed">


            <div class="row pricing-table">
                <div class="card">

                <div class="card__body">
                    <h2>
                        Project successfully published！</h2>
                    <p>Your project successfully published！，<a href="/project/manageProject?id=${User}">click here</a>，Manage your project</p>

                </div>
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


<!-- jQuery -->
<script src="../js/jquery.js"></script>


<!-- Bootstrap -->
<script src="../js/bootstrap.js"></script>

<!-- Simple File Input -->
<script src="../js/fileinput/fileinput.min.js"></script>



<!-- Salvattore -->
<script src="../js/salvattore.js"></script>

<!-- Site Functions & Actions -->
<script src="../js/app.js"></script>
<script src="../js/twitter-bootstrap-wizard/jquery.bootstrap.wizard.js"></script>
</body>
</html>
