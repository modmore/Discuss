<ul class="subnav">
    <li class="subnav-heading"><h3 style="margin-top: 0">[[+username]]</h3></li>

    <li><a href="[[~[[*id]]]]u/[[+username]]/">Profile</a></li>
    [[+canEdit:notempty=`<li><a href="[[~[[*id]]]]user/edit">[[%discuss.edit]]</a></li>`]]
    [[+discuss.user.isAdmin:notempty=`<li><a href="[[~[[*id]]]]user/statistics?user=[[+id]]">[[%discuss.stats]]</a></li>`]]
    <li><a href="[[~[[*id]]]]user/posts?user=[[+id]]">[[%discuss.posts]]</a></li>

    <li class="subnav-heading"><h3>[[%discuss.account_settings]]</h3></li>

    [[+canAccount:notempty=`
        <li><a href="[[~[[*id]]]]user/subscriptions">[[%discuss.subscriptions]]</a></li>
        <li><a href="[[~[[*id]]]]user/ignoreboards">[[%discuss.ignore_preferences]]</a></li>
    `]]

    [[-+modx.user.id:notempty=`<li><a href="[[~[[*id]]]]messages/new?user=[[+username]]">[[%discuss.send_pm]]</a></li>`]]
    [[+discuss.user.isAdmin:notempty=`<li><a href="[[~[[*id]]]]user/ban?u=[[+id]]">[[%discuss.ban_user]]</a></li>`]]
</ul>

