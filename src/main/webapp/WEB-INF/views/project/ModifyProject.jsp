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
                    <a href="index_after_login.html"><i class="zmdi zmdi-home"></i> Home</a>
                </li>
                <li><a href="widgets.html"><i class="zmdi zmdi-widgets"></i>看板</a></li>
                <li><a href="typography.html"><i class="zmdi zmdi-format-underlined"></i>我的项目</a></li>
                <li><a href="widgets.html"><i class="zmdi zmdi-widgets"></i>我的投资</a></li>

            </ul>
        </div>
    </aside>

    <section id="content">


        <div class="card">
            <div class="card__header">

            </div>

            <div class="card__body">

                <div class="tab">
                    <ul class="tab-nav tab-nav--justified">
                        <li class="active"><a href="#tab-home-2" data-toggle="tab">Project Information</a></li>
                        <%--<li><a href="#tab-message-2" data-toggle="tab">Detail</a></li>--%>
                        <li><a href="#tab-profile-2" data-toggle="tab">Team</a></li>
                        <li><a href="#tab-invest-item" data-toggle="tab">Invest Item</a></li>
                        <!--<li><a href="#tab-setting-2" data-toggle="tab">Retribution </a></li>-->
                    </ul>

                    <form id="project" action="/project/uploadProjectInfo" enctype="multipart/form-data"
                          method="post">
                        <div class="tab-content">
                            <!--Project Information-->
                            <div class="tab-pane active" id="tab-home-2">

                                <input type="hidden" name="projectId" value="${project.projectId}">
                                <input type="hidden" name="projectUsername" value="${project.projectUsername}">
                                <!--项目标题-->
                                <div class="card">
                                    <div class="card__header">
                                        <h2>设置你的项目详情

                                        </h2>
                                    </div>

                                    <div class="card__body form-horizontal">

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">1.项目标题</label>
                                            <div class="col-sm-10">
                                                <input name="projectHead" type="text" class="form-control"
                                                       placeholder="请输入项目标题" value="${project.projectHead}">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">2.项目类型</label>


                                            <div class="col-sm-10">
                                                <select name="projectType" class="form-control">
                                                    <option>Select an Project Type</option>
                                                    <option>Community</option>
                                                    <option>Art</option>
                                                    <option>Food</option>
                                                    <option>Publishing</option>
                                                    <option>Other</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!--上传项目封面-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">3.设置封面</label>
                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                <div class="fileinput-preview" data-trigger="fileinput"></div>

                                                <a href="#" class="btn btn-default fileinput-exists"
                                                   data-dismiss="fileinput">Remove</a>
                                                <span class="btn btn-default btn-file">
                                            <span class="fileinput-new">Select image</span>
                                            <span class="fileinput-exists">Change</span>
                                            <input type="file" name="file" value="${project.projectImg}">
                                         </span>
                                            </div>
                                        </div>

                                        <!--筹款目的-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">4.筹款目的</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectIntro" class="form-control"
                                                          placeholder="项目简介">${project.projectIntro}</textarea>
                                            </div>
                                        </div>
                                        <!--筹款金额-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">5.筹款金额</label>
                                            <div class="col-sm-10">
                                                <input name="projectAmount" type="text" class="form-control"
                                                       placeholder="输入筹款金额..." value="${project.projectAmount}">
                                                <select class="form-control">
                                                    <option>Select Currency</option>
                                                    <option>￥</option>
                                                    <option>$</option>
                                                    <option>€</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!--筹款天数-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">6.筹款天数</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectTime" class="form-control"
                                                          placeholder="输入筹款天数...">${project.projectTime}</textarea>
                                            </div>
                                        </div>

                                        <!--标签-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">7.添加标签</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectLabel" class="form-control"
                                                          placeholder="给你的项目设置一些个性标签，让用户更容易搜索到；标签之间用空格隔开！">
                                                    ${project.projectLabel}
                                                </textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">8.项目详情</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectDetail" class="form-control"
                                                          placeholder="输入项目详情...">
                                                    ${project.projectDetail}
                                                </textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">9.宣传视频</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectVideo" class="form-control"
                                                          placeholder="例如：https://www.youtube.com/embed/a05lOctnhAA">
                                                    ${project.projectVideo}
                                                </textarea>
                                            </div>
                                        </div>


                                    </div>


                                </div>


                            </div>
                            <!--Team-->
                            <div class="tab-pane" id="tab-profile-2">

                                <div class="card">
                                    <div class="card__header">
                                        <h2>添加你的团队信息
                                            <small>TIPS：添加您的团队信息，让投资人更加了解项目开发能力
                                            </small>
                                        </h2>
                                    </div>
                                    <div class="card__body form-horizontal" id="team">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Name</label>
                                            <div class="col-sm-10">
                                                <input name="name" type="text" class="form-control"
                                                       placeholder="请输入成员姓名">
                                            </div>
                                        </div>
                                        <!--上传照片-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">上传照片</label>
                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                <div class="fileinput-preview" data-trigger="fileinput"></div>

                                                <a href="#" class="btn btn-default fileinput-exists"
                                                   data-dismiss="fileinput">Remove</a>
                                                <span class="btn btn-default btn-file">
                                        <span class="fileinput-new">Select image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="teamImg">
                                        </span>
                                            </div>
                                        </div>
                                        <!--成员介绍-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">成员介绍</label>
                                            <div class="col-sm-10">
                                                <textarea name="intro" class="form-control"
                                                          placeholder="成员介绍"></textarea>
                                            </div>
                                        </div>
                                        <hr style="width:1150px;height: 2px">
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" id="addMember" class="btn btn-default"
                                                    style="float: right">Add More
                                            </button>
                                        </div>
                                    </div>

                                </div>

                            </div>
                            <!--Invest Item-->
                            <div class="tab-pane" id="tab-invest-item">


                                <div class="card">
                                    <div class="card__header">
                                        <h2>设置你的回报信息
                                            <small>TIPS：回报信息是让用户支持你的项目，你给予一定的回报内容，
                                                可以是具体实物也可以是虚拟信息，建议设置2-6个回报
                                            </small>
                                        </h2>
                                    </div>

                                    <div class="card__body form-horizontal" id="newItem">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">支持金额</label>
                                            <div class="col-sm-10">
                                                <input name="amount" class="form-control"
                                                       placeholder="支持金额">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">回报标题</label>
                                            <div class="col-sm-10">
                                                <input name="head" type="text" class="form-control"
                                                       placeholder="回报标题">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">回报内容</label>
                                            <div class="col-sm-10">
                                            <textarea name="detail" class="form-control"
                                                      placeholder="回报内容"></textarea>
                                            </div>
                                        </div>
                                        <%--<div class="form-group">--%>
                                        <%--<label class="col-sm-2 control-label">人数上限</label>--%>
                                        <%--<div class="col-sm-10">--%>
                                        <%--<input type="password" class="form-control" placeholder="0为不限名额">--%>
                                        <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="form-group">--%>
                                        <%--<label class="col-sm-2 control-label">回报时间</label>--%>
                                        <%--<div class="col-sm-10">--%>
                                        <%--<input type="password" class="form-control" placeholder="0为项目结束后立即发送">--%>
                                        <%--</div>--%>
                                        <%--</div>--%>
                                        <hr>

                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" id="addItem" class="btn btn-default"
                                                    style="float: right">Add More
                                            </button>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <button class="btn btn-default"
                                style="float: left">Submit
                        </button>


                        <input type="hidden" value="0" name="projectInvestors">
                        <input type="hidden" value="0" name="projectInvested">
                        <input type="hidden" value="0" name="projectProgress">
                        <input type="hidden" value="0" name="projectFollow">

                    </form>


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

