<form action="[[~[[*id]]]][[+view]]" method="post" class="dis-form dis-thread-form [[+locked:notempty=`locked`]]" id="dis-quick-reply-form" enctype="multipart/form-data" onsubmit="preventDoubleSubmissions(this);">
    <input type="hidden" id="dis-quick-reply-board"  name="board"  value="[[+board]]" />
    <input type="hidden" id="dis-quick-reply-thread" name="thread" value="[[+id]]" />
    <input type="hidden" id="dis-quick-reply-post"   name="post"   value="[[+lastPost.id]]" />
    <input type="hidden" id="dis-quick-reply-title"  name="title"  value="Re: [[+title_value]]" />

    [[!+fi.error.message:notempty=`
        <div class="alert-box alert">[[!+fi.error.message]]</div>
    `]]

    <div class="wysi-buttons">
        [[+reply_buttons]]
    </div>

    <textarea name="message" id="dis-thread-message" tabindex="10" rows="20">[[+message]]</textarea>

    <div class="row">
        <div class="large-8 medium-8 small-12 columns">
            <label>
                <input type="checkbox" name="notify" value="1" tabindex="38" [[+subscribed]] />
                Subscribe to email notifications
            </label>
            [[+locked_cb]]
            [[+sticky_cb]]

            <div class="attachments">
                [[+attachment_fields]]
            </div>
        </div>
        <div class="text-right large-4 medium-4 small-12 columns">
            <input class="small button" type="submit" name="dis-post-reply" value="Reply to Thread" tabindex="40"/>
        </div>
    </div>
    [[+discuss.error_panel]]
</form>
