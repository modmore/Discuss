<div id="dis-post-[[+id]]" data-author="[[+author.username:htmlent]]" data-date="[[+createdon_raw]]" data-message="[[+content_raw]]">
    <div class="row">
        <!-- Main column with post -->
        <div class="push-2 large-10 columns">
            <p style="border-bottom: 1px solid #ccc;">
                <small>
                    <a href="[[+url]]" title="Link to this Post">Reply #[[+idx]]</a>
                    &bull; [[+createdon]]

                    [[+editedby:is=`0`:then=``:else=`&bull; Edited [[+editedon:ago]] by [[+editedby.username]]</span>`]]

                    <span class="right">
                        [[+action_modify]]
                        [[+action_remove:notempty=`&bull; [[+action_remove]]`]]
                        [[+action_spam:notempty=`&bull; [[+action_spam]]`]]
                    </span>
                </small>
            </p>


            [[+content]]

            <p class="text-right lead">[[+action_reply]]</p>

            [[+attachments:notempty=`<div class="dis-post-attachments"><ul class="dis-attachments">[[+attachments]]</ul></div>`]]
        </div>

        <!-- Left column with user info -->
        <div class="pull-10 large-2 columns">
            <p class="noMargin">
                <a href="[[~[[*id]]]]u/[[+author.username]]" class="auth-avatar" title="[[%discuss.view_author_profile]]">[[+author.avatar]]
            </p>
            <h4 class="noMargin">[[+author.username_link]]</h4>
            [[+author.title:notempty=`<p class="dis-usr-title">[[+author.title]]</p>`]]
            <p>[[+author.posts]] Posts</p>
        </div>
    </div>
</div>
