<div class="m-breadcrumbs f-padinfull l-horizontal_nav h-group">
    <nav class="container l-left">
		<ul>
			[[+items]]
			<li class="end">&nbsp;</li>
		</ul>
	</nav>
	<!-- remove out of breadcrumbs eventually-->
	<div class="l-right m-search">
		<div class="m-search-label l-inline">
			<a href="[[~[[*id]]]]thread/recent">[[%discuss.view_recent_posts]]</a>
		</div>
		<div class="l-inline">
			<p>[[%discuss.or_search]]</p>
		</div>
		<form class="l-inline" action="[[~[[*id]]]]search" method="get" accept-charset="utf-8">
	        <label for="search_form_input" class="hidden">Search</label>
	        <input id="search_form_input" placeholder="Search keyphrase..." name="s" value="" title="Start typing and hit ENTER" type="text" tabindex="1">
	        <input value="Go" type="submit" tabindex="2">
	    </form>
	</div>
    <!-- / remove out of breadcrumbs-->
</div>
