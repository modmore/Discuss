[[!FormIt?
  &submitVar=`dis-post-reply`
  &hooks=`postHook.[[+hook]]`
  &validate=`title:required,message:required:allowTags`
]]

<h1>Reply to [[+title]]</h1>
<form action="[[~[[*id]]]]thread/[[+action]]?[[+actionvar]]=[[+id]]" method="post" class="dis-form dis-thread-form" id="dis-post-form" enctype="multipart/form-data" onsubmit="preventDoubleSubmissions(this)">
    <input type="hidden" name="board"  value="[[!+fi.board]]" />
    <input type="hidden" name="thread" value="[[!+fi.thread]]" />
    <input type="hidden" name="post"   value="[[!+fi.post]]" />

    [[!+fi.error.message:notempty=`
        <div class="alert-box alert">[[!+fi.error.message]]</div>
    `]]


    [[!+fi.is_root:is=`1`:then=`
    <input type="hidden" name="class_key" value="disThreadDiscussion" />


    <div class="row [[!+fi.error.title:notempty=`error`]]">
        <div class="small-12 medium-3 large-3 columns">
            <label for="thread-title">Title [[!+fi.error.title]]</label>
        </div>
        <div class="small-12 medium-9 large-9 columns">
            <input type="text" name="title" id="thread-title" value="[[!+fi.title]]">
        </div>
    </div>
    `:else=`
    <input type="hidden" name="title" value="[[!+fi.title]]" />
    <input type="hidden" name="class_key" value="disThreadDiscussion" />
    `]]

    <div class="wysi-buttons">[[+buttons]]</div>
    <textarea name="message" id="dis-thread-message">[[+message]]</textarea>

    <div class="row">
        <div class="large-8 medium-8 small-12 columns">
            <label>
                <input type="checkbox" name="notify" value="1" tabindex="38" [[+subscribed]] />
                Subscribe to email notifications
            </label>
            [[+locked_cb]]
            [[+sticky_cb]]


            <div class="attachments">
                <label for="dis-attachment">
                    Add up to 5 Attachments
                </label>
                <div id="dis-attachments">
                    <input type="file" class="dis-attachment-input" name="attachment[[+attachmentCurIdx]]" id="dis-attachment" />
                </div>
                <a href="javascript:void(0);" class="dis-add-attachment">Add one more</a>

               [[+attachments:notempty=`
                    <ul class="dis-attachments">[[+attachments]]</ul>
                `]]
            </div>
        </div>


        <div class="text-right large-4 medium-4 small-12 columns">
            <input class="small button" type="submit" name="dis-post-reply" value="[[%discuss.post_[[+action]]]]" />
        </div>
    </div>
</form>
