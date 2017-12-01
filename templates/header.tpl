<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};"
<!-- ENDIF languageDirection -->>

<head>
    <title>{browserTitle}</title>
    <!-- BEGIN metaTags -->{function.buildMetaTag}
    <!-- END metaTags -->
    <link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
    <!-- IF bootswatchCSS -->
    <link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen">
    <!-- ENDIF bootswatchCSS -->
    <!-- BEGIN linkTags -->{function.buildLinkTag}
    <!-- END linkTags -->
    <script>
    var RELATIVE_PATH = "{relative_path}";
    var config = JSON.parse('{{configJSON}}');
    var app = {
        template: "{template.name}",
        user: JSON.parse('{{userJSON}}')
    };
    //console.log(JSON.stringify(app));
    function myFunction() {
        if (app.user.usertype === 'CONSUMER') {
             document.getElementById("jobs").style.display = "block";
            document.getElementById("peerlearners").innerHTML = "My Network";
        } else {
            document.getElementById("jobs").style.display = "none";
            document.getElementById("peerlearners").innerHTML = "Peer Learners";
        }
    }
    </script>
    <script src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>
    <!-- BEGIN scripts -->
    <script type="text/javascript" src="{scripts.src}"></script>
    <!-- END scripts -->
    <!-- IF useCustomJS -->
    {{customJS}}
    <!-- ENDIF useCustomJS -->
    <!-- IF useCustomCSS -->
    <style type="text/css">
    {
        {
            customCSS
        }
    }
    </style>
    <!-- ENDIF useCustomCSS -->
</head>