>

<script>
    $(document).ready(function () {
        $("#addMember").click(function () {
            var p = " <div class=\"card__body form-horizontal\" id=\"team\">\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Name</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input name=\"name\" type=\"text\" class=\"form-control\"\n" +
                "                                                       placeholder=\"请输入成员姓名\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <!--上传照片-->\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">上传照片</label>\n" +
                "                                            <div class=\"fileinput fileinput-new\" data-provides=\"fileinput\">\n" +
                "                                                <div class=\"fileinput-preview\" data-trigger=\"fileinput\"></div>\n" +
                "\n" +
                "                                                <a href=\"#\" class=\"btn btn-default fileinput-exists\"\n" +
                "                                                   data-dismiss=\"fileinput\">Remove</a>\n" +
                "                                                <span class=\"btn btn-default btn-file\">\n" +
                "                                        <span class=\"fileinput-new\">Select image</span>\n" +
                "                                        <span class=\"fileinput-exists\">Change</span>\n" +
                "                                        <input type=\"file\" name=\"teamImg\">\n" +
                "                                        </span>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <!--成员介绍-->\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">成员介绍</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <textarea name=\"intro\" class=\"form-control\"\n" +
                "                                                          placeholder=\"成员介绍\"></textarea>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <hr style=\"width:1150px;height: 2px\">";
            $("#team").append(p);//调用append()函数添加元素
        });

        // $().click()(function(){
        //     $("#team").remove(p);
        // });

    });

</script>

<script>
    $(document).ready(function () {
        $("#addItem").click(function () {
            var p = " <div class=\"card__body form-horizontal\" id=\"newItem\">\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">支持金额</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input name=\"amount\" class=\"form-control\"\n" +
                "                                                       placeholder=\"支持金额\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">回报标题</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input name=\"head\" type=\"text\" class=\"form-control\"\n" +
                "                                                       placeholder=\"回报标题\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">回报内容</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                            <textarea name=\"detail\" class=\"form-control\"\n" +
                "                                                      placeholder=\"回报内容\"></textarea>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                      \n" +
                "                                        <hr>\n" +
                "\n" +
                "                                    </div>";
            $("#newItem").append(p);//调用append()函数添加元素
        });

    });

</script>


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
