<!doctype html>
<html class="no-js noTouchDevice" lang="[[++cultureKey]]" prefix="og: http://ogp.me/ns#">

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

		<title>[[!+discuss.pagetitle]] &bull; Forums &bull; modmore.com</title>
		<meta name="description" content="[[*description]]" />

		<!--[if lte IE 8 ]> <meta http-equiv="refresh" content="0; URL=http://chsmedien.com/browser-update/"> <![endif]-->

    	<meta property="og:site_name" content="[[++site_name]]">
    	<meta property="og:type" content="website">
    	<meta property="og:title" name="twitter:title" content="[[!+discuss.pagetitle]] &bull; modmore.com">
    	<meta property="og:url" name="twitter:url" content="[[!+discuss.url]]">
    	<meta property="og:image" name="twitter:image" content="[[++modmore.assets]]img/opengraph.png">

    	<meta name="twitter:card" content="summary">
    	<meta name="twitter:site" content="@modmore">

		<script type="text/javascript">
            // Retina Images
    		(function(w){var dpr=((w.devicePixelRatio===undefined)?1:w.devicePixelRatio);if(!!w.navigator.standalone){var r=new XMLHttpRequest();r.open('GET','https://assets.modmore.com/ret.php?devicePixelRatio='+dpr,false);r.send()}else{document.cookie='devicePixelRatio='+dpr+'; domain=.modmore.com; path=/'}})(window)

			// Google WebFonts
			  WebFontConfig = {
			    google: { families: [ 'Maven+Pro:400,500,700:latin', 'Indie+Flower::latin' ] }
			  };
			  (function() {
			    var wf = document.createElement('script');
			    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
			      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
			    wf.type = 'text/javascript';
			    wf.async = 'true';
			    var s = document.getElementsByTagName('script')[0];
			    s.parentNode.insertBefore(wf, s);
			  })();
		</script>

		<!-- QR-Code on printed pages with link of current page -->
        <style>@media print {header::before{content: url(http://chart.apis.google.com/chart?cht=qr&chs=100x100&chl=[[~[[*id]]:urlencode? &scheme=`full`]]&chld=H|0); }}</style>

		<link rel="stylesheet" href="[[++modmore.assets]]css/combined.css">

		<script src="[[++modmore.assets]]js/modernizr.js"></script>

		<link rel="icon" type="image/png" href="[[++modmore.assets]]icon_180x180.png" />
		<link rel="shortcut icon" href="[[++modmore.assets]]icon_180x180.png">

        [[-<base href="[[++site_url]]" />]]
	</head>

<body>

<div id="fb-root"></div>

<div id="wrapper">

    <div id="fb-root"></div>

    <header [[*hasSlider:isnot=`1`:then=` class="blueending"`]]>
        <div class="row">
            <h1 class="large-3 medium-12 columns"><a href="[[~[[++site_start]]]]" id="logo">mod<strong>more</strong></a></h1>

            <nav class="large-9 medium-12 columns">
                [[Wayfinder? &startId=`0` &level=`1` &scheme=`abs`]]
            </nav>

        </div>
    </header>


	<div id="content">
        <div class="row">
            <div class="large-3 columns">
                [[+sidebar]]

                <ul class="subnav">
                    <li><a href="[[~[[*id]]]]">Forum Home</a></li>
                    <li><a href="#">New Thread</a></li>
                    <li><a href="[[~[[*id]]]]thread/recent">Recent Posts</a></li>
                    <li><a href="[[~[[*id]]]]search">Search the Forums</a></li>
                    <li><a href="mailto:support@modmore.com">Email Support</a></li>
                </ul>
            </div>

            <div role="main" class="large-9 columns">
                [[+content]]

                [[+threadactionbuttons:notempty=`
                    <hr />
                    <div class="forums-moderator-actions">[[+threadactionbuttons]]</div><!-- / moderator bar-->
                `]]
            </div>
        </div>
    </div>

[[$template.footer]]
