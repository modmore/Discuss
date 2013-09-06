<div id="dis-post-[[+id]]" class="thread-post">
    <div class="thread-post-meta">
        <span class="avatar">[[+author.avatar]]</span>
        <span class="author">[[+author.username_link]]</span>
        <span class="date">on [[+createdon:strtotime:date=`%B %e, %Y, %k:%M`]]</span>
        <span class="idx">#[[+idx]]</span>
    </div>

    <div class="thread-post-content">
        [[+content]]
    </div>



    [[+attachments:notempty=`<div class="thread-post-attachments">
        <ul>
            [[+attachments]]
        </ul>
    </div>`]]

    <div class="thread-post-actions">
        [[+actions]]
    </div>

    [[-<p class="text-right"><small>[[+action_reply]]</small></p>]]

    [[-<p style="border-bottom: 1px solid #ccc;">
        <small>
            <a href="[[+url]]" title="Link to this Post">#[[+idx]]</a>
            &bull; Posted by [[+author.username_link]]
            [[+author.title:notempty=`&bull; <b>[[+author.title]]</b>`]]
            &bull; [[+createdon]]

            [[+editedby:is=`0`:then=``:else=`&bull; Edited [[+editedon:ago]] by [[+editedby.username]]</span>`]]

            <span class="right">
                [[+action_modify]]
                [[+action_remove:notempty=`&bull; [[+action_remove]]`]]
                [[+action_spam:notempty=`&bull; [[+action_spam]]`]]
            </span>
        </small>
    </p>
    <div class="right">
        [[+author.avatar]]
    </div>]]
</div>
