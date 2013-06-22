<!-- thread/index -->
[[+top]]

[[+aboveThread]]

<div class="forums-thread" id="thread-[[+id]]">
    <h1><a href="[[+url]]" title="[[+title]]">[[+title]]</a>
        [[+answered:notempty=`<span class="label success">Solved!</span>`:default=``]]
    </h1>

    [[+trail]]

    [[+posts]]

    <hr />

    [[+locked:notempty=`<p class="m-notice">
        [[%discuss.thread_locked]]</p>
    `:default=`
        <h3 id="reply">Leave a Reply</h3>
        [[+quick_reply_form]]
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
