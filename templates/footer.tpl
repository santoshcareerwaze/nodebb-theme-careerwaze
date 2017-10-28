</div>
<!-- END container -->
</main>

<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
</div>

<div class="topic-search hidden">
	<div class="btn-group">
		<button type="button" class="btn btn-default count"></button>
		<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
		<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
	</div>
</div>

<div component="toaster/tray" class="alert-window">
	<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
	</div>
</div>
<div style="margin-bottom: -50px">
	<footer>
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="collapse navbar-collapse" id="myNavbar1">
					<ul class="nav navbar-nav">
						<!-- <li class="user-profile-photo-line"><span>.</span></li> -->
						<li><a class="footer-link"><span>&copy; CareerWaze 2017</span></a></li>
						<li><a target="_blank" href="{config.careerwazeWebAppUrl}/#/privacy-poilcy"><span>Privacy Policy</span></a></li>
						<li><a target="_blank" href="{config.careerwazeWebAppUrl}/#/terms-of-use"><span>Terms of Use</span></a></li>
						<li><a target="_blank" href="http://careerwaze.com/about.html"><span>About Us</span></a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a target="_blank" href="https://www.facebook.com/CareerWaze-962002113893060/"><img src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/facebook_footer.png"></a></li>
						<li><a target="_blank" href="https://twitter.com/careerwaze"><img src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/linkedin_footer.png"></a></li>
						<!-- <li><a href=""><img src="images/Footer/footer_instagram.png"></a></li> -->
						<li><a target="_blank" href="https://www.linkedin.com/company/careerwaze"><img src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/twitter_footer.png"></a></li>
					</ul>
				</div>
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar1">
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
     				</button>
				</div>
			</div>
		</nav>
	</footer>
</div>
<script>
	require(['forum/footer']);
	// var config = JSON.parse('{{configJSON}}');
</script>
</body>
</html
