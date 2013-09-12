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

    [[+actions:notempty=`<div class="thread-post-actions">
        [[+actions]]
    </div>`]]

</div>
