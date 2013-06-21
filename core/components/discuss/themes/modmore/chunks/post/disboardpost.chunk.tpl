<h4 class="noMargin">
    [[+sticky:eq=`1`:then=`<span class="label">[[%discuss.sticky]]</span>`:else=``]]
    [[+locked:eq=`1`:then=`<span class="label secondary">[[%discuss.board_locked]]</span>`:else=``]]
    [[+answered:eq=`1`:then=`<span class="label success">[[%discuss.solved]]</span>`:else=``]]

    <a href="[[+url]]">
        [[+title]]
    </a>
</h4>
<p class="meta">Started [[+first_post_createdon:ago]] by [[+first_post_username]]
    &bull; [[+last_post_id:neq=`[[+first_post_id]]`:then=`Last reply [[+createdon:ago]] by [[+last_post_username]]`:else=`No replies yet.`]]
    &bull; [[+views]] views
</p>
