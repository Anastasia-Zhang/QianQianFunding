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
    <style>
        .help-block1 {
            display: block;
            margin-top: 5px;
            margin-bottom: 10px;
            color: #ffa578;
            font-weight: 300;
        }
        #project_img{
            height: 50px;
            max-height: 50px;
        }
        #addItem{
            color:  #000000;
            background-color:  white;
            border-radius: 7px;
            float: right;
            margin-top: 20px;
            margin-right: 80px;

        }
        #addItem:hover{
            color: white;
            background-color: #1a252b;

        }
        #addMember{
            color:  #000000;
            background-color:  white;
            border-radius: 7px;
            float: right;
            margin-top: 20px;
            margin-right: 80px;
        }
        #addMember:hover{
            color: white;
            background-color: #1a252b;
        }
        #submit_upload{
            color:  #000000;
            background-color:  white;
            border-radius: 7px;
            float: right;
            margin-top: -32px;
        }
        #submit_upload:hover{
            color: white;
            background-color: #1a252b;
        }
    </style>
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

            <div class="tab-pane" id="notifications__tasks">
                <div class="list-group">
                    <div class="list-group-item">
                        <div class="list-group__heading m-b-5">HTML5 Validation Report</div>

                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="95" aria-valuemin="0"
                                 aria-valuemax="100" style="width: 95%">
                                <span class="sr-only">95% Complete (success)</span>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="list-group__heading m-b-5">Google Chrome Extension</div>

                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                 aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete (success)</span>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="list-group__heading m-b-5">Social Intranet Projects</div>

                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0"
                                 aria-valuemax="100" style="width: 20%">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="list-group__heading m-b-5">Bootstrap Admin Template</div>

                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                                 aria-valuemax="100" style="width: 60%">
                                <span class="sr-only">60% Complete (warning)</span>
                            </div>
                        </div>
                    </div>
                    <div class="list-group-item">
                        <div class="list-group__heading m-b-5">Youtube Client App</div>

                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                 aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete (danger)</span>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="" class="btn btn--float">
                    <i class="zmdi zmdi-plus"></i>
                </a>
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

                    <form id="projectForm" action="/project/uploadProjectInfo" enctype="multipart/form-data"
                          method="post">
                        <div class="tab-content">
                            <!--Project Information-->
                            <div class="tab-pane active" id="tab-home-2">

                                <input type="hidden" name="projectId" value="${projectId}">
                                <input type="hidden" name="projectUsername" value="${username}">
                                <!--项目标题-->
                                <div class="card">
                                    <div class="card__header">
                                        <h2>Edit Your Project

                                        </h2>
                                    </div>

                                    <div class="card__body form-horizontal">

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">1.Project Head</label>
                                            <div class="col-sm-10">
                                                <input name="projectHead" type="text" class="form-control"
                                                       placeholder="Please enter your project head" required>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">2.Project Type</label>


                                            <div class="col-sm-10">
                                                <select name="projectType" class="form-control" title="Please select a project type" required>
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
                                            <label class="col-sm-2 control-label">3.Project Cover Image</label>
                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                <div class="fileinput-preview" data-trigger="fileinput"></div>

                                                <a href="#" class="btn btn-default fileinput-exists"
                                                   data-dismiss="fileinput">Remove</a>
                                                <span class="btn btn-default btn-file">
                                            <span class="fileinput-new">Select image</span>
                                            <span class="fileinput-exists">Change</span>
                                            <input type="file" name="file" id="project_img" class="required" accept="image/*">
                                         </span>
                                                <label id="error_message_1"></label>
                                            </div>
                                        </div>

                                        <!--筹款目的-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">4.Project introduction</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectIntro" class="form-control"
                                                          placeholder="Project introduction" required></textarea>
                                            </div>
                                        </div>
                                        <!--筹款金额-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">5.Target Amount</label>
                                            <div class="col-sm-10">
                                                <input name="projectAmount" type="text" class="form-control  input-mask " data-mask="00000000"
                                                       placeholder="Enter Your Target Amount" required>
                                                <select class="form-control" title="Please select the currency" required>
                                                    <option>Select Currency</option>
                                                    <option>￥</option>
                                                    <option>$</option>
                                                    <option>€</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!--筹款天数-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">6.Raising Time</label>
                                            <div class="col-sm-10">
                                                <input name="projectTime" class="form-control input-mask" data-mask="000"
                                                          placeholder="Raising Time" required></input>
                                            </div>
                                        </div>

                                        <!--标签-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">7.Project Label</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectLabel" class="form-control"
                                                          placeholder="Set some personalized tags for your project to make it easier for users to search;
                                                          please use spaces to separate labels" required></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">8.Project Details</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectDetail" class="form-control"
                                                          placeholder="Please input project details"required></textarea>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">9.Project Video</label>
                                            <div class="col-sm-10">
                                                <textarea name="projectVideo" class="form-control"
                                                          placeholder="eg：https://www.youtube.com/embed/a05lOctnhAA"required></textarea>
                                            </div>
                                        </div>


                                    </div>


                                </div>


                            </div>
                            <!--Team-->
                            <div class="tab-pane" id="tab-profile-2">

                                <div class="card">
                                    <div class="card__header">
                                        <h2>Add your team information
                                            <small>TIPS：Add your team information to enable investors to better understand project development capabilities.
                                            </small>
                                        </h2>
                                    </div>
                                    <div class="card__body form-horizontal" id="team">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Name</label>
                                            <div class="col-sm-10">
                                                <input name="name" type="text" class="form-control"
                                                       placeholder="Please input member names">
                                            </div>
                                        </div>
                                        <!--上传照片-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Upload Photo</label>
                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                <div class="fileinput-preview" data-trigger="fileinput"></div>

                                                <a href="#" class="btn btn-default fileinput-exists"
                                                   data-dismiss="fileinput">Remove</a>
                                                <span class="btn btn-default btn-file">
                                        <span class="fileinput-new">Select image</span>
                                        <span class="fileinput-exists">Change</span>
                                        <input type="file" name="teamImg" class="required" accept="image/*">
                                        </span>
                                                <label id="error_message_2"></label>
                                            </div>
                                        </div>
                                        <!--成员介绍-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Member Introduction</label>
                                            <div class="col-sm-10">
                                                <textarea name="intro" class="form-control"
                                                          placeholder="Input Member Introduction" required></textarea>
                                            </div>
                                        </div>
                                        <hr style="width:1150px;height: 2px">
                                    </div>
                                    <hr>

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
                                        <h2>Set up your return information
                                            <small>TIPS：Return information is to let users support your project, and you give certain rewards.
                                                It can be physical objects or virtual information. You can set  2 to 6 rewards
                                            </small>
                                        </h2>
                                    </div>

                                    <div class="card__body form-horizontal" id="newItem">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Support Amount</label>
                                            <div class="col-sm-10">
                                                <input name="amount" class="form-control input-mask " data-mask="0000000"
                                                       placeholder="Support Amount" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Return Title</label>
                                            <div class="col-sm-10">
                                                <input name="head" type="text" class="form-control"
                                                       placeholder="Return Title" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Return Content</label>
                                            <div class="col-sm-10" >
                                            <textarea name="detail" class="form-control"
                                                      placeholder="Return Contenta" required></textarea>
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
                        <button   class="btn btn-default"
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
<script src="../js/jquery.validate.js"></script>
<script src="../js/additional-methods.js"></script>
<script>
    // only for demo purposes


    $( "#projectForm" ).validate( {
        rules: {

        },
        messages: {

        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            // Add the `help-block` class to the error element
            error.addClass( "help-block1" );
            if(element.attr("id")=="project_img"){

                error.appendTo("#error_message_1");

            }
            else if(element.attr("id")=="team_img") {

                error.appendTo("#error_message_2");
            }

            else {
                error.insertAfter( element );
            }
            // if (element.is(':radio') || element.is(':checkbox')) { //如果是radio或checkbox
            //var eid = element.attr('name'); //获取元素的name属性
            //error.appendTo(element.parent()); //将错误信息添加当前元素的父结点后面
            //  } else {
            //  error.insertAfter(element);
            //}
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".col-sm-10" ).addClass( "has-error" ).removeClass( "has-success" );
        },
        unhighlight: function (element, errorClass, validClass) {
            $( element ).parents( ".col-sm-10" ).addClass( "has-success" ).removeClass( "has-error" );
        }
    } );
