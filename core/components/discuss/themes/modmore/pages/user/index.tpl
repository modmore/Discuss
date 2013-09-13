[[+top]]


<div class="forum-box">
    <div class="forum-box-content row">
        <div class="small-9 medium-9 columns">
            <h1>[[+name]]'s Profile</h1>
        </div>
        <div class="small-3 medium-3 columns">
            <img src="[[+avatarUrl]]" alt="[[+username]]" />
        </div>
    </div>
</div>

<ul>

    <li>
        [[%discuss.name]]:
        [[+name_first]] [[+name_last]]</strong>
    </li>

    <li>
        [[%discuss.posts]]:
        <strong>[[+posts]]</strong>
    </li>

    <li>
        [[%discuss.date_registered]]:
        <strong>[[+createdon:strtotime:date=`%b %d, %Y`]]</strong>
    </li>


    [[+last_active:notempty=`
    <li>
        [[%discuss.last_online]]:
        <strong>[[+last_active]]</strong>
    </li>
    <li>
        [[%discuss.last_reading]]:
        <strong><a href="[[+last_post_url]]">[[+lastThread.title]]</a></strong>
    </li>`]]

    [[+ip:notempty=`
    <li>
        [[%discuss.ip]]:
        <strong>[[+ip]]</strong>
    </li>`]]

    [[+email:notempty=`
    <li>
        [[%discuss.email]]:
        <strong><a href="mailto:[[+email]]">[[+email]]</a></strong>
    </li>`]]
    <li>
        [[%discuss.website]]:
        <strong>[[+website]]</strong>
    </li>
    [[-<li>
        [[%discuss.gender]]:
        <strong>[[+gender]]</strong>
    </li>
    <li>
        [[%discuss.age]]:
        <strong>[[+age]]</strong>
    </li>]]
    <li>
        [[%discuss.location]]:
        <strong>[[+location]]</strong>
    </li>
</ul>
[[+bottom]]


