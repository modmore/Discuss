
<form class="m-fullw-form m-styled-form h-group m-search" action="[[~[[*id]]]]search/" method="get">
	<h1>[[%discuss.search? &namespace=`discuss` &topic=`web`]]</h1>
    <div class="m-panel f1-f8">
        <div class="f1-f5 f-pad h-group">
            <label class="search" for="dis-search">[[%discuss.search]]:</label>
            <input class="search" type="text" id="dis-search" name="s" value="[[+search]]" />
        </div>
        <div class="f-all f-pad  h-group">
            <a id="dis-search-advanced-toggle" href="a-search-adavnaced">[[%discuss.search_advanced_options]]</a>
        </div>
        <div id="dis-search-advanced" class="f-all m-grouped-content">
            <div class="f-full">
                <div class="f1-f4 f-pad">
                    <label for="dis-search-board">Post type:
                        <span class="error">[[+error.board]]</span>
                    </label>
                    <select name="board" id="dis-search-qa">
                        <option value="1">(All Posts)</option>
                        <option value="2">Discussions</option>
                        <option value="3" id="QA">Questions</option>
                    </select>
                </div>
                <div id="SubOptions" class="f5-f8 sub-options">
                    <label for="dis-search-board">Question options:
                        <span class="error">[[+error.board]]</span>
                    </label>
                    <input type="radio" name="qa-options" value="Both" checked>All Questions
                    <input type="radio" name="qa-options" value="Solved">Answered
                    <input type="radio" name="qa-options" value="Unsolved">Without Answer
                </div>
            </div>

            <div class="f-full">
                <div class="f1-f4 f-pad">
                    <label for="dis-search-board">[[%discuss.board]]:
                        <span class="error">[[+error.board]]</span>
                    </label>
                    <select name="board" id="dis-search-board">[[+boards]]</select>
                </div>
                <div class="f5-f8 f-pad">
                    <label for="dis-author">[[%discuss.author]]:</label>
                    <input type="text" id="dis-author" name="user" value="[[+user]]" class="autocomplete" data-autocomplete-action="rest/find_user" data-autocomplete-single="true" />
                </div>
            </div>

            <div class="f1-f4 f-pad">
                <label for="dis-date-start">[[%discuss.date_start]]:</label>
                <input type="text" id="dis-date-start" class="m-datepicker" name="date_start" value="[[+date_start]]"/>
            </div>

            <div class="f5-f8 f-pad">
                <label for="dis-date-end">[[%discuss.date_end]]:</label>
                <input type="text" id="dis-date-end" class="m-datepicker" name="date_end" value="[[+date_end]]"/>
            </div>
        </div>
        <div class="f1-f8 f-pad">
            <input type="submit" value="[[%discuss.search]]" />
        </div>
    </div>
</form>
[[+total:gte=`1`:then=`
    <header class="dis-cat-header dark-gradient h-group sticky-bar top">
        [[+results:notempty=`<h1>Displaying [[+start]]-[[+end]] of [[+total]] Results</h1>`]]
        [[+pagination]]
    </header>

    <div class="dis-threads">
        <ul class="dis-list search-results">
            [[+results]]
        </ul>
    </div>
    <div class="paginate stand-alone bottom horiz-list">
    [[+pagination]]
    </div>
`:else=`
    [[+results]]
`]]
[[+bottom]]
