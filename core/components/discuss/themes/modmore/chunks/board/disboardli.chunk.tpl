<div class="row forum-board" id="forum-[[+id]]" class="category-[[+category]] [[+unread-cls]]">
    <div class="large-8 columns">
        <h4 class="noMargin"><a href="[[+url]]">[[+name]] <small>[[+num_topics]] threads, [[+num_replies]] replies</small></a></h4>
        <p>[[+description]]</p>

        [[+subforums:notempty=`
            [[+subforums]]
        `]]
    </div>
    <div class="large-4 columns">
        <a href="[[+last_post_url]]">[[+last_post_title]]</a>, [[+last_post_createdon:ago]]
    </div>
</div>


[[-<div class="Depth2 row dis-category h-group dis-category-[[+category]] [[+unread-cls]]">
    <a href="[[+url]]" class="h-group">
        <div class="f1-f7">
            <div class="wrap">
                <span class="folder">[[+unread-count:gt=`99`:then=`99+`:else=`[[+unread-count]]`]]</span>
                <strong>[[+name]]</strong>
                <p class="dis-board-description">[[+description]]</p>
            </div>
        </div>
        <div class="f8-f10">
            [[+last_post_id:notempty=`
            <span class="clickable" data-link="[[+last_post_url]]">[[+last_post_title:default=`&nbsp;`]]</span>
            `]]
        </div>
        <div class="f11 l-txtcenter">[[+num_replies]]</div>
        <div class="f12 l-txtcenter">[[+num_topics]]</div>
    </a>
    [[+subforums:notempty=`<div class="h-group f-all"><p class="dis-board-subs [[+unread-cls]]">[[+subforums]]</p></div>`]]
</div>
]]