<body onload="myFunction()" class="{bodyClass} skin-{config.bootswatchSkin}">
    Releative path: {relative_path} Relative path: {config.relative_path}
    <nav id="menu" class="hidden">
        <section class="menu-profile">
            <!-- IF user.uid -->
            <!-- IF user.picture -->
            <img src="{user.picture}" />
            <!-- ELSE -->
            <div class="user-icon" style="background-color: {user.icon:bgColor};">{user.icon:text}</div>
            <!-- ENDIF user.picture -->
            <i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i>
            <!-- ENDIF user.uid -->
        </section>
        <section class="menu-section" data-section="navigation">
            <h3 class="menu-section-title">[[global:header.navigation]]</h3>
            <ul class="menu-section-list"></ul>
        </section>
        <!-- IF config.loggedIn -->
        <section class="menu-section" data-section="profile">
            <h3 class="menu-section-title">[[global:header.profile]]</h3>
            <ul class="menu-section-list" component="header/usercontrol"></ul>
        </section>
        <section class="menu-section" data-section="notifications">
            <h3 class="menu-section-title">
                [[global:header.notifications]]
                <span class="counter" component="notifications/icon" data-content="0"></span>
            </h3>
            <ul class="menu-section-list notification-list-mobile" component="notifications/list"></ul>
            <p class="menu-section-list"><a href="{relative_path}/notifications">[[notifications:see_all]]</a></p>
        </section>
        <section class="menu-section" data-section="chats">
            <h3 class="menu-section-title">
                [[global:header.chats]]
                <i class="counter" component="chat/icon" data-content="0"></i>
            </h3>
            <ul class="menu-section-list chat-list" component="chat/list"></ul>
        </section>
        <!-- ENDIF config.loggedIn -->
    </nav>
    <div>
        <main id="panel" style="min-height: 1vh !important;">
            <nav class="navbar navbar-inverse navbar-fixed-top header" id="header-menu" component="navbar">
                <!-- <script>
                    $(window).on('action:ajaxify.end', function(ev, data){
                        console.log("debug @stmt:: daa ", data);
                        console.log("Debug @stmt:: app ", app.user.uid);
                        if (data.url === 'login' || data.url === 'register' || !app.user.uid) {
                            /window.location.href =  'https://learn.careerwaze.com';
                        }
                    });
                </script> -->
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" a href="{config.careerwazeWebAppUrl}/#/feed">
                            <img  src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/logo_with_title.png" />
                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar" style="min-height: 70px;">
                        <ul class="nav navbar-nav" bs-active-link style="margin-top: 12px;">
                            <li ng-class="{ active: isActive('/learn') }">
                                <a href="{config.careerwazeWebAppUrl}/#/learn/recommendations">
                                    <span class=nav-text><b>LEARN</b></span>
                                </a>
                            </li>
                            <li ng-class="{ active: isActive('/explore') }">
                                <a href="{config.careerwazeWebAppUrl}/#/explore-skills">
                                    <span class="nav-text"><b>EXPLORE</b></span>
                                </a>
                            </li>
                            <li ng-class="{ active: isActive('/myforum') }">
                                <a href="{relative_path}">
                                    <span class=nav-text><b style="color: #fff !important;">COMMUNITY</b></span>
                                </a>
                            </li>
                            <li ng-class="{ active: isActive('/account') }">
                                <a href="{config.careerwazeWebAppUrl}/#/account/details">
                                    <span class=nav-text><b>MY ACCOUNT</b></span>
                                </a>
                            </li>
                            <!-- IF user.usertype==='CONSUMER' -->
                            <li id='jobs' ng-class="{ active: isActive('/jobs') }">
                                <a href="{config.careerwazeWebAppUrl}/#/recommended/jobs"><span class=nav-text>JOBS</span></a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right" id="user-control-list" component="header/usercontrol" style="margin-top: 12px;">
                            <li class="header-cart-count">
                                <a href="{config.careerwazeWebAppUrl}/#/cw-cart" class="header-cart-count-href">
                                    <img style="margin-right: -26px; margin-top: -4px;" src = "/plugins/nodebb-theme-careerwaze/images/header-cart.png">
                                </a>
                            </li>
                            <li class="header-cart-count">
                                <a href="{config.careerwazeWebAppUrl}/#/cw-cart" class="header-cart-count-href">
                                    <p style="border: 1px solid #37a0f4; background-color: #37a0f4; border-radius: 10px; padding: 0px 5px 0px; margin-left: -15px;margin-top: -10px;color: #fff;">o</p>
                                </a>
                            </li>
                            <li>
                                <li>
                                    <a href="{config.careerwazeWebAppUrl}/#/cw-cart" title="Go to CW Shopping cart" ng-disabled="cart.getTotalCount() < 1" cart="cart-icon-custom">
                                        <b style="margin-left: -22px;">$0.00</b>
                                    </a>
                                </li>
                                <li class="user-profile-photo-image" style="margin-right: -15px;">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
                                        <img component="header/userpicture" src="{user.picture}" alt="{user.username}"<!-- IF !user.picture --> style="display: none;"<!-- ENDIF !user.picture --> />
                                            <div component="header/usericon" class="user-icon" style="background-color: {user.icon:bgColor};<!-- IF user.picture --> display: none;"<!-- ENDIF user.picture -->">{user.icon:text}</div>
                                                    <span id="user-header-name" class="visible-xs-inline">{user.username}</span>
                                    </a>
                                </li>
                                <li class="dropdown" style="margin-left: 10px;cursor: pointer;">
                                    <p style="margin-top: 15px;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10" data-close-others="false"><span class=nav-text style="color: #9d9d9d;"><b>Hi</b> <span style="color: #9d9d9d;"><b>{user.username}</b></span></span> <b class="caret"></b>
                                    </p>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a component="header/profilelink" href="{relative_path}/user/{user.userslug}">
                                    <i component="user/status" class="fa fa-fw fa-circle status {user.status}"></i> <span component="header/username">{user.username}</span>
                                </a>
                                        </li>
                                        <li role="presentation" class="divider"></li>
                                        <li>
                                            <a href="#" class="user-status" data-status="online">
                                    <i class="fa fa-fw fa-circle status online"></i><span> [[global:online]]</span>
                                </a>
                                        </li>
                                        <li>
                                            <a href="#" class="user-status" data-status="away">
                                    <i class="fa fa-fw fa-circle status away"></i><span> [[global:away]]</span>
                                </a>
                                        </li>
                                        <li>
                                            <a href="#" class="user-status" data-status="dnd">
                                    <i class="fa fa-fw fa-circle status dnd"></i><span> [[global:dnd]]</span>
                                </a>
                                        </li>
                                        <li style="border-bottom: 1px solid #e9eef4;">
                                            <a href="#" class="user-status" data-status="offline">
                                    <i class="fa fa-fw fa-circle status offline"></i><span> [[global:invisible]]</span>
                                </a>
                                        </li>
                                        <li><a href="{config.careerwazeWebAppUrl}/#/feedback" tabindex="-1">FeedBack</a></li>
                                        <li component="user/logout">
                                            <a href="#"><span> [[global:logout]]</span></a>
                                        </li>
                                    </ul>
                                </li>
                        </ul>
                    </div>
                </div>
                <div style="background-color: white;">
                    <ul class="nav nav-tabs sub-headers-nav visible-lg visible-md visible-sm" style="border-bottom: none !important; margin-left: 300px;">
                        <li>
                            <a href="{relative_path}" style="font-size:16px;font-weight:700;color:black !important; border-bottom:3px solid #2A9FD8;">Forums</a>
                        </li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>
                            <a href="{config.careerwazeWebAppUrl}/#/all-peerlearners/All" style="font-size:16px;font-weight:700;color:black !important;"><p id="peerlearners"></p></a>
                        </li>
                        <li>
                            <a href="{config.careerwazeWebAppUrl}/#/meetups" style="font-size:16px;font-weight:700;color:black !important;"><p id="meetups">Meet Ups</p></a>
                        </li>
                        <li>
                            <a href="{config.careerwazeWebAppUrl}/#/mentoring" style="font-size:16px;font-weight:700;color:black !important;"><p id="Mentors ">Mentors</p></a>
                        </li>
                    </ul>
                </div>
                <div style="border-top: 1px solid #fff">
                </div>
                <div class="container">
                    <!-- IMPORT partials/menu.tpl -->
                </div>
            </nav>
    </div>
    <br>
    <br>
    <br>
    <div class="container" id="content" style="min-height:782px;padding-top:50px;padding-bottom:40px;">
        <!-- IMPORT partials/noscript/warning.tpl -->