<aside class="f10-f12 m-profile-box">
    <div class="PanelBox">
        <div class="Box">
           <h2>[[+username]]'s Profile</h2>
            <ul class="panel_info">
                <li class="Heading">
                    [[!+discuss.user.username:eq=`[[+username]]`:then=`<a class="PanelBox-avatar" href="https://en.gravatar.com/site/login#your-images">`]]
                        <img src="[[+avatarUrl]]" alt="[[+username]]" />
                    [[!+discuss.user.username:eq=`[[+username]]`:then=`<span>[[%discuss.modify]]</span>
                    </a>`]]
                </li>
                [[+title:notempty=`<li class="dis-usr-title">[[+title]]</li>`]]
            </ul>
        </div>
        <div class="Box">
            [[+usermenu]]
        </div>
    </div>
</aside>
