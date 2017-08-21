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
<body class="{bodyClass} skin-{config.bootswatchSkin}">
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
		<main id="panel">
			<nav class="navbar navbar-inverse navbar-fixed-top header" id="header-menu" component="navbar">
			<script>
				$(window).on('action:ajaxify.end', function(ev, data){
    				console.log("debug @stmt:: daa ", data);
    				console.log("Debug @stmt:: app ", app.user.uid);
    				if (data.url === 'login' || data.url === 'register' || !app.user.uid) {
            			window.location.href =  'http://52.42.225.80:4567';
    				}
				});
			</script>
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
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav" bs-active-link>
							<li ng-class="{ active: isActive('/learn') }">
								<a href="{config.careerwazeWebAppUrl}/#/learn/recommendations">
									<span class=nav-text>LEARN</span>
								</a>
							</li>
							<li ng-class="{ active: isActive('/explore') }">
								<a href="{config.careerwazeWebAppUrl}/#/explore-skills">
									<span class="nav-text">EXPLORE</span>
								</a>
							</li>
							<li ng-class="{ active: isActive('/account') }">
								<a href="{config.careerwazeWebAppUrl}/#/account/details">
									<span class=nav-text>MY ACCOUNT</span>
								</a>
							</li>
							<li ng-class="{ active: isActive('/myforum') }">
								<a href="{relative_path}">
									<span class=nav-text>MY FORUM</span>
								</a>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="header-cart-count">
								<a href="{config.careerwazeWebAppUrl}/#/cw-cart" class="header-cart-count-href">
									<img class="careerwaze-header-cart" src = "{config.careerwazeWebAppUrl}/images/cart-assets/header-cart.png">
									<b class="cart-count">0</b>
								</a>
							</li>
							<li>
								<li>
									<a href="{config.careerwazeWebAppUrl}/#/cw-cart" title="Go to CW Shopping cart" ng-disabled="cart.getTotalCount() < 1" cart="cart-icon-custom">
                    					<b>$0.00</b>
                					</a>
								</li>
								<li class="user-profile-photo-image" style="margin-right: -15px;">
									<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="user_dropdown" title="[[global:header.profile]]">
										<img component="header/userpicture" src="{user.picture}" alt="{user.username}"<!-- IF !user.picture --> style="display: none;"<!-- ENDIF !user.picture --> />
											<div component="header/usericon" class="user-icon" style="background-color: {user.icon:bgColor};<!-- IF user.picture --> display: none;"<!-- ENDIF user.picture -->">{user.icon:text}</div>
													<span id="user-header-name" class="visible-xs-inline">{user.username}</span>
									</a>
								</li>
								<li class="dropdown ">
									<a href="" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="10" data-close-others="false"><span class=nav-text>Hi <span style="text-transform: capitalize;">{user.username}</span></span> <b class="caret"></b>
            </a>
									<ul class="dropdown-menu">
										<li style="border-bottom: 1px solid #e9eef4 ;"><a href="http://localhost:9001/#/feedback" tabindex="-1">FeedBack</a></li>
										<li><a ng-click="logout();" tabindex="-1" href="#">Logout</a></li>
									</ul>
								</li>
						</ul>
					</div>
				</div>
				<div style="border-top: 1px solid #fff">
				</div>
				<div class="container">
					<!-- IMPORT partials/menu.tpl -->
				</div>
			</nav>
	</div><br><br><br>
	<div class="container" id="content" style="min-height:470px;">
		<!-- IMPORT partials/noscript/warning.tpl -->