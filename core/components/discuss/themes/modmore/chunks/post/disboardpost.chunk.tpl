<div class="forum-thread">
    <h3>
        <a href="[[+url]]" title="[[+title]]">
            [[+title]]
            <span class="meta">
                by [[+first_post_username]]

                [[+sticky:eq=`1`:then=`&bull; sticky`:else=``]]
                [[+locked:eq=`1`:then=`&bull; locked`:else=``]]
                [[+answered:eq=`1`:then=`&bull; solved`:else=``]]
            </span>
        </a>
    </h3>
    <p>[[+last_post_id:neq=`[[+first_post_id]]`:then=`
        Last reply [[+createdon:ago]] by [[+last_post_username]]
    `:else=`
        No replies yet.
    `]]
    &bull; [[+views]] views</p>
</div>
