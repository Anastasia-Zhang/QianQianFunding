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
                    <a href="profile-about.html"><i class="zmdi zmdi-account"></i> View Profile</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-input-antenna"></i> Privacy Settings</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-settings"></i> Settings</a>
                </li>
                <li>
                    <a href=""><i class="zmdi zmdi-time-restore"></i> Logout</a>
                </li>
            </ul>
        </li>


    </ul>


    <form class="top-search">
        <input type="text" class="top-search__input" placeholder="Search for people, files & reports">
        <i class="zmdi zmdi-search top-search__reset"></i>
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
                        <li><a href="#tab-message-2" data-toggle="tab">Detail</a></li>
                        <li><a href="#tab-profile-2" data-toggle="tab">Team</a></li>
                        <li><a href="#tab-invest-item" data-toggle="tab">Invest Item</a></li>
                        <!--<li><a href="#tab-setting-2" data-toggle="tab">Retribution </a></li>-->
                    </ul>
                    <form id="projectForm" action="/project/upload" enctype="multipart/form-data" method="post">
                        <div class="tab-content">
                            <!--Project Information-->
                            <input type="hidden" name="projectId" value="0">
                            <input type="hidden" name="projectUsername" >

                            <div class="tab-pane active" id="tab-home-2">
                                <!--项目标题-->
                                <div class="card">
                                    <div class="card__header">
                                        <h2>
                                            Please Write Your  Project Details
                                        </h2>
                                    </div>

                                    <div class="card__body form-horizontal">

                                        <div class="form-group">
                                            <label  class="col-sm-2 control-label">1.Project Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" placeholder="Input your project name" name="project_name"
                                                       required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">2.Project Type</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" name="project_type"   title="Please select a project type" required>
                                                    <option></option>
                                                    <option>Select a Project Type</option>
                                                    <option>Option 1</option>
                                                    <option>Option 2</option>
                                                    <option>Option 3</option>
                                                    <option>Option 4</option>
                                                    <option>Option 5</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!--上传项目封面-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label" for="project_img">3.Project Cover</label>
                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                <div class="fileinput-preview" data-trigger="fileinput"></div>

                                                <a href="#" class="btn btn-default fileinput-exists"
                                                   data-dismiss="fileinput">Remove</a>

                                                <span class="btn btn-default btn-file">
                                            <span class="fileinput-new">Select image</span>
                                            <span class="fileinput-exists">Change</span>
                                            <input type="file" name="project_img" id="project_img" class="required" accept="image/*" >
                                         </span>
                                                <label id="error_message_1"></label>
                                            </div>
                                        </div>

                                        <!--筹款目的-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">4.Fundraising Goal</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control"   name="project_goal"  placeholder="Please input the context  which you want to in return"
                                                          required></textarea>
                                            </div>
                                        </div>
                                        <!--筹款金额-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">4.Fundraising Amount</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="project_amount" placeholder="Please input your  fundraising amount" required>
                                            </div>
                                            <label  class="col-sm-2 control-label" >Select Currecy</label>
                                            <div class="col-sm-10">
                                                <select class="form-control" name="project_currency"    title="Please select the currency" required>
                                                    <option> </option>
                                                    <option>Select Currency</option>
                                                    <option>￥</option>
                                                    <option>$</option>
                                                    <option>€</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!--筹款天数-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">5.Fundraising Expiration</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" placeholder="Please input fundraising expiration" required name="project_expiration"></textarea>
                                            </div>
                                        </div>

                                        <!--标签-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">6.Project Label</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" name="project_label"
                                                          placeholder="Set some personalized tags for your project to make it easier for users to search;
                                                          please use spaces to separate labels "  required></textarea>
                                            </div>
                                        </div>


                                    </div>


                                </div>
                            </div>


                            <!--Detail-->
                            <div class="tab-pane" id="tab-message-2">
                                <!--项目详情-->
                                <div class="card">
                                    <div class="card__header">
                                        <h2>1.Project Details</h2>
                                    </div>

                                    <div class="card__body">

                                        <div class="form-group">
                                        <textarea class="form-control" rows="5"
                                                  placeholder="Please input project details" required></textarea>
                                            <i class="form-group__bar"></i>
                                        </div>

                                    </div>
                                </div>
                                <!--宣传视频-->
                                <div class="card">
                                    <div class="card__header">
                                        <h2>2.Project Video</h2>
                                        <small>(Please input your video url)</small>
                                    </div>

                                    <div class="card__body">

                                        <div class="form-group">
                                        <textarea class="form-control textarea-autosize"
                                                  placeholder="eg：https://www.youtube.com/embed/a05lOctnhAA" required></textarea>
                                            <i class="form-group__bar"></i>
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
                                                <input  type="text" class="form-control" placeholder="Please input member names" required>
                                            </div>
                                        </div>
                                        <!--上传照片-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Upload Images</label>
                                            <div  class="fileinput fileinput-new" data-provides="fileinput">
                                                <div  class="fileinput-preview" data-trigger="fileinput"></div>

                                                <a href="#" class="btn btn-default fileinput-exists"
                                                   data-dismiss="fileinput">Remove</a>
                                                <span class="btn btn-default btn-file">
                                            <span class="fileinput-new">Select image</span>
                                            <span class="fileinput-exists">Change</span>

                                            <input  id="team_img" type="file" name="file" class="required" accept="image/*">
                                                </span>
                                                <label id="error_message_2"></label>
                                            </div>
                                        </div>
                                        <!--成员介绍-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Member Introduction</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" placeholder="Introduct your members" required></textarea>
                                            </div>
                                        </div>
                                        <hr style="width:1150px;height: 2px">
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" id="addMember" class="btn btn-default"
                                            >Add More
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
                                                <input type="text" class="form-control" placeholder="Please input your support amount" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Return Title</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" placeholder="Please input your input teturn title" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Return Content</label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" placeholder="Please input your return content" required></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Upper Limit Of Number</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" placeholder="0 meanings an unlimited number" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Return Time</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" placeholder="0 meanings send immediately after the end of the project" required>
                                            </div>
                                        </div>
                                        <hr>

                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="button" id="addItem" class="btn btn-default"
                                            >Add More
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <button type="submit" i class="btn btn-default"
                                id="submit_upload">submit
                        </button>
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
    $.validator.setDefaults({
        submitHandler: function() {
            alert("submitted!");
        }
    });

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
            var p = " <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Name</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input type=\"text\" class=\"form-control\" placeholder=\"Please input member names\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <!--上传照片-->\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Upload Images</label>\n" +
                "                                            <div class=\"fileinput fileinput-new\" data-provides=\"fileinput\">\n" +
                "                                                <div class=\"fileinput-preview\" data-trigger=\"fileinput\"></div>\n" +
                "\n" +
                "                                                <a href=\"#\" class=\"btn btn-default fileinput-exists\"\n" +
                "                                                   data-dismiss=\"fileinput\">Remove</a>\n" +
                "                                                <span class=\"btn btn-default btn-file\">\n" +
                "                                            <span class=\"fileinput-new\">Select image</span>\n" +
                "                                            <span class=\"fileinput-exists\">Change</span>\n" +
                "                                            <input type=\"file\" name=\"...\">\n" +
                "                                         </span>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <!--成员介绍-->\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Member Introduction</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <textarea class=\"form-control\" placeholder=\"Introduct your members\"></textarea>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <hr>";
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
            var p = "  <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Support Amount</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input type=\"text\" class=\"form-control\" placeholder=\"Please input your support amount\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Return Title</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input type=\"password\" class=\"form-control\" placeholder=\"Please input your input teturn title\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Return Content</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <textarea class=\"form-control\" placeholder=\"Please input your return content\"></textarea>\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Upper Limit Of Number</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input type=\"password\" class=\"form-control\" placeholder=\"0 meanings an unlimited number\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <div class=\"form-group\">\n" +
                "                                            <label class=\"col-sm-2 control-label\">Return Time</label>\n" +
                "                                            <div class=\"col-sm-10\">\n" +
                "                                                <input type=\"password\" class=\"form-control\" placeholder=\"0 meanings send immediately after the end of the project\">\n" +
                "                                            </div>\n" +
                "                                        </div>\n" +
                "                                        <hr>\n";
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
