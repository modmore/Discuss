<!-- thread/index.html -->
[[+top]]

[[+aboveThread]]

<div class="forums-thread" id="thread-[[+id]]">
    <h1><a href="[[+url]]" title="[[+title]]">[[+title]]</a>
        [[+answered:notempty=`<span class="label success">[Solved!]</span>`:default=``]]
    </h1>

    [[+posts]]

    <hr />
    <p>[[+participants_usernames]] posted in this thread &bull; [[+readers]]
        <br />
        Subscribe: <a href="[[~[[*id]]]]thread/feed.xml?thread=[[+id]]">RSS</a> /

        [[+actionlink_subscribe:notempty=`<a href="[[+actionlink_subscribe]]" >By email</a>`]]
        [[+actionlink_unsubscribe:notempty=`<a href="[[+actionlink_unsubscribe]]">Stop emails</a>`]]
    </p>
</div>
[[+bottom]]
