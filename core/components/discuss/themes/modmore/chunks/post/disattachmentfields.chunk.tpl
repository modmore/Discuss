<label for="dis-attachment">Add up to 5 Attachments
    <span class="error">[[+error.attachments]]</span>
</label>

<div id="dis-attachments">
    <input type="file" class="dis-attachment-input" name="attachment[[+attachmentCurIdx:default=`1`]]" id="dis-attachment" tabindex="35"/>
</div>

<a href="javascript:void(0);" class="dis-add-attachment"  tabindex="36">Add one more</a>

[[+attachments:notempty=`
    <div class="dis-existing-attachments">
        <ul class="dis-attachments">[[+attachments]]</ul>
    </div>
`]]

