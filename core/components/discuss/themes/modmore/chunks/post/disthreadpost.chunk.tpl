<div id="dis-post-[[+id]]" class="modmore-post" data-author="[[+author.username:htmlent]]" data-date="[[+createdon_raw]]" data-message="[[+content_raw]]">
    <p style="border-bottom: 1px solid #ccc;">
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

    [[-<div class="right">
        [[+author.avatar]]
    </div>]]

    [[+content]]

    <p class="text-right"><small>[[+action_reply]]</small></p>

    [[+attachments:notempty=`<div class="dis-post-attachments"><ul class="dis-attachments">[[+attachments]]</ul></div>`]]
</div>