</script>


<script>
    $(document).ready(function () {
        $("#addMember").click(function () {
            var p = " <div class=\"card__body form-horizontal\" id=\"team\">\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Name</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input name=\"name\" type=\"text\" class=\"form-control\"\n" +
                "                                                       placeholder=\"Please input member names\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <!--上传照片-->\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Upload Photo</label>\n" +
                "                                            <div class=\"fileinput fileinput-new\" data-provides=\"fileinput\">\n" +
                "                                                <div class=\"fileinput-preview\" data-trigger=\"fileinput\"></div>\n" +
                "\n" +
                "                                                <a href=\"#\" class=\"btn btn-default fileinput-exists\"\n" +
                "                                                   data-dismiss=\"fileinput\">Remove</a>\n" +
                "                                                <span class=\"btn btn-default btn-file\">\n" +
                "                                        <span class=\"fileinput-new\">Select image</span>\n" +
                "                                        <span class=\"fileinput-exists\">Change</span>\n" +
                "                                        <input type=\"file\" name=\"teamImg\" class=\"required\" accept=\"image/*\">\n" +
                "                                        </span>\n" +
                "                                                <label id=\"error_message_2\"></label>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <!--成员介绍-->\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Member Introduction</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <textarea name=\"intro\" class=\"form-control\"\n" +
                "                                                          placeholder=\"Input Member Introduction\" required></textarea>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <hr style=\"width:1150px;height: 2px\">\n" +
                "                                    </div>\n" +
                "                                    <hr>";
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
            var p = "<div class=\"card__body form-horizontal\" id=\"newItem\">\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Support Amount</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input name=\"amount\" class=\"form-control input-mask \" data-mask=\"0000000\"\n" +
                "                                                       placeholder=\"Support Amount\" required>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Return Title</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input name=\"head\" type=\"text\" class=\"form-control\"\n" +
                "                                                       placeholder=\"Return Title\" required>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Return Content</label>\n" +
                "                                            <div class=\"col-sm-10\" >\n" +
                "                                            <textarea name=\"detail\" class=\"form-control\"\n" +
                "                                                      placeholder=\"Return Contenta\" required></textarea>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <%--<div class=\"form-group\">--%>\n" +
                "                                        <%--<label class=\"col-sm-2 control-label\">人数上限</label>--%>\n" +
                "                                        <%--<div class=\"col-sm-10\">--%>\n" +
                "                                        <%--<input type=\"password\" class=\"form-control\" placeholder=\"0为不限名额\">--%>\n" +
                "                                        <%--</div>--%>\n" +
                "                                        <%--</div>--%>\n" +
                "                                        <%--<div class=\"form-group\">--%>\n" +
                "                                        <%--<label class=\"col-sm-2 control-label\">回报时间</label>--%>\n" +
                "                                        <%--<div class=\"col-sm-10\">--%>\n" +
                "                                        <%--<input type=\"password\" class=\"form-control\" placeholder=\"0为项目结束后立即发送\">--%>\n" +
                "                                        <%--</div>--%>\n" +
                "                                        <%--</div>--%>\n" +
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


<script src="../js/jquery-mask-plugin/dist/jquery.mask.min.js"></script>





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
