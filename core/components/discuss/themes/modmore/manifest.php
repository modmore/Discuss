<?php
/**
 * Discuss
 *
 * Copyright 2010-11 by Shaun McCormick <shaun@modx.com>
 *
 * This file is part of Discuss, a native forum for MODx Revolution.
 *
 * Discuss is free software; you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 *
 * Discuss is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Discuss; if not, write to the Free Software Foundation, Inc., 59 Temple Place,
 * Suite 330, Boston, MA 02111-1307 USA
 *
 * @package discuss
 */
/**
 * Theme manifest for default theme
 */
$manifest = array(
    'preview' => 'preview.png',
    'global' => array(
        'options' => array(
            'registerJsToScriptTags' => true,
            'showBreadcrumbs' => true,
            'showTitleInBreadcrumbs' => true,
            'showReaders' => true,
            'showModerators' => true,
            'showPaginationIfOnePage' => false,
            'showPrintOption' => false,
        ),
        'css' => array(
            'header' => array(
                'forums.css',
            ),
        ),
    ),
    'home' => array(
        'options' => array(
            'showBoards' => true,
            'showRecentPosts' => true,
            'showStatistics' => true,
            'showLoginForm' => false,
            'bypassUnreadCheck' => true,
            'checkUnread' => true,
            'showLogoutActionButton' => false,
            'hideIndexBreadcrumbs' => false,
            'subBoardSeparator' => '',
            'showBreadcrumbs' => false,
        ),
    ),
    'board' => array(
        'options' => array(
            'showSubBoards' => true,
            'showPosts' => true,
        ),
    ),
    'board.xml' => array(
        'options' => array(
            'showSubBoards' => false,
            'showPosts' => true,
            'showBreadcrumbs' => false,
            'showReaders' => false,
            'showModerators' => false,
            'useLastPost' => false,
        ),
    ),
    'thread' => array(
        'js' => array(
            'footer' => array(
                'editor.js',
            ),
        ),
        'options' => array(
            'showPosts' => true,
            'showTitleInBreadcrumbs' => false,
            'showViewing' => true,
            'showSubscribeOption' => true,
            'showStickOption' => true,
            'showLockOption' => true,
            'showMarkAsSpamOption' => true,
        ),
    ),
    'thread/new' => array(
        'js' => array(
            'footer' => array(
                'editor.js',
            ),
        ),
        'options' => array(
            'pageTpl' => 'common/thread-with-form',
        ),
        'modules' => array(
            'form' => array(
                'tpl' => 'replyform',
                'options' => array(
                    'hook' => 'DiscussNewThread',
                    'action' => 'new',
                    'actionvar' => 'board',
                )
            )
        ),
    ),
    'thread/reply' => array(
        'js' => array(
            'footer' => array(
                'editor.js',
            ),
        ),
        'options' => array(
            'pageTpl' => 'common/thread-with-form',
        ),
        'modules' => array(
            'form' => array(
                'tpl' => 'replyform',
                'options' => array(
                    'hook' => 'DiscussReplyPost',
                    'action' => 'reply',
                    'actionvar' => 'post',
                )
            )
        ),
    ),
    'thread/modify' => array(
        'options' => array(
            'pageTpl' => 'common/thread-with-form',
        ),
        'modules' => array(
            'form' => array(
                'tpl' => 'replyform',
                'options' => array(
                    'hook' => 'DiscussModifyPost',
                    'action' => 'modify',
                    'actionvar' => 'post',
                )
            )
        ),
    ),
    'thread/move' => array(
        'options' => array(
        ),
    ),
    'thread/spam' => array(
        'options' => array(
        ),
    ),
    'thread/remove' => array(
        'options' => array(
        ),
    ),
    'post/report' => array(
        'options' => array(
        ),
    ),
    'post/spam' => array(
        'options' => array(
        ),
    ),
    'search' => array(
    ),
    'user' => array(
        'options' => array(
            'showRecentPosts' => false,
        ),
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/subscriptions' => array(
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/ignoreboards' => array(
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/ban' => array(
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/edit' => array(
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/merge' => array(
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/posts' => array(
        'options' => array(
            'postTpl' => 'post/disPostLi'
        ),
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'user/statistics' => array(
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'user-sidebar',
                'options' => array(
                )
            )
        ),
    ),
    'messages' => array(
        'options' => array(
            'showSubBoards' => true,
            'showPosts' => true,
        ),
        'modules' => array(
            'sidebar' => array(
                'tpl' => 'post-sidebar',
                'options' => array(
                    'show_be_nice_box' => '1',
                )
            )
        ),
    ),
    'messages/new' => array(
        'options' => array(
            'pageTpl' => 'common/messages-with-form',
        ),
        'modules' => array(
            'form' => array(
                'tpl' => 'message-form',
                'options' => array(
                    'hook' => 'DiscussNewMessage',
                    'action' => 'new',
                    'formaction' => 'new',
                    'submit_message' => '[[%discuss.message_send]]',
                    'cancel_link' => 'messages',
                    'extra_validation' => ',add_participants:required',
                )
            ),
        ),
    ),
    'messages/reply' => array(
        'options' => array(
            'pageTpl' => 'common/messages-with-form',
        ),
        'modules' => array(
            'form' => array(
                'tpl' => 'message-form',
                'options' => array(
                    'hook' => 'DiscussReplyMessage',
                    'action' => 'reply',
                    'formaction' => 'reply?thread=[[!+fi.thread]]',
                    'submit_message' => '[[%discuss.message_send]]',
                    'cancel_link' => 'messages/view?thread=[[+thread]]',
                    'extra_validation' => '',
                )
            ),
        ),
    ),
    'messages/modify' => array(
        'options' => array(
            'pageTpl' => 'common/messages-with-form',
        ),
        'modules' => array(
            'form' => array(
                'tpl' => 'message-form',
                'options' => array(
                    'hook' => 'DiscussModifyMessage',
                    'action' => 'modify',
                    'formaction' => 'modify?post=[[!+fi.id]]',
                    'submit_message' => '[[%discuss.save_changes]]',
                    'cancel_link' => 'messages/view?message=[[+thread]]#dis-post-[[+id]]',
                    'extra_validation' => '',
                )
            ),
        ),
    ),
    'messages/view' => array(
        'options' => array(
            'showPosts' => true,
            'showViewing' => true,
            'showSubscribeOption' => false,
            'showStickOption' => true,
            'showLockOption' => true,
            'showMarkAsSpamOption' => true,
            'showTitleInBreadcrumbs' => false,
        ),
        'modules' => array(
        ),
    ),
    'thread/recent' => array(
        'options' => array(
        ),
    ),
    'thread/unread' => array(
        'options' => array(
            'pageTpl' => 'common/thread-table',
        ),
        'modules' => array(
        ),
    ),
    'thread/unread_last_visit' => array(
        'options' => array(
            'pageTpl' => 'common/thread-table',
        ),
        'modules' => array(
            'navbar_extra' => array(
                'tpl' => 'navbar_extra-wrapper',
                'options' => array(
                    'content' => '<a href="[[~[[++discuss.forums_resource_id]]]]thread/unread" class="action-buttons dis-action-unread" title="[[%discuss.unread_posts_all]]">[[%discuss.unread_posts_all]]</a>
                        <a class="read" href="[[+actionlink_mark_read]]" title="[[%discuss.mark_all_as_read]]">[[%discuss.mark_all_as_read]]</a>'
                )
            )
        )
    ),
    'thread/no_replies' => array(
        'options' => array(
            'pageTpl' => 'common/thread-table',
        ),
        'modules' => array(
        ),
    ),
    'thread/unanswered_questions' => array(
        'options' => array(
            'pageTpl' => 'common/thread-table',
        ),
        'modules' => array(
        ),
    ),
    'thread/new_replies_to_posts' => array(
        'options' => array(
            'pageTpl' => 'common/thread-table',
        ),
        'modules' => array(
        ),
    ),
);
return $manifest;
