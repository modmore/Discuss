<div class="dis-profile f1-f9">
	<h1>[[%discuss.subscriptions? &user=`[[+name]]`]]</h1>
	<form action="[[~[[*id]]]]user/subscriptions?user=[[+id]]" method="post" class="dis-form">
		<div class="dis-threads forum-grid no-hover">
			<div class="m-section_title">
				<div class="row h-group header-row">
				    <div class="f1-f4 f-padinall">
				    	<div class="wrap">[[%discuss.thread]]</div>
				    </div>
				    <div class="f5-f6 f-padinall">[[%discuss.author]]</div>
	                <div class="f7 f-padinall">[[%discuss.posted_on]]</div>
				    <div class="f8-f9 f-padinall">[[%discuss.board]]</div>
				</div>
			</div> <!-- / m-section_title -->
	        [[+subscriptions]]
	    </div>
	    <ul class="profile">
			<li>Remove All: <strong><input type="checkbox" /></strong></li>
		</ul>
	    <div class="dis-form-buttons">
	    	<input type="submit" class="button" value="[[%discuss.unsubscribe]]" />
		</div>
    </form>
[[+bottom]]




