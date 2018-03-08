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
    <div class="navbar navbar-inverse" style="margin-bottom: 0px;">
        <div class="container-fluid footer-bg header-nav-tabs-container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#footer-body">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
            </div>
            <div class="navbar-collapse collapse" id="footer-body">
                <ul class="nav navbar-nav pull-left footer-text">
                    <!--  <li><a href="#">@2016 CareerWaze</a></li> -->
                    <li><a class="footer-link"><span>&copy; CareerWaze 2018</span></a></li>
                    <li><a href="/#/privacy-poilcy" target= "_blank"><span>Privacy Policy</span></a></li>
                    <li><a href="/#/terms-of-use" target= "_blank"><span>Terms of Use</span></a></li>
                    <li><a target= "_blank" href="https://www.careerwaze.com/about.html"><span>About Us</span></a></li>
                </ul>
                <ul class="footer-icon nav navbar-nav pull-right footer-text list-style-type: none;">
                    <li style="margin-top: 3px;"><a class="footer-link"><span>V3.2</span></a></li>
					<li><a target="_blank" href="https://www.facebook.com/CareerWaze-962002113893060/"><img src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/facebook_footer.png"></a></li>
					<li><a target="_blank" href="https://twitter.com/careerwaze"><img src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/linkedin_footer.png"></a></li>
					<li><a target="_blank" href="https://www.linkedin.com/company/careerwaze"><img src="https://s3-us-west-2.amazonaws.com/careerwaze-dev-useruploads/app-images/twitter_footer.png"></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</div>
<script>
	require(['forum/footer']);
	// var config = JSON.parse('{{configJSON}}');
</script>
</body>
</html
