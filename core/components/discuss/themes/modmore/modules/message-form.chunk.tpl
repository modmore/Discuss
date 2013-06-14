[[!FormIt?
  &submitVar=`dis-post-reply`
  &hooks=`postHook.[[+hook]]`
  &validate=`title:required,message:required:allowTags[[+extra_validation]]`
]]

<div class="f1-f9 twelve-form">
    <h1>[[%discuss.message_[[+action]]? &namespace=`discuss` &topic=`post`]]</h1>
    <form action="[[~[[*id]]]]messages/[[+formaction]]" method="post" class="dis-form m-styled-form dis-message-form dis-thread-form" id="dis-modify-message-form" enctype="multipart/form-data">
        [[+action:eq=`modify`:then=`
            <input type="hidden" name="post" value="[[!+fi.id]]" />
            <input type="hidden" name="thread" value="[[!+fi.thread]]" />
        `]]
        [[+action:eq=`reply`:then=`
            <input type="hidden" name="post" value="[[!+fi.post]]" />
            <input type="hidden" name="thread" value="[[!+fi.thread]]" />
        `]]

        <div id="dis-new-thread-title-wrapper" class="dis-new-thread-title-wrapper">
            <label for="dis-new-thread-title">[[%discuss.title]]:</label>
            <span class="error">[[!+fi.error.title]]</span>
        </div>
        <input type="text" name="title" id="dis-new-thread-title" class="dis-new-thread-title" value="[[!+fi.title]]" />

        <h4 class="participants">[[%discuss.participants]]: [[+participants_usernames]]</h4>
        <label for="dis-reply-participants">
            <span class="error">[[!+fi.error.participants_usernames]]</span>
            <span class="small">[[%discuss.participants_desc]]</span>
        </label>

        <input class="autocomplete" data-autocomplete-action="rest/find_user" type="text" name="add_participants" id="dis-reply-participants" value="[[!+fi.add_participants]]" />

        <div id="dis-quick-reply-form">
            <div class="wysi-buttons">[[+buttons]]</div>
            <div class="h-group">
                <textarea name="message" id="dis-thread-message">[[!+fi.message]]</textarea>
            </div>
            <span class="error">[[!+fi.error.message]]</span>
        </div>


        <div class="h-group below-wysi">
            <div class="l-left">
                <label for="dis-attachment">[[%discuss.attachments]]:
                    <span class="error">[[+error.attachments]]</span>
                </label>
                <input type="file" class="dis-attachment-input" name="attachment[[+attachmentCurIdx]]" id="dis-attachment" />

                <div id="dis-attachments"></div>
                [[+attachments:notempty=`
                    <div class="dis-existing-attachments">
                        <ul class="dis-attachments">[[+attachments]]</ul>
                    </div>
                `]]

                <a href="javascript:void(0);" class="dis-add-attachment">[[%discuss.attachment_add]] <span>([[%discuss.attachments_max? &max=`[[+max_attachments]]`]])</span></a>
            </div>

            <div class="dis-form-buttons l-right">
                <a class="cancel" onclick="location.href='[[+url]]';" />[[%discuss.cancel]]</a>
                <input type="submit" name="dis-post-reply" value="[[+submit_message]]" />
            </div>
        </div>
        [[+discuss.error_panel]]

    </form>
</div>
