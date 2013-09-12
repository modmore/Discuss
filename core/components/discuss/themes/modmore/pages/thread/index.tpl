<!-- thread/index -->
[[+top]]

[[+aboveThread]]

<div class="forums-thread" id="thread-[[+id]]">
    <h1><a href="[[+url]]" title="[[+title]]">[[+title]]</a>
        [[+answered:notempty=`<span class="label success">Solved!</span>`:default=``]]
    </h1>

    [[+trail]]

    [[+pagination:notempty=`
    <div class="row">
        <div class="small-12 columns">
            [[+pagination]]
        </div>
    </div>`]]

    [[+posts]]


    [[+pagination:notempty=`
    <div class="row">
        <div class="small-12 columns">
            [[+pagination]]
        </div>
    </div>`]]

    [[+locked:notempty=`
        <div class="alert-box">This thread has been locked.</div>
    `:default=`
        <h3 id="reply">Leave a Reply</h3>
        [[+quick_reply_form:default=`
            <div class="alert-box">Please login to leave a Reply.</div>
        `]]
    `]]

    <hr />

    <p><small>[[+participants_usernames]] posted in this thread &bull; [[+readers]]
        <br />
        Subscribe: <a href="[[~[[*id]]]]thread/feed.xml?thread=[[+id]]">RSS</a> /

        [[+actionlink_subscribe:notempty=`<a href="[[+actionlink_subscribe]]" >By email</a>`]]
        [[+actionlink_unsubscribe:notempty=`<a href="[[+actionlink_unsubscribe]]">Stop emails</a>`]]
    </small></p>
</div>
[[+bottom]]
