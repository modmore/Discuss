<!-- recent.tpl -->
<div class="f1-f9">
	<div class="dis-threads forum-grid">
		<div class="m-section_title">
			<header class="dis-cat-header dark-gradient group-fix sticky-bar">
				<h1>Private Messages</h1>
				[[+pagination:default=``]]
				[[!+discuss.user.id:notempty=`<div class="post-box h-group">[[+actionbuttons]]</div>`]]
			</header>
			<div class="row h-group header-row">
			    <div class="f1-f2 f-padinall">
			    	<div class="wrap">From</div>
			    </div>
			    <div class="f3-f6">[[%discuss.title]]</div>
			    <div class="f7">[[%discuss.last_post]]</div>
			    <div class="f8">Created</div>
			    <div class="f9">[[%discuss.replies]]</div>
			</div>
		</div> <!-- / m-section_title -->
		[[+messages]]
		[[+pagination:notempty=`<nav class="paginate stand-alone bottom horiz-list"> [[+pagination]]</nav>`]]
	</div>
</div>

[[+bottom]]

[[+sidebar]]
