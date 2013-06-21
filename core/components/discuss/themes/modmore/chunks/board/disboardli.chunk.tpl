<div class="forum-board" id="forum-[[+id]]" class="category-[[+category]] [[+unread-cls]]">
    <h4>
        <a href="[[+url]]">[[+name]]</a>
    </h4>
    <p class="meta">[[+num_topics]] threads &bull; [[+num_replies]] replies
        [[+last_post_title:notempty=`
            &bull; Last post: <a href="[[+last_post_url]]">[[+last_post_title]]</a>, [[+last_post_createdon:ago]]
        `]]
    </p>
    <p>[[+description]]</p>

    [[+subforums:notempty=`
        <p class="subforums">Subforums: [[+subforums]]</p>
    `]]
</div>
